/*---------------------------------------------------------------------------
/*---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------*/

     TEAM_ADMIN = DarkRP.createJob("Admin On Duty", {
        color = Color(255, 0, 0, 255),
        model = "models/player/combine_super_soldier.mdl",
        description = [[Your an admin on duty, You know what to do, Dont abuse!]],
        weapons = {"arrest_stick", "unarrest_stick", "m9k_deagle", "stunstick", "door_ram", "weaponchecker"},
        command = "admin",
        max = 4,
        salary = 0,
        admin = 1,
        vote = false,
        hasLicense = true,
     })
     
     TEAM_THIEF = DarkRP.createJob("Thief", {
        color = Color(80, 80, 80, 255),
        model = "models/player/arctic.mdl",
        description = [[You are a thief, You should use your skills to steal peoples valubles, or sell your skills for other purposes]],
        weapons = {"lockpick","door_ram"},
        command = "thief",
        max = 3,
        salary = 50,
        admin = 0,
        vote = false,
        hasLicense = false,
     })

     TEAM_SWAT = DarkRP.createJob("SWAT", {
        color = Color(0,0, 139, 255),
        model = "models/player/swat.mdl",
        description = [[your duty is for heavy strikes when needed. You should stay in the PD until backup is needed.
                Do everything you can to keep the city safe.]],
        weapons = {"arrest_stick", "unarrest_stick", "m9k_m4a1", "m9k_usp", "m9k_mp5", "stunstick", "door_ram", "weaponchecker"},
        command = "swat",
        max = 3,
        salary = 100,
        admin = 0,
        vote = true,
        hasLicense = true,
     })
     
     TEAM_SWAT_LEADER = DarkRP.createJob("SWAT leader", {
        color = Color(25, 25, 112, 255),
        model = "models/player/gasmask.mdl",
        description = [[your duty is for heavy strikes when needed. You should stay in the PD until backup is needed.
                Do everything you can to keep the city safe.]],
        weapons = {"arrest_stick", "unarrest_stick", "m9k_m4a1", "m9k_usp", "m9k_mp5", "m9k_m98b, "stunstick", "door_ram", "weaponchecker"},
        command = "swatleader",
        max = 1,
        salary = 125,
        admin = 0,
        vote = true,
        hasLicense = true,
        NeedToChangeFrom = TEAM_SWAT,
     })
     
     TEAM_BLACK_MARKET_DEALER = DarkRP.createJob("Black Market Dealer", {
        color = Color(41, 41, 41, 255),
        model = "models/player/ekli.mdl",
        description = [[You are to sell illegal goods to the mob and thieves to aid them in their ventures.]],
        weapons = {},
        command = "blackmarketdealer",
        max = 2,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
     })
     
     TEAM_HITMAN = DarkRP.createJob("Hitman", {
        color = Color(66, 0, 110, 255),
        model = "models/player/leet.mdl",
        description = [[You are a hitman. You kill people for money. Do not kill randomly.]],
        weapons = {"m9k_model500"},
        command = "hitman",
        max = 2,
        salary = 30,
        admin = 0,
        vote = true,
        hasLicense = false,
     })
     
     TEAM_POLICE = DarkRP.createJob("Civil Protection", {
        color = Color(25, 25, 170, 255),
        model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
        description = [[The protector of every citizen that lives in the city.
                You have the power to arrest criminals and protect innocents.
                Hit a player with your arrest baton to put them in jail.
                Bash a player with a stunstick and they may learn to obey the law.
                The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
                The Battering Ram can also unfreeze frozen props (if enabled).
                Type /wanted <name> to alert the public to the presence of a criminal.]],
        weapons = {"arrest_stick", "unarrest_stick", "m9k_m92beretta", "stunstick", "door_ram", "weaponchecker"},
        command = "cp",
        max = 9,
        salary = 75,
        admin = 0,
        vote = true,
        hasLicense = true
     })

     TEAM_CHIEF = DarkRP.createJob("Civil Protection Chief", {
        color = Color(20, 20, 255, 255),
        model = "models/player/combine_soldier_prisonguard.mdl",
        description = [[The Chief is the leader of the Civil Protection unit.
                Coordinate the police force to enforce law in the city.
                Hit a player with arrest baton to put them in jail.
                Bash a player with a stunstick and they may learn to obey the law.
                The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
                Type /wanted <name> to alert the public to the presence of a criminal.
                Type /jailpos to set the Jail Position]],
        weapons = {"arrest_stick", "unarrest_stick", "m9k_deagle", "stunstick", "door_ram", "weaponchecker"},
        command = "chief",
        max = 1,
        salary = 90,
        admin = 0,
        vote = false,
        hasLicense = true,
        chief = true,
        NeedToChangeFrom = TEAM_POLICE
     })




/*---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------*/
GAMEMODE.DefaultTeam = TEAM_CITIZEN


/*---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------*/
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
	[TEAM_SWAT] = true,
	[TEAM_SWAT_LEADER] = true,
}

/*---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------*/
DarkRP.addHitmanTeam(TEAM_HITMAN)
