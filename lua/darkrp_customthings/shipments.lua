/*---------------------------------------------------------------------------
/*---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------*/
-- AMMO

    AddCustomShipment("Pistol ammo", {
        model = "models/Items/BoxSRounds.mdl", 
        entity = "m9k_ammo_pistol", 
        price = 400,
        amount = 10,
        separate = true, 
        pricesep = 50, 
        noship = false, 
        allowed = {TEAM_GUN},
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end,
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "Pistol Ammo", 

        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })

    AddCustomShipment("SMG ammo", {
        model = "models/Items/BoxsRounds.mdl", 
        entity = "m9k_ammo_smg", 
        price = 450,
        amount = 10,
        separate = true, 
        pricesep = 60, 
        noship = false, 
        allowed = {TEAM_GUN},
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end,
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "SMG Ammo", 

        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })

    AddCustomShipment("Assult rifle ammo", {
        model = "models/Items/BoxMRounds.mdl", 
        entity = "m9k_ammo_ar2", 
        price = 500,
        amount = 10,
        separate = true, 
        pricesep = 75, 
        noship = false, 
        allowed = {TEAM_GUN},
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end,
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "Assult rifle Ammo", 

        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })
    
    AddCustomShipment("Shotgun ammo", {
        model = "models/Items/BoxBuckshot.mdl", 
        entity = "m9k_ammo_buckshot", 
        price = 500,
        amount = 10,
        separate = true, 
        pricesep = 75, 
        noship = false, 
        allowed = {TEAM_GUN},
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end,
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "Shotgun Ammo", 

        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })
    
    AddCustomShipment("Sniper ammo", {
        model = "models/Items/sniper_round_box.mdl", 
        entity = "m9k_ammo_sniper_rounds", 
        price = 750,
        amount = 10,
        separate = true, 
        pricesep = 100, 
        noship = false, 
        allowed = {TEAM_GUN},
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end,
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "Sniper Ammo", 

        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })
    
    AddCustomShipment(".357 ammo", {
        model = "models/Items/357ammobox.mdl", 
        entity = "m9k_ammo_357", 
        price = 450,
        amount = 10,
        separate = true, 
        pricesep = 55, 
        noship = false, 
        allowed = {TEAM_GUN},
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end,
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = ".357 Ammo", 

        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })
    
    AddCustomShipment("winchester ammo", {
        model = "models/Items/sniper_round_box.mdl", 
        entity = "m9k_ammo_winchester", 
        price = 550,
        amount = 10,
        separate = true, 
        pricesep = 70, 
        noship = false, 
        allowed = {TEAM_GUN},
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end,
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "Winchester Ammo", 

        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })

-- PISTOLS
    AddCustomShipment("USP", {
        model = "models/weapons/w_pist_fokkususp.mdl", 
        entity = "m9k_usp", 
        price = 1750,
        amount = 10,
        separate = true, 
        pricesep = 200, 
        noship = false, 
        allowed = {TEAM_GUN},
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end,
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "USP", 

        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })

    AddCustomShipment("M92 Beretta", {
        model = "models/weapons/w_beretta_m92.mdl", 
        entity = "m9k_m92beretta", 
        price = 1500, 
        amount = 10, 
        separate = true, 
        pricesep = 175, 
        noship = false, 
        allowed = {TEAM_GUN}, 
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end, 
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "M92 Beretta", 
        
        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })

    AddCustomShipment("HK45C", {
        model = "models/weapons/w_hk45c.mdl", 
        entity = "m9k_hk45", 
        price = 1750, 
        amount = 10, 
        separate = true, 
        pricesep = 200, 
        noship = false, 
        allowed = {TEAM_GUN}, 
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end, 
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "HK45C", 
        
        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })

    AddCustomShipment("Glock 18", {
        model = "models/weapons/w_dmg_glock.mdl", 
        entity = "m9k_glock", 
        price = 2250, 
        amount = 10, 
        separate = true, 
        pricesep = 250, 
        noship = false, 
        allowed = {TEAM_GUN}, 
        shipmodel = "models/items/item_item_crate.mdl", 
        customCheck = function(ply) return ply:Frags() < 10 end, 
        weight = 15, 
        buttonColor = Color(255, 255, 255, 255), 
        label = "Glock 18", 
        
        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
    })

