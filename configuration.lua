return {
	bot_api_key = '', -- insert the bot API token you received from BotFather
	owner_id = nil, -- the numerical ID of the owner, who is presumably you
	language = 'en', -- two digit locale
	admin_group = nil, -- the numerical ID of the chat you wish to log errors/private messages to, you can add telegram.me/groupinfobot to your group to view this information, if necessary
	about_text = 'Hello, my name is mattata. I\'m a multi-purpose Telegram bot you can confidently rely on.\nTo get started, just send /help.\n',
 	command_prefix = '/', -- the symbol mattata commands will be executed with ('/' by default)
	cat_api = 'http://thecatapi.com/api/images/get?format=html&type=jpg', -- the API URL for cats.lua
	cat_api_key = '', -- you can get one of these by heading to http://thecatapi.com/api-key-registration.html
	yandex_key = '', -- you can get one of these by heading to https://tech.yandex.com/keys/get/?service=trnsl
	lyricsnmusic_key = '', -- you can get one of these by heading to http://www.lyricsnmusic.com/api_keys/new
	canitrust_key = '', -- you can get one of these by heading to http://www.mywot.com/profile/api
	baconipsum_api = 'https://baconipsum.com/api/?type=all-meat&sentences=3&start-with-lorem=1&format=text', -- the API URL for baconipsum.lua
	calc_api = 'https://api.mathjs.org/v1/?expr=', -- the API URL for calc.lua
	catfact_api = 'http://catfacts-api.appspot.com/api/facts', -- the API URL for catfact.lua
	chuck_api = 'http://api.icndb.com/jokes/random', -- the API URL for chuck.lua
	currency_api = 'https://www.google.com/finance/converter', -- the API URL for currency.lua
	fact_api = 'http://mentalfloss.com/api/1.0/views/amazing_facts.json?limit=5000', -- the API URL for fact.lua
	imdb_api = 'http://www.omdbapi.com/?t=', -- the API URL for imdb.lua
	loremipsum_api = 'http://loripsum.net/api/1/medium/plaintext', -- the API URL for loremipsum.lua
	starwars_api = 'http://swapi.co/api/films/', -- the API URL for starwars.lua
	skateipsum_api = 'http://skateipsum.com/get/1/1/JSON', -- the API URL for skateipsum.lua
	guidgen_api = 'http://www.passwordrandom.com/query?command=guid&format=json&count=1', -- the API URL for guidgen.lua
	pwgen_api = 'http://www.passwordrandom.com/query?command=password&format=json&count=1', -- the API URL for pwgen.lua
	yomama_api = 'http://api.yomomma.info/', -- the API URL for yomama.lua
	ninegag_api = 'http://api-9gag.herokuapp.com/', -- the API URL for 9gag.lua
	lyricsnmusic_api = 'http://api.lyricsnmusic.com/songs?api_key=', -- the API URL for lyrics.lua
	mcmigrated_api = 'https://eu.mc-api.net/v3/migrated/', -- the API URL for mcmigrated.lua
	randomword_api = 'http://www.setgetgo.com/randomword/get.php', -- the API URL for randomword.lua
	yandex_api = 'https://translate.yandex.net/api/v1.5/tr.json/translate?key=', -- the API URL for translate.lua
	urbandictionary_api = 'http://api.urbandictionary.com/v0/define?term=', -- the API URL for urbandictionary.lua
	yeoldinsult_api = 'http://quandyfactory.com/insult/json', -- the API URL for yeoldinsult.lua
	canitrust_api = 'https://api.mywot.com/0.4/public_link_json2?hosts=', -- the API URL for canitrust.lua
	mcuuid_api = 'http://mcapi.ca/uuid/player/', -- the API URL for mcuuid.lua
	mchistory_uuid_api = 'https://api.mojang.com/users/profiles/minecraft/', -- the API URL for mchistory.lua
	mchistory_api = 'https://api.mojang.com/user/profiles/', -- the API URL for mchistory.lua
	ispwned_api = 'https://haveibeenpwned.com/api/v2/breachedaccount/', -- the API URL for ispwned.lua
	errors = {
		generic = 'WELP. I\'m afraid an error has occured!',
		connection = 'I\'m sorry, but there was an error whilst I was processing your request, please try again later.',
		results = 'I\'m sorry, but I couldn\'t find any results for that.',
		argument = 'I\'m sorry, but the arguments you gave were either invalid or non-existent. Please try again',
		syntax = 'Syntax error. Please try again.',
	},
	messaging = {
		url = 'https://brawlbot.tk/apis/chatter-bot-api/cleverbot.php?text=',
		connection_error = 'Matt\'s words echoed: There\'s a time and place for everything! But not now.',
		response_error = 'I\'m not sure how to answer that...'
	},
	bandersnatch_full_names = { -- full names configured for plugins/bandersnatch.lua to use
		'Wimbledon Tennismatch',
		'Rinkydink Curdlesnoot',
		'Butawhiteboy Cantbekhan',
		'Benadryl Claritin',
		'Bombadil Rivendell',
		'Wanda Crotchfruit',
		'Biblical Concubine',
		'Syphilis Cankersore',
		'Buckminster Fullerene',
		'Bourgeoisie Capitalist'
	},
	bandersnatch_first_names = { -- first names configured for plugins/bandersnatch.lua to use
		'Bumblebee',
		'Bandersnatch',
		'Broccoli',
		'Rinkydink',
		'Bombadil',
		'Boilerdang',
		'Bandicoot',
		'Fragglerock',
		'Muffintop',
		'Congleton',
		'Blubberdick',
		'Buffalo',
		'Benadryl',
		'Butterfree',
		'Burberry',
		'Whippersnatch',
		'Buttermilk',
		'Beezlebub',
		'Budapest',
		'Boilerdang',
		'Blubberwhale',
		'Bumberstump',
		'Bulbasaur',
		'Cogglesnatch',
		'Liverswort',
		'Bodybuild',
		'Johnnycash',
		'Bendydick',
		'Burgerking',
		'Bonaparte',
		'Bunsenburner',
		'Billiardball',
		'Bukkake',
		'Baseballmitt',
		'Blubberbutt',
		'Baseballbat',
		'Rumblesack',
		'Barister',
		'Danglerack',
		'Rinkydink',
		'Bombadil',
		'Honkytonk',
		'Billyray',
		'Bumbleshack',
		'Snorkeldink',
		'Anglerfish',
		'Beetlejuice',
		'Bedlington',
		'Bandicoot',
		'Boobytrap',
		'Blenderdick',
		'Bentobox',
		'Anallube',
		'Pallettown',
		'Wimbledon',
		'Buttercup',
		'Blasphemy',
		'Snorkeldink',
		'Brandenburg',
		'Barbituate',
		'Snozzlebert',
		'Tiddleywomp',
		'Bouillabaisse',
		'Wellington',
		'Benetton',
		'Bendandsnap',
		'Timothy',
		'Brewery',
		'Bentobox',
		'Brandybuck',
		'Benjamin',
		'Buckminster',
		'Bourgeoisie',
		'Bakery',
		'Oscarbait',
		'Buckyball',
		'Bourgeoisie',
		'Burlington',
		'Buckingham',
		'Barnoldswick'
	},
	bandersnatch_last_names = { -- last names configured for plugins/bandersnatch.lua to use
		'Coddleswort',
		'Crumplesack',
		'Curdlesnoot',
		'Calldispatch',
		'Humperdinck',
		'Rivendell',
		'Cuttlefish',
		'Lingerie',
		'Vegemite',
		'Ampersand',
		'Cumberbund',
		'Candycrush',
		'Clombyclomp',
		'Cragglethatch',
		'Nottinghill',
		'Cabbagepatch',
		'Camouflage',
		'Creamsicle',
		'Curdlemilk',
		'Upperclass',
		'Frumblesnatch',
		'Crumplehorn',
		'Talisman',
		'Candlestick',
		'Chesterfield',
		'Bumbersplat',
		'Scratchnsniff',
		'Snugglesnatch',
		'Charizard',
		'Carrotstick',
		'Cumbercooch',
		'Crackerjack',
		'Crucifix',
		'Cuckatoo',
		'Cockletit',
		'Collywog',
		'Capncrunch',
		'Covergirl',
		'Cumbersnatch',
		'Countryside',
		'Coggleswort',
		'Splishnsplash',
		'Copperwire',
		'Animorph',
		'Curdledmilk',
		'Cheddarcheese',
		'Cottagecheese',
		'Crumplehorn',
		'Snickersbar',
		'Banglesnatch',
		'Stinkyrash',
		'Cameltoe',
		'Chickenbroth',
		'Concubine',
		'Candygram',
		'Moldyspore',
		'Chuckecheese',
		'Cankersore',
		'Crimpysnitch',
		'Wafflesmack',
		'Chowderpants',
		'Toodlesnoot',
		'Clavichord',
		'Cuckooclock',
		'Oxfordshire',
		'Cumbersome',
		'Chickenstrips',
		'Battleship',
		'Commonwealth',
		'Cunningsnatch',
		'Custardbath',
		'Kryptonite',
		'Curdlesnoot',
		'Cummerbund',
		'Coochyrash',
		'Crackerdong',
		'Crackerdong',
		'Curdledong',
		'Crackersprout',
		'Crumplebutt',
		'Colonist',
		'Coochierash',
		'Thundersnatch'
	},
	slaps = { -- slaps configured for plugins/slap.lua to use
		'VICTIM was shot by VICTOR.',
		'VICTIM was pricked to death.',
		'VICTIM walked into a cactus while trying to escape VICTOR.',
		'VICTIM drowned.',
		'VICTIM drowned whilst trying to escape VICTOR.',
		'VICTIM blew up.',
		'VICTIM was blown up by VICTOR.',
		'VICTIM hit the ground too hard.',
		'VICTIM fell from a high place.',
		'VICTIM fell off a ladder.',
		'VICTIM fell into a patch of cacti.',
		'VICTIM was doomed to fall by VICTOR.',
		'VICTIM was blown from a high place by VICTOR.',
		'VICTIM was squashed by a falling anvil.',
		'VICTIM went up in flames.',
		'VICTIM burned to death.',
		'VICTIM was burnt to a crisp whilst fighting VICTOR.',
		'VICTIM walked into a fire whilst fighting VICTOR.',
		'VICTIM tried to swim in lava.',
		'VICTIM tried to swim in lava while trying to escape VICTOR.',
		'VICTIM was struck by lightning.',
		'VICTIM was slain by VICTOR.',
		'VICTIM got finished off by VICTOR.',
		'VICTIM was killed by magic.',
		'VICTIM was killed by VICTOR using magic.',
		'VICTIM starved to death.',
		'VICTIM suffocated in a wall.',
		'VICTIM fell out of the world.',
		'VICTIM was knocked into the void by VICTOR.',
		'VICTIM withered away.',
		'VICTIM was pummeled by VICTOR.',
		'VICTIM was fragged by VICTOR.',
		'VICTIM was desynchronized.',
		'VICTIM was wasted.',
		'VICTIM was busted.',
		'VICTIM\'s bones are scraped clean by the desolate wind.',
		'VICTIM has died of dysentery.',
		'VICTIM fainted.',
		'VICTIM is out of usable Pokemon! VICTIM whited out!',
		'VICTIM is out of usable Pokemon! VICTIM blacked out!',
		'VICTIM whited out!',
		'VICTIM blacked out!',
		'VICTIM says goodbye to this cruel world.',
		'VICTIM got rekt.',
		'VICTIM was sawn in half by VICTOR.',
		'VICTIM died. I blame VICTOR.',
		'VICTIM was axe-murdered by VICTOR.',
		'VICTIM\'s melon was split by VICTOR.',
		'VICTIM was sliced and diced by VICTOR.',
		'VICTIM was split from crotch to sternum by VICTOR.',
		'VICTIM\'s death put another notch in VICTOR\'s axe.',
		'VICTIM died impossibly!',
		'VICTIM died from VICTOR\'s mysterious tropical disease.',
		'VICTIM escaped infection by dying.',
		'VICTIM played hot-potato with a grenade.',
		'VICTIM was knifed by VICTOR.',
		'VICTIM fell on his sword.',
		'VICTIM ate a grenade.',
		'VICTIM practiced being VICTOR\'s clay pigeon.',
		'VICTIM is what\'s for dinner!',
		'VICTIM was terminated by VICTOR.',
		'VICTIM was shot before being thrown out of a plane.',
		'VICTIM was not invincible.',
		'VICTIM has encountered an error.',
		'VICTIM died and reincarnated as a goat.',
		'VICTOR threw VICTIM off a building.',
		'VICTIM is sleeping with the fishes.',
		'VICTIM got a premature burial.',
		'VICTOR replaced all of VICTIM\'s music with Nickelback.',
		'VICTOR spammed VICTIM\'s email.',
		'VICTOR made VICTIM a knuckle sandwich.',
		'VICTOR slapped VICTIM with pure nothing.',
		'VICTOR hit VICTIM with a small, interstellar spaceship.',
		'VICTIM was quickscoped by VICTOR.',
		'VICTOR put VICTIM in check-mate.',
		'VICTOR RSA-encrypted VICTIM and deleted the private key.',
		'VICTOR put VICTIM in the friendzone.',
		'VICTOR slaps VICTIM with a DMCA takedown request!',
		'VICTIM became a corpse blanket for VICTOR.',
		'Death is when the monsters get you. Death comes for VICTIM.',
		'Cowards die many times before their death. VICTIM never tasted death but once.',
		'VICTIM died of hospital gangrene.',
		'VICTIM got a house call from Doctor VICTOR.',
		'VICTOR beheaded VICTIM.',
		'VICTIM got stoned...by an angry mob.',
		'VICTOR sued the pants off VICTIM.',
		'VICTIM was impeached.',
		'VICTIM was one-hit KO\'d by VICTOR.',
		'VICTOR sent VICTIM to /dev/null.',
		'VICTOR sent VICTIM down the memory hole.',
		'VICTIM was a mistake.',
		'\'VICTIM was a mistake.\' - VICTOR',
		'VICTOR checkmated VICTIM in two moves.'
	},
	puns = { -- puns configured for plugins/puns.lua to use
		'The person who invented the door-knock won the No-bell prize.',
		'I couldn\'t work out how to fasten my seatbelt. Then it clicked.',
		'Never trust atoms; they make up everything.',
		'Singing in the shower is all fun and games until you get shampoo in your mouth - Then it becomes a soap opera.',
		'I can\'t believe I got fired from the calendar factory. All I did was take a day off.',
		'To the guy who invented zero: Thanks for nothing!',
		'Enough with the cripple jokes! I just can\'t stand them.',
		'I\'ve accidentally swallowed some Scrabble tiles. My next crap could spell disaster.',
		'How does Moses make his tea? Hebrews it.',
		'Did you hear about the guy who got hit in the head with a can of soda? He was lucky it was a soft drink.',
		'When William joined the army he disliked the phrase \'fire at will\'.',
		'There was a sign on the lawn at a rehab center that said \'Keep off the Grass\'.',
		'I wondered why the baseball was getting bigger. Then it hit me.',
		'I can hear music coming out of my printer. I think the paper\'s jamming again.',
		'I have a few jokes about unemployed people, but none of them work',
		'Want to hear a construction joke? I\'m working on it',
		'I always take a second pair of pants when I go golfing, in case I get a hole in one.',
		'I couldn\'t remember how to catch a boomerang, but then it came back to me.',
		'I\'ve decided that my Wi-Fi router will be my valentine this year. I don\'t know why, we just have this connection.',
		'A prisoner\'s favourite punctuation mark is the period. It marks the end of his sentence.',
		'I used to go fishing with Skrillex, but he kept dropping the bass.',
		'Two antennae met on a roof and got married. The wedding was okay, but the reception was incredible.',
		'A book just fell on my head. I\'ve only got my shelf to blame.',
		'I dropped my steak on the floor. Now it\'s ground beef.',
		'I used to have a fear of hurdles, but I got over it.',
		'The outcome of war does not prove who is right, but only who is left.',
		'Darth Vader tries not to burn his food, but it always comes out a little on the dark side.',
		'The store keeps calling me to buy more furniture, but all I wanted was a one night stand.',
		'This girl said she recognized me from the vegetarian club, but I\'d never met herbivore.',
		'Police arrested two kids yesterday, one was drinking battery acid, the other was eating fireworks. They charged one and let the other one off...',
		'No more Harry Potter jokes guys. I\'m Sirius.',
		'It was hard getting over my addiction to hokey pokey, but I\'ve turned myself around.',
		'It takes a lot of balls to golf the way I do.',
		'Why did everyone want to hang out with the mushroom? Because he was a fungi.',
		'How much does a hipster weigh? An instagram.',
		'I used to be addicted to soap, but I\'m clean now.',
		'When life gives you melons, you\'re probably dyslexic.',
		'What\'s with all the blind jokes? I just don\'t see the point.',
		'If Apple made a car, would it have Windows?',
		'Need an ark? I Noah guy.',
		'The scarecrow won an award because he was outstanding in his field.',
		'What\'s the difference between a man in a tux on a bicycle, and a man in a sweatsuit on a trycicle? A tire.',
		'What do you do with a sick chemist? If you can\'t helium, and you can\'t curium, you\'ll just have to barium.',
		'I\'m reading a book about anti-gravity. It\'s impossible to put down.',
		'Trying to write with a broken pencil is pointless.',
		'When TVs go on vacation, they travel to remote islands.',
		'I was going to tell a midget joke, but it\'s too short.',
		'Jokes about German sausages are the wurst.',
		'How do you organize a space party? You planet.',
		'Sleeping comes so naturally to me, I could do it with my eyes closed.',
		'I\'m glad I learned sign language; it\'s pretty handy.',
		'Atheism is a non-prophet organization.',
		'Velcro: What a rip-off!',
		'If they made a Minecraft movie, it would be a blockbuster.',
		'I don\'t trust people with graph paper. They\'re always plotting something',
		'I had a friend who was addicted to brake fluid. He says he can stop anytime.',
		'The form said I had Type A blood, but it was a Type O.',
		'I went to to the shop to buy eight Sprites -  I came home and realised I\'d picked 7-Up.',
		'There was an explosion at a pie factory. 3.14 people died.',
		'A man drove his car into a tree and found out how a Mercedes bends.',
		'The experienced carpenter really nailed it, but the new guy screwed everything up.',
		'I didn\'t like my beard at first, but then it grew on me.',
		'Smaller babies may be delivered by stork, but the heavier ones need a crane.',
		'What\'s the definition of a will? It\'s a dead giveaway.',
		'I was going to look for my missing watch, but I could never find the time.',
		'I hate elevators, and I often take steps to avoid them.',
		'Did you hear about the guy whose whole left side was cut off? He\'s all right now.',
		'It\'s not that the man did not know how to juggle, he just didn\'t have the balls to do it.',
		'I used to be a loan shark, but I lost interest',
		'I don\'t trust these stairs; they\'re always up to something.',
		'My friend\'s bakery burned down last night. Now his business is toast.',
		'Don\'t trust people that perform acupuncture; they\'re back stabbers.',
		'The man who survived mustard gas and pepper spray is now a seasoned veteran.',
		'Police were called to a daycare where a three-year-old was resisting a rest.',
		'When Peter Pan punches, they Neverland',
		'The shoemaker did not deny his apprentice anything he needed. He gave him his awl.',
		'I did a theatrical performance about puns. It was a play on words.',
		'Show me a piano falling down a mineshaft and I\'ll show you A-flat minor.',
		'Have you ever tried to eat a clock? It\'s very time consuming.',
		'There was once a cross-eyed teacher who couldn\'t control his pupils.',
		'A new type of broom came out and it is sweeping the nation.',
		'I relish the fact that you\'ve mustard the strength to ketchup to me.',
		'I knew a woman who owned a taser. Man, was she stunning!',
		'What did the grape say when it got stepped on? Nothing - but it let out a little whine.',
		'It was an emotional wedding. Even the cake was in tiers.',
		'When a clock is hungry it goes back four seconds.',
		'The dead batteries were given out free of charge.',
		'Why are there no knock-knock jokes about America? Because freedom rings.',
		'When the cannibal showed up late to dinner, they gave him the cold shoulder.',
		'I should have been sad when my flashlight died, but I was delighted.',
		'Why don\'t tennis players ever get married? Love means nothing to them.',
		'Pterodactyls can\'t be heard going to the bathroom because the P is silent.',
		'Mermaids make calls on their shell phones.',
		'What do you call an aardvark with three feet? A yaardvark.',
		'Captain Kirk has three ears: A right ear, a left ear, and a final front ear.',
		'How do celebrities stay cool? They have a lot of fans.',
		'Without geometry, life is pointless.',
		'Did you hear about the cow who tried to jump over a barbed-wire fence? It ended in udder destruction.',
		'The truth may ring like a bell, but it is seldom ever tolled.',
		'I used to work for the IRS, but my job was too taxing.',
		'I used to be a programmer, but then I lost my drive.',
		'Pediatricians are doctors with little patients.',
		'I finally fired my masseuse today. She always rubbed me the wrong way.',
		'I stayed up all night wondering where the sun went. Then it dawned on me.',
		'What\'s the difference between a man and his dog? The man wears a suit; the dog just pants.',
		'A psychic midget who escapes from prison is a small medium at large.',
		'I\'ve been to the dentist several times, so I know the drill.',
		'The roundest knight at King Arthur\'s round table was Sir Cumference. He acquired his size from too much pi.',
		'She was only a whiskey maker, but he loved her still.',
		'Male deer have buck teeth.',
		'Whiteboards are remarkable.',
		'Visitors in Cuba are always Havana good time.',
		'Why does electricity shock people? It doesn\'t know how to conduct itself.',
		'Lancelot had a scary dream about his horse. It was a knight mare.',
		'A tribe of cannibals captured a missionary and ate him. Afterwards, they all had violent food poisoning. This just goes to show that you can\'t keep a good man down.',
		'Heaven for gamblers is a paradise.',
		'Old wheels aren\'t thrown away, they\'re just retired.',
		'Horses are very stable animals.',
		'Bankers don\'t crash, they just lose their balance.',
		'The career of a skier can go downhill very fast.',
		'In democracy, it\'s your vote that counts. In feudalism, it\'s your count that votes.',
		'A sea lion is nothing but an ionized seal.',
		'The vegetables from my garden aren\'t that great. I guess you could say they\'re mediokra.'
	},
	eightball_answers = { -- eightball responses configured for eightball.lua
		'It is certain.',
		'It has been confirmed.',
		'Without any doubts.',
		'Yes, definitely.',
		'You may rely on it.',
		'As I see it, yes.',
		'Most likely.',
		'Outlook: not so good.',
		'Yes.',
		'Signs point to yes.',
		'The reply is very weak, try again.',
		'Ask again later.',
		'I can not tell you right now.',
		'Cannot predict right now.',
		'Concentrate, and then ask again.',
		'Do not count on it.',
		'My reply is no.',
		'My sources say possibly.',
		'Outlook: very good.',
		'Very doubtful.',
		'Rowan\'s voice echoes: There is a time and place for everything, but not now.'
	},
	eightball_yes_no_answers = { -- simple variants of the eightball responses configured for eightball.lua
		'Absolutely.',
		'In your dreams.',
		'Yes.',
		'No.',
		'It is likely so.',
		'Never!'
	},
	commits = { -- commit messages configured for commit.lua
		'One does not simply merge into master',
		'Merging the merge',
		'Another bug bites the dust',
		'de-misunderestimating',
		'Some shit.',
		'add actual words',
		'I CAN HAZ COMMENTZ.',
		'giggle.',
		'Whatever.',
		'Finished fondling.',
		'FONDLED THE CODE',
		'this is how we generate our shit.',
		'unh',
		'It works!',
		'unionfind is no longer being molested.',
		'Well, it\'s doing something.',
		'I\'M PUSHING.',
		'Whee.',
		'Whee, good night.',
		'It\'d be nice if type errors caused the compiler to issue a type error',
		'Fucking templates.',
		'I hate this fucking language.',
		'marks',
		'that coulda been bad',
		'hoo boy',
		'It was the best of times, it was the worst of times',
		'Fucking egotistical bastard. adds expandtab to vimrc',
		'if you\'re not using et, fuck off',
		'WHO THE FUCK CAME UP WITH MAKE?',
		'This is a basic implementation that works.',
		'By works, I meant \'doesn\'t work\'. Works now..',
		'Last time I said it works? I was kidding. Try this.',
		'Just stop reading these for a while, ok..',
		'Give me a break, it\'s 2am. But it works now.',
		'Make that it works in 90% of the cases. 3:30.',
		'Ok, 5am, it works.  For real.',
		'FOR REAL.',
		'I don\'t know what these changes are supposed to accomplish but somebody told me to make them.',
		'I don\'t get paid enough for this shit.',
		'fix some fucking errors',
		'first blush',
		'So my boss wanted this button ...',
		'uhhhhhh',
		'forgot we\'re not using a smart language',
		'include shit',
		'To those I leave behind, good luck!',
		'things occurred',
		'i dunno, maybe this works',
		'8==========D',
		'No changes made',
		'whooooooooooooooooooooooooooo',
		'clarify further the brokenness of C++. why the fuck are we using C++?',
		'.',
		'Friday 5pm',
		'changes',
		'A fix I believe, not like I tested or anything',
		'Useful text',
		'pgsql is being a pain',
		'pgsql is more strict, increase the hackiness up to 11',
		'c&p fail',
		'syntax',
		'fix',
		'just shoot me',
		'arrrggghhhhh fixed!',
		'someone fails and it isn\'t me',
		'totally more readable',
		'better grepping',
		'fix',
		'fix bug, for realz',
		'fix /sigh',
		'Does this work',
		'MOAR BIFURCATION',
		'bifurcation',
		'REALLY FUCKING FIXED',
		'FIX',
		'better ignores',
		'More ignore',
		'more ignores',
		'more ignores',
		'more ignores',
		'more ignores',
		'more ignores',
		'more ignored words',
		'more fixes',
		'really ignore ignored worsd',
		'fixes',
		'/sigh',
		'fix',
		'fail',
		'pointless limitation',
		'omg what have I done?',
		'added super-widget 2.0.',
		'tagging release w.t.f.',
		'I can\'t believe it took so long to fix this.',
		'I must have been drunk.',
		'This is why the cat shouldn\'t sit on my keyboard.',
		'This is why git rebase is a horrible horrible thing.',
		'ajax-loader hotness, oh yeah',
		'small is a real HTML tag, who knew.',
		'WTF is this.',
		'Do things better, faster, stronger',
		'Use a real JS construct, WTF knows why this works in chromium.',
		'Added a banner to the default admin page. Please have mercy on me =(',
		'needs more cow bell',
		'Switched off unit test X because the build had to go out now and there was no time to fix it properly.',
		'Updated',
		'I must sleep... it\'s working... in just three hours...',
		'I was wrong...',
		'Completed with no bugs...',
		'Fixed a little bug...',
		'Fixed a bug in NoteLineCount... not seriously...',
		'woa!! this one was really HARD!',
		'Made it to compile...',
		'changed things...',
		'touched...',
		'i think i fixed a bug...',
		'perfect...',
		'Moved something to somewhere... goodnight...',
		'oops, forgot to add the file',
		'Corrected mistakes',
		'oops',
		'oops!',
		'put code that worked where the code that didn\'t used to be',
		'Nothing to see here, move along',
		'I am even stupider than I thought',
		'I don\'t know what the hell I was thinking.',
		'fixed errors in the previous commit',
		'Committed some changes',
		'Some bugs fixed',
		'Minor updates',
		'Added missing file in previous commit',
		'bug fix',
		'typo',
		'bara bra grejjor',
		'Continued development...',
		'Does anyone read this? I\'ll be at the coffee shop accross the street.',
		'That\'s just how I roll',
		'work in progress',
		'minor changes',
		'some brief changes',
		'assorted changes',
		'lots and lots of changes',
		'another big bag of changes',
		'lots of changes after a lot of time',
		'LOTS of changes. period',
		'Test commit. Please ignore',
		'I\'m just a grunt. Don\'t blame me for this awful PoS.',
		'I did it for the lulz!',
		'I\'ll explain this when I\'m sober .. or revert it',
		'Obligatory placeholder commit message',
		'A long time ago, in a galaxy far far away...',
		'Fixed the build.',
		'various changes',
		'One more time, but with feeling.',
		'Handled a particular error.',
		'Fixed unnecessary bug.',
		'Removed code.',
		'Added translation.',
		'Updated build targets.',
		'Refactored configuration.',
		'Locating the required gigapixels to render...',
		'Spinning up the hamster...',
		'Shovelling coal into the server...',
		'Programming the flux capacitor',
		'The last time I tried this the monkey didn\'t survive. Let\'s hope it works better this time.',
		'I should have had a V8 this morning.',
		'640K ought to be enough for anybody',
		'pay no attention to the man behind the curtain',
		'a few bits tried to escape, but we caught them',
		'Who has two thumbs and remembers the rudiments of his linear algebra courses?  Apparently, this guy.',
		'workaround for ant being a pile of fail',
		'Don\'t push this commit',
		'rats',
		'squash me',
		'fixed mistaken bug',
		'Final commit, ready for tagging',
		'-m \'So I hear you like commits ...\'',
		'epic',
		'need another beer',
		'Well the book was obviously wrong.',
		'lolwhat?',
		'Another commit to keep my CAN streak going.',
		'I cannot believe that it took this long to write a test for this.',
		'TDD: 1, Me: 0',
		'Yes, I was being sarcastic.',
		'Apparently works-for-me is a crappy excuse.',
		'tl;dr',
		'I would rather be playing SC2.',
		'Crap. Tonight is raid night and I am already late.',
		'I know what I am doing. Trust me.',
		'You should have trusted me.',
		'Is there an award for this?',
		'Is there an achievement for this?',
		'I\'m totally adding this to epic win. +300',
		'This really should not take 19 minutes to build.',
		'fixed the israeli-palestinian conflict',
		'SHIT ===> GOLD',
		'Committing in accordance with the prophecy.',
		'It compiles! Ship it!',
		'LOL!',
		'Reticulating splines...',
		'SEXY RUSSIAN CODES WAITING FOR YOU TO CALL',
		's/import/include/',
		'extra debug for stuff module',
		'debug line test',
		'debugo',
		'remove debug all good',
		'debug suff',
		'more debug... who overwrote!',
		'these confounded tests drive me nuts',
		'For great justice.',
		'QuickFix.',
		'oops - thought I got that one.',
		'removed echo and die statements, lolz.',
		'somebody keeps erasing my changes.',
		'doh.',
		'pam anderson is going to love me.',
		'added security.',
		'arrgghh... damn this thing for not working.',
		'jobs... steve jobs',
		'and a comma',
		'this is my quickfix branch and i will use to do my quickfixes',
		'Fix my stupidness',
		'and so the crazy refactoring process sees the sunlight after some months in the dark!',
		'gave up and used tables.',
		'[Insert your commit message here. Be sure to make it descriptive.]',
		'Removed test case since code didn\'t pass QA',
		'removed tests since i can\'t make them green',
		'stuff',
		'more stuff',
		'Become a programmer, they said. It\'ll be fun, they said.',
		'Same as last commit with changes',
		'foo',
		'just checking if git is working properly...',
		'fixed some minor stuff, might need some additional work.',
		'just trolling the repo',
		'All your codebase are belong to us.',
		'Somebody set up us the bomb.',
		'should work I guess...',
		'To be honest, I do not quite remember everything I changed here today. But it is all good, I tell ya.',
		'well crap.',
		'herpderp (redux)',
		'herpderp',
		'Derp',
		'derpherp',
		'Herping the derp',
		'sometimes you just herp the derp so hard it herpderps',
		'Derp. Fix missing constant post rename',
		'Herping the fucking derp right here and now.',
		'Derp, asset redirection in dev mode',
		'mergederp',
		'Derp search/replace fuckup',
		'Herpy dooves.',
		'Derpy hooves',
		'derp, helper method rename',
		'Herping the derp derp (silly scoping error)',
		'Herp derp I left the debug in there and forgot to reset errors.',
		'Reset error count between rows. herpderp',
		'hey, what\'s that over there?!',
		'hey, look over there!',
		'It worked for me...',
		'Does not work.',
		'Either Hot Shit or Total Bollocks',
		'Arrrrgggg',
		'Don’t mess with Voodoo',
		'I expected something different.',
		'Todo!!!',
		'This is supposed to crash',
		'No changes after this point.',
		'I know, I know, this is not how I\'m supposed to do it, but I can\'t think of something better.',
		'Don’t even try to refactor it.',
		'(c) Microsoft 1988',
		'Please no changes this time.',
		'Why The Fuck?',
		'We should delete this crap before shipping.',
		'Shit code!',
		'ALL SORTS OF THINGS',
		'Herpderp, shoulda check if it does really compile.',
		'I CAN HAZ PYTHON, I CAN HAZ INDENTS',
		'Major fixup.',
		'less french words',
		'breathe, =, breathe',
		'IEize',
		'this doesn\'t really make things faster, but I tried',
		'this should fix it',
		'forgot to save that file',
		'Glue. Match sticks. Paper. Build script!',
		'Argh! About to give up :(',
		'Blaming regex.',
		'oops',
		'it\'s friday',
		'yo recipes',
		'Not sure why',
		'lol digg',
		'grrrr',
		'For real, this time.',
		'Feed. You. Stuff. No time.',
		'I don\'t give a damn \'bout my reputation',
		'DEAL WITH IT',
		'commit',
		'tunning',
		'I really should\'ve committed this when I finished it...',
		'it\'s getting hard to keep up with the crap I\'ve trashed',
		'I honestly wish I could remember what was going on here...',
		'I must enjoy torturing myself',
		'For the sake of my sanity, just ignore this...',
		'That last commit message about silly mistakes pales in comparision to this one',
		'My bad',
		'Still can\'t get this right...',
		'Nitpicking about alphabetizing methods, minor OCD thing',
		'Committing fixes in the dark, seriously, who killed my power!?',
		'You can\'t see it, but I\'m making a very angry face right now',
		'Fix the fixes',
		'it\'s secret!',
		'Commit committed....',
		'No time to commit.. My people need me!',
		'Something fixed',
		'I\'m hungry',
		'asdfasdfasdfasdfasdfasdfadsf',
		'hmmm',
		'formatted all',
		'Replace all whitespaces with tabs.',
		's/ /  /g',
		'I\'m too foo for this bar',
		'Things went wrong...',
		'??! what the ...',
		'This solves it.',
		'Working on tests (haha)',
		'fixed conflicts (LOL merge -s ours; push -f)',
		'last minute fixes.',
		'fuckup.',
		'Revert \'fuckup\'.',
		'should work now.',
		'final commit.',
		'done. going to bed now.',
		'buenas those-things.',
		'Your commit is writing cheques your merge can\'t cash.',
		'This branch is so dirty, even your mom can\'t clean it.',
		'wip',
		'Revert \'just testing, remember to revert\'',
		'bla',
		'harharhar',
		'restored deleted entities just to be sure',
		'added some filthy stuff',
		'bugger',
		'lol',
		'oopsie B|',
		'Copy pasta fail. still had a instead of a',
		'Now added delete for real',
		'grmbl',
		'move your body every every body',
		'Trying to fake a conflict',
		'And a commit that I don\'t know the reason of...',
		'ffs',
		'that\'s all folks',
		'Fucking submodule bull shit',
		'apparently i did something…',
		'bump to 0.0.3-dev:wq',
		'pep8 - cause I fell like doing a barrel roll',
		'pep8 fixer',
		'it is hump day _^_',
		'happy monday _ bleh _',
		'after of this commit remember do a git reset hard',
		'someday I gonna kill someone for this shit...',
		'magic, have no clue but it works',
		'I am sorry',
		'dirty hack, have a better idea ?',
		'Code was clean until manager requested to fuck it up',
		' - Temporary commit.',
		':(:(',
		'...',
		'GIT :/',
		'stopped caring 10 commits ago',
		'Testing in progress ;)',
		'Fixed Bug',
		'Fixed errors',
		'Push poorly written test can down the road another ten years',
		'commented out failing tests',
		'I\'m human',
		'TODO: write meaningful commit message',
		'Pig',
		'SOAP is a piece of shit',
		'did everything',
		'project lead is allergic to changes...',
		'making this thing actually usable.',
		'I was told to leave it alone, but I have this thing called OCD, you see',
		'Whatever will be, will be 8{',
		'it\'s 2016; why are we using ColdFusion?!',
		'#GrammarNazi',
		'Future self, please forgive me and don\'t hit me with the baseball bat again!',
		'Hide those navs, boi!',
		'Who knows...',
		'Who knows WTF?!',
		'I should get a raise for this.',
		'Done, to whoever merges this, good luck.',
		'Not one conflict, today was a good day.',
		'First Blood',
		'Fixed the fuck out of #526!',
		'I\'m too old for this shit!',
		'One little whitespace gets its very own commit! Oh, life is so erratic!',
		'please dont let this be the problem',
		'good: no crash. bad: nothing happens',
		'trying',
		'trying harder',
		'i tried',
		'fml'
	},
	plugins = { -- the plugins which mattata will use
		'control',
		'about',
		'nick',
		'bandersnatch',
		'wikipedia',
		'simplewikipedia',
		'remind',
		'ping',
		'pong',
		'calc',
		'urbandictionary',
		'dice',
		'imdb',
		'me',
		'slap',
		'time',
		'translate',
		'preview',
		'reddit',
		'channel',
		'pokego-calculator',
		'commit',
		'pun',
		'cats',
		'catfact',
		'currency',
		'pokedex',
		'echo',
		'eightball',
		'isup',
		'chuck',
		'id',
		'loremipsum',
		'baconipsum',
		'skateipsum',
		'starwars',
		'setandget',
		'lua',
		'9gag',
		'lyrics',
		'fact',
		'minecraft',
		'mcmigrated',
		'mcuuid',
		'mchistory',
		'randomword',
		'yeoldinsult',
		'ispwned',
		'yomama',
		'guidgen',
		'pwgen',
		'canitrust',
		'help',
		'groupmessaging',
		'messaging'
	}
} -- End of configuration, you're good to go!