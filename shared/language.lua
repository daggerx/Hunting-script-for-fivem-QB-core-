----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

-- Language
Language = {
    Targeting = {
        ['animalsicon'] = 'fas fa-utensils', -- Icon used by qb-target for skinning animals visit; https://fontawesome.com to change
        ['animalslabel'] = 'Skin Animal', -- Label used by qb-target for skinning animals
    },
	-- General
    Shared = {
        ['cancel'] = 'Action cancelled..', -- Notification
        ['returnmenu'] = 'Return', -- Menu header
        ['returnmenuicon'] = 'fa-solid fa-backward', -- Menu header icon
        ['exitmenu'] = 'Exit', -- Menu header
        ['exitmenuicon'] = 'fa-solid fa-circle-xmark' -- Menu header icon
    },
    Skinning = {
        ['noinvent'] = 'Looks like your pockets are full..', -- Notification
        ['norange'] = 'You are out of range.. move closer..', -- Notification
        ['skinning'] = 'Skinning Animal..', -- Progressbar
        ['noknife'] = 'You need a knife to skin this animal..', -- Notification
        ['skinned'] = 'You successfully skinned a animal!', -- Notification
        ['notdead'] = 'You cant skin animals that arent dead..' -- NotificationS
    },
    Stores = {
        Hunting = {
            ['huntingstorelabel'] = 'SA Hunting', -- Store label
            ['huntingstoreheader'] = 'SA Hunting', -- Menu header
            ['huntingstoreheadertext'] = 'Your one stop hunting shop!', -- Menu header text
            ['huntingstoreheadericon'] = 'fa-solid fa-campground', -- Menu header icon
            ['sellhidesheader'] = 'Sell Hides/Skins', -- Menu header
            ['sellhidesheadertext'] = 'Check the current prices of hides/skins!', -- Menu header text
            ['sellhidesheadericon'] = 'fa-solid fa-dollar-sign', -- Menu header icon
            ['openstoreheader'] = 'Open Store', -- Menu header
            ['openstoreheadertext'] = 'Purchase hunting gear.', --Menu header text
            ['openstoreheadericon'] = 'fa-solid fa-basket-shopping', --Menu header text
            ['nolicense'] = 'I cant sell you guns if you dont have a hunting license..', -- Notification
            ['haslicense'] = 'Hunting license validated!', -- Notification
            ['timer'] = 'My shift hasnt started yet. Come back later, between '..Config.Stores.Hunting.StartTime..' and '..Config.Stores.Hunting.EndTime..'..' -- Notification
        },
        Meat = {
            ['meatstoreheader'] = 'Sho Noodles', -- Menu header
            ['meatstoreheadertext'] = 'We buy meat! Any meat..', -- Menu header text
            ['meatstoreheadericon'] = 'fa-solid fa-campground', -- Menu header icon
            ['sellmeatsheader'] = 'Sell Meats', -- Menu header
            ['sellmeatsheadertext'] = 'Check the current meat prices!', -- Menu header text
            ['sellmeatsheadericon'] = 'fa-solid fa-dollar-sign', -- Menu header icon
            ['timer'] = 'We dont need anything right now. Come back later, between '..Config.Stores.Meat.StartTime..' and '..Config.Stores.Meat.EndTime..'..' -- Notification
        },
        Exotic = {
            ['eadheader'] = 'Exotic Animal Dealer', -- Menu header
            ['eadheadertext'] = 'Looking to offload some poached goods?', -- Menu header text
            ['eadheadericon'] = 'fab fa-drupal', -- Menu header icon
            ['sellmeatsheader'] = 'Sell Meats', -- Menu header
            ['sellmeatsheadertext'] = 'Check the current meat prices!', -- Menu header text
            ['sellmeatsheadericon'] = 'fa-solid fa-dollar-sign', -- Menu header icon
            ['sellhidesheader'] = 'Sell Hides/Skins', -- Menu header
            ['sellhidesheadertext'] = 'Check the current prices of hides/skins!', -- Menu header text
            ['sellhidesheadericon'] = 'fa-solid fa-dollar-sign', -- Menu header icon
            ['timer'] = 'My buyer doesnt need anything right now. Come back later, between '..Config.Stores.Exotic.StartTime..' and '..Config.Stores.Exotic.EndTime..'..' -- Notification
        },
        Selling = {
            ['skinheadericon'] = 'fa-solid fa-paw', -- Menu header icon
            ['ratskinheader'] = 'Rat Skin', -- Menu header
            ['ratskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_rat']..'', -- Menu header text
            ['rabbitskinheader'] = 'Rabbit Skin', -- Menu header
            ['rabbitskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_rabbit']..'', -- Menu header text
            ['pigskinheader'] = 'Pig Skin', -- Menu header
            ['pigskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_pig']..'', -- Menu header text
            ['cowskinheader'] = 'Cow Hide', -- Menu header
            ['cowskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_cow']..'', -- Menu header text
            ['deerskinheader'] = 'Deer Hide', -- Menu header
            ['deerskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_deer']..'', -- Menu header text
            ['boarskinheader'] = 'Boar Hide', -- Menu header
            ['boarskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_boar']..'', -- Menu header text
            ['coyoteskinheader'] = 'Coyote Hide', -- Menu header
            ['coyoteskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_coyote']..'', -- Menu header text
            ['mtlionskinheader'] = 'Mt.Lion Hide', -- Menu header
            ['mtlionskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_mtlion']..'', -- Menu header text
            ['stingrayskinheader'] = 'Stingray Skin', -- Menu header
            ['stingrayskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_stingray']..'', -- Menu header text
            ['dolphinskinheader'] = 'Dolphin Skin', -- Menu header
            ['dolphinskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_dolphin']..'', -- Menu header text
            ['sharkskinheader'] = 'Shark Skin', -- Menu header
            ['sharkskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_shark']..'', -- Menu header text
            ['whaleskinheader'] = 'Whale Skin', -- Menu header
            ['whaleskinheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['skin_whale']..'', -- Menu header text
            ['meatheadericon'] = 'fa-solid fa-bacon', -- Menu header icon
            ['ratmeatheader'] = 'Rat Meat', -- Menu header
            ['ratmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_rat']..'', -- Menu header text
            ['rabbitmeatheader'] = 'Rabbit Meat', -- Menu header
            ['rabbitmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_rabbit']..'', -- Menu header text
            ['chickenhawkmeatheader'] = 'Chickenhawk Meat', -- Menu header
            ['chickenhawkmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_chickenhawk']..'', -- Menu header text
            ['cormorantmeatheader'] = 'Cormorant Meat', -- Menu header
            ['cormorantmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_cormorant']..'', -- Menu header text
            ['chickenmeatheader'] = 'Chicken Meat', -- Menu header
            ['chickenmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_chicken']..'', -- Menu header text
            ['pigmeatheader'] = 'Pig Meat', -- Menu header
            ['pigmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_pig']..'', -- Menu header text
            ['cowmeatheader'] = 'Cow Meat', -- Menu header
            ['cowmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_cow']..'', -- Menu header text
            ['deermeatheader'] = 'Deer Meat', -- Menu header
            ['deermeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_deer']..'', -- Menu header text
            ['boarmeatheader'] = 'Boar Meat', -- Menu header
            ['boarmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_boar']..'', -- Menu header text
            ['coyotemeatheader'] = 'Coyote Meat', -- Menu header
            ['coyotemeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_coyote']..'', -- Menu header text
            ['mtlionmeatheader'] = 'Mt.Lion Meat', -- Menu header
            ['mtlionmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_mtlion']..'', -- Menu header text
            ['stingraymeatheader'] = 'Stingray Meat', -- Menu header
            ['stingraymeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_stingray']..'', -- Menu header text
            ['dolphinmeatheader'] = 'Dolphin Meat', -- Menu header
            ['dolphinmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_dolphin']..'', -- Menu header text
            ['sharkmeatheader'] = 'Shark Meat', -- Menu header
            ['sharkmeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_shark']..'', -- Menu header text
            ['whalemeatheader'] = 'Whale Meat', -- Menu header
            ['whalemeatheadertext'] = 'Price: $'..Config.Stores.Selling.Prices['meat_whale']..'', -- Menu header text
            ['noitems'] = 'Looks like you dont have anything to sell..' -- Notification
        }
    }
}