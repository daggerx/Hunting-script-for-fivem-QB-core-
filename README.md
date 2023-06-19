# Hunting-script-for-fivem-QB-core-
This script create hunting job in your server .
### INSTALL ###

1) Customise `config.lua` to your liking
2) Drag and drop `boii-hunting` into your server resources ensureing any requirements first
3) Insert item information provided into your `qb-core/shared/items.lua`
4) Insert images provided into your `qb-inventory/html/images`
5) If you want to use a hunting license then follow the information provided on how to add the hunting license into your city and make it so police can grant
6) Use the additional file `spawnmoreanimals.lua` at your own risk, this will force spawn a lot of extra animals. This is not required for the scrip to run.
### USAGE ###

- Hunt native spawning animals (or use the file provided to spawn more, use with caution as adds (ms) to script)
- Target dead animals with third-eye
- Must have a knife to skin animals
- Hunting store; buys hides and sells hunting equipment
- Meat vendor; buys meats back from citizens
- Exotic animal dealer; buys all illegal items (remove this if you do not wish to use)

### REQUIREMENTS **ALL REQUIREMENTS ARE QBCORE STANDARD YOU SHOULD ALREADY HAVE THEM ALL** ###

QB-CORE -- https://github.com/qbcore-framework/qb-core
QB-TARGET -- https://github.com/BerkieBb/qb-target
PROGRESSBAR -- https://github.com/qbcore-framework/progressbar
QB-CITYHALL -- https://github.com/qbcore-framework/qb-cityhall
QB-POLICEJOB -- https://github.com/qbcore-framework/qb-policejob
### HOW TO ADD HUNTING LICENSE ###

1) `QB-POLICEJOB/SERVER/MAIN.LUA` search for `if args[2] == "driver" or args[2] == "weapon" then` and replace with the line below. 

	if args[2] == "driver" or args[2] == "weapon" or args[2] == "hunting" then
	
2) `QB-POLICEJOB/LOCALE/"YOURLANGUAGE".LUA` search for `license_type = 'License Type (driver/weapon)',` and replace with the line below.

	license_type = 'License Type (driver/weapon/hunting)', -- Edited for hunting

3) `QB-CITYHALL/CONFIG.LUA` under `Config.Cityhalls` insert the following; 

	["huntinglicense"] = {
        label = "Hunting License",
		cost = 50,
		metadata = "hunting"
    },

4) `QB-CITYHALL/SERVER/MAIN.LUA` search for `qb-cityhall:server:requestId` and insert the following code below weapons license (around line: 66)

	elseif item == "huntinglicense" then -- added for hunting
		info.citizenid = Player.PlayerData.citizenid
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
		info.gender = Player.PlayerData.charinfo.gender

5) `QB-CITYHALL/LOCALE/"YOURLANGUAGE".LUA` under info search insert the following;

	huntinglicense = 'Hunting License', -- added for hunting

6) `QB-INVENTORY/HTML/JS/APP.JS` insert the code below onto `LINE:444`

} else if (itemData.name == "huntinglicence") {
            var gender = "Man";
            if (itemData.info.gender == 1) {
                gender = "Woman";
            }
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>CSN: </strong><span>" +
                itemData.info.citizenid +
                "</span></p><p><strong>First Name: </strong><span>" +
                itemData.info.firstname +
                "</span></p><p><strong>Last Name: </strong><span>" +
                itemData.info.lastname +
                "</span></p><p><strong>Birth Date: </strong><span>" +
                itemData.info.birthdate +
                "</span></p><p><strong>Gender: </strong><span>" +
                gender +
                "</span></p>"
            );

7) `QB-CORE/SERVER/PLAYER.LUA` search for PlayerData.metadata['licences'] and add the following; 

	['hunting'] = false
	
### SHARED.LUA ###

-- Hunting
	["skin_shark"]         	     = {["name"] = "skin_shark",         		["label"] = "Shark Skin",    			["weight"] = 1750,      ["type"] = "item",      ["image"] = "skin_shark.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Shark skin. Highly illegal!"},
	["skin_dolphin"]             = {["name"] = "skin_dolphin",         		["label"] = "Dolphin Skin",    			["weight"] = 850,       ["type"] = "item",      ["image"] = "skin_dolphin.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Dolphin skin. Highly illegal!"},
	["skin_stingray"]         	 = {["name"] = "skin_stingray",         	["label"] = "Stingray Skin",    		["weight"] = 850,       ["type"] = "item",      ["image"] = "skin_stingray.png",     	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Stingray skin. Highly illegal!"},
	["skin_mtlion"]         	 = {["name"] = "skin_mtlion",         		["label"] = "Mt Lion Hide",    			["weight"] = 1050,      ["type"] = "item",      ["image"] = "skin_mtlion.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Mt. Lion hide. Highly illegal!"},
	["skin_coyote"]         	 = {["name"] = "skin_coyote",         		["label"] = "Coyote Hide",    			["weight"] = 750,       ["type"] = "item",      ["image"] = "skin_coyote.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Coyote hide."},
	["skin_deer"]         		 = {["name"] = "skin_deer",         		["label"] = "Deer Hide",    			["weight"] = 950,       ["type"] = "item",      ["image"] = "skin_deer.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Deer hide."},
	["skin_cow"]         	 	 = {["name"] = "skin_cow",         			["label"] = "Cow Hide",    				["weight"] = 1250,      ["type"] = "item",      ["image"] = "skin_cow.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cow hide."},
	["skin_boar"]         	 	 = {["name"] = "skin_boar",         		["label"] = "Boar Hide",    			["weight"] = 1250,      ["type"] = "item",      ["image"] = "skin_boar.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Boar hide."},
	["skin_pig"]         	 	 = {["name"] = "skin_pig",         			["label"] = "Pig Skin",    				["weight"] = 850,       ["type"] = "item",      ["image"] = "skin_pig.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Pig skin."},
	["skin_rabbit"]         	 = {["name"] = "skin_rabbit",         		["label"] = "Rabbit Hide",    			["weight"] = 550,       ["type"] = "item",      ["image"] = "skin_rabbit.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Rabbit hide."},
	["skin_rat"]         	 	 = {["name"] = "skin_rat",         			["label"] = "Rat Hide",    				["weight"] = 150,       ["type"] = "item",      ["image"] = "skin_rat.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Rat hide."},
	["skin_whale"]         		 = {["name"] = "skin_whale",         		["label"] = "Whale Skin",    			["weight"] = 7500,      ["type"] = "item",      ["image"] = "skin_whale.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Whale skin. Highly illegal"},
	["meat_shark"]         	     = {["name"] = "meat_shark",         		["label"] = "Shark Meat",   	   	    ["weight"] = 1200,      ["type"] = "item",      ["image"] = "meat_shark.png",     		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Shark meat!"},
	["meat_stingray"]            = {["name"] = "meat_stingray",         	["label"] = "Stingray Meat",    		["weight"] = 700,       ["type"] = "item",      ["image"] = "meat_stingray.png",        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Stingray meat!"},
	["meat_dolphin"]             = {["name"] = "meat_dolphin",         		["label"] = "Dolphin Meat",    			["weight"] = 850,       ["type"] = "item",      ["image"] = "meat_dolphin.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Dolphin meat!"},
	["meat_whale"]         		 = {["name"] = "meat_whale",         		["label"] = "Whale Meat",    			["weight"] = 6000,      ["type"] = "item",      ["image"] = "meat_whale.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Whale meat!"},
	["meat_boar"]            	 = {["name"] = "meat_boar",         		["label"] = "Boar Meat",    			["weight"] = 700,       ["type"] = "item",      ["image"] = "meat_boar.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Boar meat!"},
	["meat_chickenhawk"]         = {["name"] = "meat_chickenhawk",         	["label"] = "Chickenhawk Meat",    		["weight"] = 400,       ["type"] = "item",      ["image"] = "meat_chickenhawk.png",     ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Chickenhawk meat!"},
	["meat_cormorant"]           = {["name"] = "meat_cormorant",         	["label"] = "Cormorant Meat",    		["weight"] = 400,       ["type"] = "item",      ["image"] = "meat_cormorant.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cormorant meat!"},
	["meat_coyote"]              = {["name"] = "meat_coyote",         	    ["label"] = "Coyote Meat",    			["weight"] = 700,       ["type"] = "item",      ["image"] = "meat_coyote.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Coyote meat!"},
	["meat_deer"]            	 = {["name"] = "meat_deer",         	    ["label"] = "Venison",    				["weight"] = 850,       ["type"] = "item",      ["image"] = "meat_deer.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Deer meat!"},
	["meat_mtlion"]            	 = {["name"] = "meat_mtlion",         		["label"] = "Mt Lion Meat",    			["weight"] = 1000,      ["type"] = "item",      ["image"] = "meat_mtlion.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Mt Lion meat!"},
	["meat_rabbit"]              = {["name"] = "meat_rabbit",         		["label"] = "Rabbit Meat",    			["weight"] = 700,       ["type"] = "item",      ["image"] = "meat_rabbit.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Rabbit meat!"},
	["meat_cow"]            	 = {["name"] = "meat_cow",         			["label"] = "Beef Meat",    			["weight"] = 1000,      ["type"] = "item",      ["image"] = "meat_cow.png",        		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cow meat!"},
	["meat_pig"]            	 = {["name"] = "meat_pig",         			["label"] = "Pork Meat",    			["weight"] = 750,       ["type"] = "item",      ["image"] = "meat_pig.png",        		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Pig meat!"},
	["meat_chicken"]             = {["name"] = "meat_chicken",         		["label"] = "Chicken Meat",    			["weight"] = 700,       ["type"] = "item",      ["image"] = "meat_chicken.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Chicken meat!"},
	["meat_rat"]            	 = {["name"] = "meat_rat",         		 	["label"] = "Rat Meat",    				["weight"] = 200,       ["type"] = "item",      ["image"] = "meat_rat.png",        		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Rat meat!"},
	["huntinglicense"] 			 = {["name"] = "huntinglicense", 			["label"] = "Hunting License", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "huntinglicense.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Permit to show officals that you can legally hunt."},
