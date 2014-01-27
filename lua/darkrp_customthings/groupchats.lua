--[[
-- Group Chats
GAMEMODE:AddGroupChat(List of team variables separated by comma)
GAMEMODE:AddGroupChat(a function with ply as argument that returns whether a random player is in one chat group)
--]]
-- Example: GAMEMODE:AddGroupChat(TEAM_MOB, TEAM_GANG)
-- Example: GAMEMODE:AddGroupChat(function(ply) return ply:isCP() end)

--Gangmember group chat
GAMEMODE:AddGroupChat(TEAM_MOB, TEAM_GANG)
--CP (mayor, cp, cp_chief, swat, swat_leader) group chat.
GAMEMODE:AddGroupChat(function(ply) return ply:isCP() end)
