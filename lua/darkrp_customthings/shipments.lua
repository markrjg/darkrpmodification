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
AddCustomShipment("USP", {
        model = "models/weapons/w_pist_fokkususp.mdl", -- The model of the item that hovers above the shipment
        entity = "m9k_usp", -- the entity that comes out of the shipment
        price = 1750, -- the price of one shipment
        amount = 10, -- how many of the item go in one purchased shipment
        separate = false, -- whether the item is sold separately (usually used for guns)
        pricesep = 150, -- the price of a separately sold item
        noship = false, -- whether this item has a shipment
        allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
        shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
        customCheck = function(ply) return ply:Frags() < 10 end, -- OPTIONAL, extra conditions before people can purchase the shipment or separate item
        weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Its a USP", -- Optional: the text on the button in the F4 menu

        shipmentClass = "spawned_shipment",
        onBought = function(ply, shipment, ent) end,
        getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.9 or price end,
})
