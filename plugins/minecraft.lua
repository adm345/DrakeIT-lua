--[[
    Copyright 2017 wrxck <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local minecraft = {}

local mattata = require('mattata')
local https = require('ssl.https')
local url = require('socket.url')
local json = require('dkjson')
local redis = require('mattata-redis')

function minecraft:init()
    minecraft.commands = mattata.commands(
        self.info.username
    ):command('minecraft')
     :command('mc').table
    minecraft.help = '/minecraft <Minecraft username> - Sends information about the given Minecraft user. Alias: /mc.'
end

function minecraft.get_uuid(username)
    local jstr, res = https.request('https://api.mojang.com/users/profiles/minecraft/' .. url.escape(username))
    if res ~= 200 then
        return false
    end
    local jdat = json.decode(jstr)
    if not jdat.id then
        return false
    end
    return jdat.id
end

function minecraft.username_change_date(date)
    local format_date = io.popen('date -d @' .. date):read('*all')
    format_date = format_date:gsub('  ', ' 0'):gsub('\n', '')
    local month, day, time, year = format_date:match('^%a+ (%a+) (%d+) (%d%d:%d%d):%d%d %a+ (%d%d%d%d)$')
    if day == 1 or day == 21 or day == 31 then
        day = day .. 'st'
    elseif day == 2 or day == 22 then
        day = day .. 'nd'
    elseif day == 3 or day == 23 then
        day = day .. 'rd'
    else
        day = day .. 'th'
    end
    return ' <pre>[' .. day:gsub('^0', '') .. ' ' .. month .. ' ' .. year .. ', ' .. time .. ']</pre>'
end

function minecraft.get_history_page(username_history, username_count, page)
    local page_begins_at = tonumber(page) * 5 - 4
    local page_ends_at = tonumber(page_begins_at) + 4
    if tonumber(page_ends_at) > tonumber(username_count) then
        page_ends_at = tonumber(username_count)
    end
    local page_usernames = {}
    for i = tonumber(page_begins_at), tonumber(page_ends_at) do
        table.insert(
            page_usernames,
            username_history[i]
        )
    end
    return table.concat(
        page_usernames,
        '\n'
    )
end

function minecraft.get_username_history(username)
    if not minecraft.get_uuid(username) then
        return false
    end
    local uuid = minecraft.get_uuid(username)
    local jstr, res = https.request('https://api.mojang.com/user/profiles/' .. url.escape(uuid) .. '/names')
    if res ~= 200 then
        return false
    end
    local jdat = json.decode(jstr)
    local names = {}
    for n in pairs(jdat) do
        local result = jdat[n].name
        if jdat[n].changedToAt and tonumber(jdat[n].changedToAt) ~= nil then
            result = result .. minecraft.username_change_date(math.floor(tonumber(jdat[n].changedToAt) / 1000))
        end
        table.insert(
            names,
            '• ' .. result
        )
    end
    local output = '<b>' .. username .. ' has changed his/her username ' .. #jdat .. ' time'
    if #jdat ~= 1 then
        output = output .. 's'
    end
    return output .. ':</b>\n' .. table.concat(
        names,
        '\n'
    ), #names, names
end

function minecraft.get_avatar(username)
    return '<a href="https://mcapi.ca/avatar/' .. url.escape(username) .. '/128">' .. mattata.escape_html(username) .. '</a>'
end

function minecraft:on_callback_query(callback_query, message, configuration)
    if callback_query.data:match('^uuid%:.-$') then
        local input = callback_query.data:match('^uuid%:(.-)$')
        local output = minecraft.get_uuid(input)
        if not output then
            output = configuration.errors.results
        end
        local keyboard = {}
        keyboard.inline_keyboard = {
            {
                {
                    ['text'] = 'Back',
                    ['callback_data'] = 'minecraft:back:' .. input
                }
            }
        }
        return mattata.edit_message_text(
            message.chat.id,
            message.message_id,
            output,
            nil,
            true,
            json.encode(keyboard)
        )
    elseif callback_query.data:match('^avatar%:.-$') then
        local input = callback_query.data:match('^avatar%:(.-)$')
        local keyboard = {}
        keyboard.inline_keyboard = {
            {
                {
                    ['text'] = 'Back',
                    ['callback_data'] = 'minecraft:back:' .. input
                }
            }
        }
        return mattata.edit_message_text(
            message.chat.id,
            message.message_id,
            minecraft.get_avatar(input),
            'html',
            false,
            json.encode(keyboard)
        )
    elseif callback_query.data:match('^history%:.-%:%d*$') then
        local input = callback_query.data:match('^history%:(.-)%:%d*$')
        local output, amount, usernames = minecraft.get_username_history(input)
        local keyboard = {}
        keyboard.inline_keyboard = {}
        if not output then
            output = configuration.errors.results
        else
            local new_page = callback_query.data:match('^history%:.-%:(%d*)$')
            local page_count = math.floor(tonumber(amount) / 5) + 1
            if tonumber(new_page) > tonumber(page_count) then
                new_page = 1
            elseif tonumber(new_page) < 1 then
                new_page = tonumber(page_count)
            end
            table.insert(
                keyboard.inline_keyboard,
                {
                    {
                        ['text'] = '← Previous',
                        ['callback_data'] = 'minecraft:history:' .. input .. ':' .. math.floor(tonumber(new_page) - 1)
                    },
                    {
                        ['text'] = new_page .. '/' .. page_count,
                        ['callback_data'] = 'minecraft:pages:' .. new_page .. ':' .. page_count
                    },
                    {
                        ['text'] = 'Next →',
                        ['callback_data'] = 'minecraft:history:' .. input .. ':' .. math.floor(tonumber(new_page) + 1)
                    }
                }
            )
            output = minecraft.get_history_page(
                usernames,
                amount,
                new_page
            )
        end
        table.insert(
            keyboard.inline_keyboard,
            {
                {
                    ['text'] = 'Back',
                    ['callback_data'] = 'minecraft:back:' .. input
                }
            }
        )
        return mattata.edit_message_text(
            message.chat.id,
            message.message_id,
            output,
            'html',
            true,
            json.encode(keyboard)
        )
    elseif callback_query.data:match('^back%:.-$') then
        local input = callback_query.data:match('^back%:(.-)$')
        local keyboard = {}
        keyboard.inline_keyboard = {
            {
                {
                    ['text'] = 'UUID',
                    ['callback_data'] = 'minecraft:uuid:' .. input
                },
                {
                    ['text'] = 'Avatar',
                    ['callback_data'] = 'minecraft:avatar:' .. input
                }
            },
            {
                {
                    ['text'] = 'Username History',
                    ['callback_data'] = 'minecraft:history:' .. input .. ':1'
                }
            }
        }
        return mattata.edit_message_text(
            message.chat.id,
            message.message_id,
            'Please select an option:',
            nil,
            true,
            json.encode(keyboard)
        )
    end
end

function minecraft:on_message(message, configuration)
    local input = mattata.input(message.text)
    if not input then
        local success = mattata.send_force_reply(
            message,
            'Please enter the username of the Minecraft player you would like to view information about (i.e. sending "Notch" will view information about the player Notch).'
        )
        if success then
            redis:set(
                string.format(
                    'action:%s:%s',
                    message.chat.id,
                    success.result.message_id
                ),
                '/minecraft'
            )
        end
        return
    elseif input:len() > 16 or input:len() < 3 then
        return mattata.send_reply(
            message,
            'Minecraft usernames are between 3 and 16 characters long.'
        )
    end
    return mattata.send_message(
        message.chat.id,
        'Please select an option:',
        nil,
        true,
        false,
        message.message_id,
        mattata.inline_keyboard():row(
            mattata.row():callback_data_button(
                'UUID',
                'minecraft:uuid:' .. input
            ):callback_data_button(
                'Avatar',
                'minecraft:avatar:' .. input
            )
        ):row(
            mattata.row():callback_data_button(
                'Username History',
                string.format(
                    'minecraft:history:%s:1',
                    input
                )
            )
        )
    )
end

return minecraft