local addonName, privateTable = ...
if (GetLocale() == "enUS") or (GetLocale() == "enGB") then
privateTable.L = setmetatable({
	["usage1"]="'on'/'off' to enable or disable addon",
	["usage2"]="'all'/'list' to handle any quest or just specified in a list",
	["usage3"]="'loot' do not complete quests with a list of rewards or complete it and choose most expensive one of rewards",
	["all"]="ready to handle every quest",
	["list"]="only daily quests will be handled",
	["dontlootfalse"]="loot most expensive reward",
	["dontloottrue"]="do not complete quests with rewards",
	
	["questTypeLabel"] = "quests", 
	["questTypeAll"] = "all", 
	["questTypeList"] = "daily", 

	["lootTypeLabel"]="quests with rewards",
	["lootTypeFalse"]="don't turn in",
	["lootTypeTrue"]="loot most expensive reward",
	
	["tournamentLabel"]="tournament", 
	["tournamentWrit"]="Champion's Writ", -- 46114
	["tournamentPurse"]="Champion's Purse",  -- 45724
	
	["DarkmoonTeleLabel"]="Darkmoon: teleport to the cannon",
	["DarkmoonFaireTeleport"]="Teleportologist Fozlebub",
	
	["rewardtext"]="print quest reward text",
	["togglekey"]="Enable/disable key"},
	{__index = function(table, index) return index end})
	
privateTable.L.quests = {
-- AV both fractions
['Empty Stables']={donotaccept=true},
-- Alliance AV Quests
['Crystal Cluster']={donotaccept=true},
['Ivus the Forest Lord']={donotaccept=true},
["Call of Air - Ichman's Fleet"]={donotaccept=true},
["Call of Air - Slidore's Fleet"]={donotaccept=true},
["Call of Air - Vipore's Fleet"]={donotaccept=true},
['Armor Scraps']={donotaccept=true},
['More Armor Scraps']={donotaccept=true},
['Ram Riding Harnesses']={donotaccept=true},
-- Horde AV Quests
['A Gallon of Blood']={donotaccept=true},
['Lokholar the Ice Lord']={donotaccept=true},
["Call of Air - Guse's Fleet"]={donotaccept=true},
["Call of Air - Jeztor's Fleet"]={donotaccept=true},
["Call of Air - Mulverick's Fleet"]={donotaccept=true},
['Enemy Booty']={donotaccept=true},
['More Booty!']={donotaccept=true},
['Ram Hide Harnesses']={donotaccept=true},
-- Timbermaw Quests
['Feathers for Grazle']={item="Deadwood Headdress Feather", amount=5, currency=false},
['Feathers for Nafien']={item="Deadwood Headdress Feather", amount=5, currency=false},
['More Beads for Salfa']={item="Winterfall Spirit Beads", amount=5, currency=false},
-- Cenarion
['Encrypted Twilight Texts']={item="Encrypted Twilight Text", amount=10, currency=false},
['Still Believing']={item="Encrypted Twilight Text", amount=10, currency=false},
-- Thorium Brotherhood
['Favor Amongst the Brotherhood, Blood of the Mountain']={item="Blood of the Mountain", amount=1, currency=false},
['Favor Amongst the Brotherhood, Core Leather']={item="Core Leather", amount=2, currency=false},
['Favor Amongst the Brotherhood, Dark Iron Ore']={item="Dark Iron Ore", amount=10, currency=false},
['Favor Amongst the Brotherhood, Fiery Core']={item="Fiery Core", amount=1, currency=false},
['Favor Amongst the Brotherhood, Lava Core']={item="Lava Core", amount=1, currency=false},
['Gaining Acceptance']={item="Dark Iron Residue", amount=4, currency=false},
['Gaining Even More Acceptance']={item="Dark Iron Residue", amount=100, currency=false},
['Twilight Collars']={item="Twilight Collar", amount=20, currency=false},


--[[Burning Crusade]]--
--Lower City
["More Feathers"]={item="Arakkoa Feather", amount=30, currency=false},
--Aldor
["More Marks of Kil'jaeden"]={item="Mark of Kil'jaeden", amount=10, currency=false},
["More Marks of Sargeras"]={item="Mark of Sargeras", amount=10, currency=false},
["Fel Armaments"]={item="Fel Armaments", amount=10, currency=false},
["Single Mark of Kil'jaeden"]={item="Mark of Kil'jaeden", amount=1, currency=false},
["Single Mark of Sargeras"]={item="Mark of Sargeras", amount=1, currency=false},
["More Venom Sacs"]={item="Dreadfang Venom Sac", amount=8, currency=false},
--Scryer
["More Firewing Signets"]={item="Firewing Signet", amount=10, currency=false},
["More Sunfury Signets"]={item="Sunfury Signet", amount=10, currency=false},
["Arcane Tomes"]={item="Arcane Tome", amount=1, currency=false},
["Single Firewing Signet"]={item="Firewing Signet", amount=1, currency=false},
["Single Sunfury Signet"]={item="Sunfury Signet", amount=1, currency=false},
["More Basilisk Eyes"]={item="Dampscale Basilisk Eye", amount=8, currency=false},
--Cenarion Exp
--Skettis
["Escape from Skettis"]="",
["Fires Over Skettis"]="",
["More Shadow Dust"]={item="Shadow Dust", amount=6, currency=false},
--SporeGar
["Bring Me Another Shrubbery!"]={item="Sanguine Hibiscus", amount=5, currency=false},
["More Fertile Spores"]={item="Fertile Spores", amount=6, currency=false},
["More Glowcaps"]={item="Glowcap", amount=10, currency=false},
["More Spore Sacs"]={item="Mature Spore Sac", amount=10, currency=false},
["More Tendrils!"]={item="Bog Lord Tendril", amount=6, currency=false},
["Now That We're Still Friends..."]="",
-- Consortium
-- Halaa
["Oshu'gun Crystal Powder"]={item="Oshu'gun Crystal Powder Sample", amount=10, currency=false},
-- Sunwell
["A Charitable Donation"]="",
["Arm the Wards!"]="",
["Ata'mal Armaments"]="",
["Blast the Gateway"]="",
["Blood for Blood"]="",
["Crush the Dawnblade"]="",
["Discovering Your Roots"]="",
["Disrupt the Greengill Coast"]="",
["Distraction at the Dead Scar"]="",
["Don't Stop Now...."]="",
["Erratic Behavior"]="",
["Further Conversions"]="",
["Gaining the Advantage"]="",
["Intercept the Reinforcements"]="",
["Intercepting the Mana Cells"]="",
["Keeping the Enemy at Bay"]="",
["Know Your Ley Lines"]="",
["Maintaining the Sunwell Portal"]="",
["Making Ready"]="",
["Open for Business"]="",
["Rediscovering Your Roots"]="",
["Sunfury Attack Plans"]="",
["Taking the Harbor"]="",
["The Air Strikes Must Continue"]="",
["The Battle for the Sun's Reach Armory"]="",
["The Battle Must Go On"]="",
["The Multiphase Survey"]="",
["The Sanctum Wards"]="",
["Wanted: Sisters of Torment"]="",
["Wanted: The Signet Ring of Prince Kael'thas"]="",
["Your Continued Support"]="",
-- Ogri'la
["Banish More Demons"]="",
["Bomb Them Again!"]="",
["The Relic's Emanation"]="",
["Wrangle More Aether Rays!"]="",
-- Netherdrake
["A Slow Death"]="",
["Disrupting the Twilight Portal"]="",
["Dragons are the Least of Our Problems"]="",
["Nethercite Ore"]="",
["Netherdust Pollen"]="",
["Nethermine Flayer Hide"]="",
["Netherwing Crystals"]="",
["Picking Up The Pieces..."]="",
["The Booterang: A Cure For The Common Worthless Peon"]="",
["The Deadliest Trap Ever Laid"]="",
["The Not-So-Friendly Skies..."]="",
-- Fishing daily
["Bait Bandits"]="",
["Crocolisks in the City"]="",
["Felblood Fillet"]="",
["Shrimpin' Ain't Easy"]="",
["The One That Got Away"]="",
-- Cooking daily
["Manalicious"]="",
["Revenge is Tasty"]="",
["Soup for the Soul"]="",
["Super Hot Stew"]="",

--[[ WOtLK]]--
-- Kalu'ak
["Planning for the Future"]="",
["Preparing for the Worst"]="",
["The Way to His Heart..."]="",
-- Oracul
["Appeasing the Great Rain Stone"]="",
["Mastery of the Crystals"]="",
["Power of the Great Ones"]="",
["Will of the Titans"]="",
["A Cleansing Song"]="",
["Song of Fecundity"]="",
["Song of Reflection"]="",
["Song of Wind and Water"]="",
--Frenzyheart Tribe
["A Hero's Headgear"]="",
["Chicken Party!"]="",
["Kartak's Rampage"]="",
["Rejek: First Blood"]="",
["Secret Strength of the Frenzyheart"]="",
["Strength of the Tempest"]="",
["The Heartblood's Strength"]="",
["Tools of War"]="",
--Knights of the Ebon Blade
["From Their Corpses, Rise!"]="",
["Intelligence Gathering"]="",
["Leave Our Mark"]="",
["No Fly Zone"]="",
["Shoot 'Em Up"]="",
["Vile Like Fire!"]="",
--Tournament
["A Blade Fit For A Champion"]="",
["A Chip Off the Ulduar Block"]="",
["A Leg Up"]="",
["A Valiant's Field Training"]="",
["A Worthy Weapon"]="",
["Among the Champions"]="tournament",
["At The Enemy's Gates"]="",
["Battle Before The Citadel"]="tournament",
["Breakfast Of Champions"]="",
["Contributin' To The Cause"]="",
["Deathspeaker Kharos"]="",
["Drottinn Hrothgar"]="",
["Get Kraken!"]="",
["Gormok Wants His Snobolds"]="",
["Identifying the Remains"]="",
["Jack Me Some Lumber"]="",
["Learning The Reins"]="",
["Mistcaller Yngvar"]="",
["Ornolf The Scarred"]="",
["Rescue at Sea"]="",
["Stop The Aggressors"]="",
["Taking Battle To The Enemy"]="tournament",
["The Edge Of Winter"]="",
["The Fate Of The Fallen"]="",
["The Grand Melee"]="",
["The Light's Mercy"]="",
["Threat From Above"]="tournament",
["Training In The Field"]="",
["What Do You Feed a Yeti, Anyway?"]="",
["You've Really Done It This Time, Kul"]="",
--Sons of Hodir
["Blowing Hodir's Horn"]="",
["Feeding Arngrim"]="",
["Hodir's Tribute"]={item="Relic of Ulduar", amount=10, currency=false},
["Hot and Cold"]="",
["Polishing the Helm"]="",
["Remember Everfrost!"]={item="Everfrost Chip", amount=1, currency=false},
["Spy Hunter"]="",
["Thrusting Hodir's Spear"]="",
--The Wyrmrest Accord
["Aces High!"]="",
["Defending Wyrmrest Temple"]="",
["Drake Hunt"]="",
--Valiance Expedition + Warsong Offensive
["Assault by Air"]="",
["Assault by Ground"]="",
["Blackriver Skirmish"]="",
["Blood of the Chosen"]="",
["Break the Blockade"]="",
["Capture More Dispatches"]="",
["Kick 'Em While They're Down"]="",
["King of the Mountain"]="",
["Life or Death"]="",
["Pieces Parts"]="",
["Shredder Repair"]="",
["Keep 'Em on Their Heels"]="",
["Keeping the Alliance Blind"]="",
["Making Repairs"]="",
["Overwhelmed!"]="",
["Shred the Alliance"]="",
--Jewelcrafting
['Finish the Shipment']="",
['Shipment: Blood Jade Amulet ']="",
['Shipment: Bright Armor Relic']="",
['Shipment: Glowing Ivory Figurine']="",
['Shipment: Intricate Bone Figurine']="",
['Shipment: Shifting Sun Curio ']="",
['Shipment: Wicked Sun Brooch']="",
['Necklace Repair']="",
--Fishing
['Better Luck Next Time']="",
['Blood Is Thicker']="",
['Dangerously Delicious']="",
['Disarmed!']="",
['Jewel Of The Sewers']="",
['The Ghostfish']="",
--Cooking
['Cheese for Glowergold']="",
['Convention at the Legerdemain']="",
['Infused Mushroom Meatloaf']="",
['Mustard Dogs!']="",
['Sewer Stew']="",
['Waterlogged Recipe']="",

--[[ Cataclysm]]--
-- Firelands Invasion
["A Bitter Pill"]="",
["Aggressive Growth"]="",
["Additional Armaments"]={item=416, amount=125, currency=true},
["Between the Trees"]="",
["Breach in the Defenses"]="",
["Burn Victims"]="",
["Bye Bye Burdy"]="",
["Call the Flock"]="",
["Calling the Ancients"]={item=416, amount=125, currency=true},
["Caught Unawares"]="",
["Echoes of Nemesis"]="",
["Egg-stinction"]="",
["Embergris"]="",
["Enduring the Heat"]="",
["Fandral's Methods"]="",
["Fire Flowers"]="",
["Fire in the Skies"]="",
["Filling the Moonwell"]={item=416, amount=125, currency=true},
["Flamewakers of the Molten Flow"]="",
["Hostile Elements"]="",
["Hounds of Shannox"]="",
["How Hot"]="",
["Into the Depths"]="",
["Into the Fire"]={donotaccept=true},
["Little Lasher"]="",
["Living Obsidium"]="",
["Mother's Malice"]="",
["Nature's Blessing"]="",
["Need... Water... Badly..."]="",
["Peaked Interest"]="",
["Perfecting Your Howl"]="",
["Punting Season"]="",
["Pyrorachnophobia"]="",
["Rage Against the Flames"]="",
["Releasing the Pressure"]="",
["Relieving the Pain"]="",
["Singed Wings"]="",
["Solar Core Destruction"]="",
["Some Like It Hot"]="",
["Starting Young"]="",
["Steal Magmolias"]="",
["Strike at the Heart"]="",
["Supplies for the Other Side"]="",
["Territorial Birds"]="",
["The Bigger They Are"]="",
["The Call of the Pack"]="",
["The Dogs of War"]="",
["The Flame Spider Queen"]="",
["The Forlorn Spire"]={donotaccept=true},
["The Harder They Fall"]="",
["The Power of Malorne"]="",
["The Protectors of Hyjal"]="",
["The Sanctuary Must Not Fall"]="",
["The Wardens are Watching"]="",
["Those Bears Up There"]="",
["Through the Gates of Hell"]="",
["Traitors Return"]="",
["Treating the Wounds"]="",
["Wicked Webs"]="",
["Wings Aflame"]="",
["Wisp Away"]="",

-- Tol Barad Peninsula
["A Huge Problem"]="",
["A Sticky Task"]="",
["Bombs Away!"]="",
["Boosting Morale"]="",
["Cannonball!"]="",
["Captain P. Harris"]="",
["Claiming The Keep"]="",
["Clearing the Depths"]="",
["Cursed Shackles"]="",
["D-Block"]="",
["Finish The Job"]="",
["First Lieutenant Connor"]="",
["Food From Below"]="",
["Ghostbuster"]="",
["Learning From The Past"]="",
["Leave No Weapon Behind"]="",
["Magnets, How Do They Work?"]="",
["Not The Friendliest Town"]="",
["Prison Revolt"]="",
["Rattling Their Cages"]="",
["Salvaging the Remains"]="",
["Shark Tank"]="",
["Svarnos"]="",
["Swamp Bait"]="",
["Taking the Overlook Back"]="",
["Teach A Man To Fish.... Or Steal"]="",
["The Forgotten"]="",
["The Imprisoned Archmage"]="",
["The Leftovers"]="",
["The Warden"]="",
["Thinning the Brood"]="",
["Victory in Tol Barad"]="",
["Walk A Mile In Their Shoes"]="",
["WANTED: Foreman Wellson"]="",
["Watch Out For Splinters!"]="",
-- Therazane
["Beneath the Surface"]="",
["Fear of Boring"]="",
["Fungal Fury"]="",
["Glop, Son of Glop"]="",
["Lost In The Deeps"]="",
["Motes"]="",
["Soft Rock"]="",
["The Restless Brood"]="",
["Through Persistence"]="",
["Underground Economy"]="",
--Ramkahen
["Fire From the Sky"]="",
["Thieving Little Pluckers"]="",
--Wildhammer Clan
["Beer Run"]="",
["Fight Like a Wildhammer"]="",
["Keeping the Dragonmaw at Bay"]="",
["Never Leave a Dinner Behind"]="",
["Warlord Halthar is Back"]="",
--Dragonmaw Clan
["Another Maw to Feed"]="",
["Bring Down the High Shaman"]="",
["Crushing the Wildhammer"]="",
["Hook 'em High"]="",
["Total War"]="",
--Jewelcrafter
["A Present for Lila"]="",
["Elemental Goo"]="",
["Nibbler! No!"]="",
["Ogrezonians in the Mood"]="",
["The Latest Fashion!"]="",
--Cooking Alliance
["A Fisherman's Feast"]="",
["A Fowl Shortage"]="",
["A Round for the Guards"]="",
["Back to Basics"]="",
["Can't Get Enough Spice Bread"]="",
["Feeling Crabby?"]="",
["I Need to Cask a Favor"]="",
["Keepin' the Haggis Flowin'"]="",
["Orphans Like Cookies Too!"]="",
["Penny's Pumpkin Pancakes"]="",
["Remembering the Ancestors"]="",
["Ribs for the Sentinels"]="",
["Spice Bread Aplenty"]="",
["The King's Cider"]="",
["The Secret to Perfect Kimchi"]="",
-- Cooking Horde
['"Magic" Mushrooms']="",
["Careful, This Fruit Bites Back"]="",
["Corn Mash"]="",
["Crawfish Creole"]="",
["Escargot A Go-Go"]="",
["Even Thieves Get Hungry"]="",
["Everything Is Better with Bacon"]="",
["Fungus Among Us"]="",
["Lily, Oh Lily"]="",
["Mulgore Spice Bread"]="",
["Perfectly Picked Portions"]="",
["Pining for Nuts"]="",
["Roach Coach"]="",
["Stealing From Our Own"]="",
["Would You Like Some Flies With That?"]="",
--Fishing Alliance
["A Slippery Snack"]="",
["An Old Favorite"]="",
["Big Gulp"]="",
["Cold Water Fishing"]="",
["Diggin' For Worms"]="",
["Fish fer Squirky"]="",
["Happy as a Clam Digger"]="",
["Hitting a Walleye"]="",
["Live Bait"]="",
["One fer the Ages"]="",
["Rock Lobster"]="",
["Stocking Up"]="",
["The Gnomish Bait-o-Matic"]="",
["The Sister's Pendant"]="",
["Thunder Falls"]="",
--Fishing Horde
["A Furious Catch"]="",
["A Golden Opportunity"]="",
["A Staggering Effort"]="",
["Clammy Hands"]="",
["Craving Crayfish"]="",
["Fish Head"]="",
["Like Pike?"]="",
["Moat Monster!"]="",
["No Dumping Allowed"]="",
["Pond Predators"]="",
["Shiny Baubles"]="",
["Tadpole Terror"]="",
["The Race to Restock"]="",
["The Ring's the Thing"]="",
["Time for Slime"]="",
--Darkmoon Faire
["He Shoots, He Scores!"]="",
["It's Hammer Time"]="",
["Target: Turtle"]="",
["The Humanoid Cannonball"]="",
["Tonk Commander"]="",
--Love is in the Air
["A Cloudlet of Classy Cologne"]="",
["A Gift for a Lord of Ironforge"]="",
["A Gift for the Banshee Queen"]="",
["A Gift for the High Chieftain"]="",
["A Gift for the High Priestess of Elune"]="",
["A Gift for the King of Stormwind"]="",
["A Gift for the Prophet"]="",
["A Gift for the Regent Lord of Quel'Thalas"]="",
["A Gift for the Warchief"]="",
["A Perfect Puff of Perfume"]="",
["Bonbon Blitz"]="",
["Crushing the Crown"]="",
["You've Been Served"]="",
--Noblegarden
["A Tisket, a Tasket, a Noblegarden Basket"]="",
["Spring Collectors"]="",
["Spring Gatherers"]="",
["The Great Egg Hunt"]="",
--Midsummer Fire Festival
["More Torch Catching"]="",
["More Torch Tossing"]="",
["Striking Back"]="",
["Summon Ahune"]="",

--Stranglethorn Fishing Extravaganza
['Apprentice Angler']="",
['Master Angler']="",
["Rare Fish - Brownell's Blue Striped Racer"]="",
['Rare Fish - Dezian Queenfish']="",
["Rare Fish - Keefer's Angelfish"]="",
--Kalu'ak Fishing Derby
['Better Luck Next Time']="",
["Kalu'ak Fishing Derby"]="",
}
end