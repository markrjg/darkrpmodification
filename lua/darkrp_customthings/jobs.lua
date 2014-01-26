--[[
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
--]]
     TEAM_ADMIN = DarkRP.createJob("Admin On Duty", {
        color = Color(255, 0, 0, 255),
        model = "models/player/combine_super_soldier.mdl",
        description = [[Your an admin on duty, You know what to do, Dont abuse!]],
        weapons = {"arrest_stick", "unarrest_stick", "m9k_mossberg950", "stunstick", "door_ram", "weaponchecker"},
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
        description = [[Your duty is for heavy strikes when needed. You should stay in the PD until backup is needed. Do everything you can to keep the city safe.]],
        weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "weapon_ak472", "ls_sniper", "weapon_m42", "weapon_mp52", "stunstick", "door_ram", "weaponchecker"},
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
        description = [[Your duty is for heavy strikes when needed. You should stay in the PD until backup is needed. Do everything you can to keep the city safe.]],
        weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "weapon_ak472", "ls_sniper", "weapon_m42", "weapon_mp52", "stunstick", "door_ram", "weaponchecker"},
        command = "swatleader",
        max = 1,
        salary = 125,
        admin = 0,
        vote = true,
        hasLicense = true,
     })
     
     TEAM_BLACK_MARKET_DEALER = DarkRP.createJob("Black Market Dealer", {
        color = Color(41, 41, 41, 255),
        model = "models/player/eli.mdl",
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
        model = "models/player/pheonix.mdl",
        description = [[You are hired to kill people for money. Dont kill random people.]],
        weapons = {"ls_sniper"},
        command = "hitman",
        max = 2,
        salary = 30,
        admin = 0,
        vote = true,
        hasLicense = false,
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
