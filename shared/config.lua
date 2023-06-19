----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}
-- Core info settings you can ignore these if you have not edited any core functions in your city
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    TargetName = 'qb-target', -- The name of your third eye targeting. Default; qb-target
    MenuName = 'qb-menu', -- The name of your menu. Default; qb-menu
    AddStressEvent = 'hud:server:GainStress' -- Event to remove stress from player. Default; 'hud:server:GainStress'
}

-- Blips
Config.Blips = {
    UseBlips = true, -- Enables map blips
    Blips = { -- Blips for hunting stores
        {title='SA Hunting', colour=1, id=141, coords = vector3(-774.36, 5602.99, 34.31), scale = 0.6},
        {title='Sho Noodles', colour=1, id=141, coords = vector3(-639.31, -1251.77, 12.59), scale = 0.6}, 
        {title='Exotic Animal Dealer', colour=5, id=141, coords = vector3(-774.98, 26.88, 46.67), scale = 0.6} -- I would suggest not using a blip for illegal dealer :)
    } 
}

-- Hunting zones
Config.Zones = {
    UseZones = true, -- Enables map zones 
    Zones = { -- Hunting circle zones you can add more here. These zones are purely visual we use them entirely in RP they do not affect the script in anyway.
        {title='Hunting Zone', colour=5, id=141, coords = vector3(-1186.72, 3853.52, 489.94), scale = 0.6, zonecolour = 2, radius = 950.00},
        {title='Hunting Zone', colour=5, id=141, coords = vector3(772.84, 5461.14, 560.18), scale = 0.6, zonecolour = 2, radius = 950.00}
    }
}

-- Ped settings
Config.Peds = {
    {name = 'Dusty', coords = vector4(-776.04, 5603.13, 33.74, 256.42), hash = 0x45348DBB, model = 'mp_m_exarmy_01', scenario = 'WORLD_HUMAN_SMOKING', icon = 'fas fa-paw', label = 'Speak to Dusty', event = 'boii-hunting:client:HuntingStoreMain', distance = 1.0}, -- Hunting store ped/hide buyer
    {name = 'Sho', coords = vector4(-638.77, -1249.97, 11.81, 175.67), hash = 0x352A026F, model = 'g_m_m_korboss_01', scenario = 'WORLD_HUMAN_SMOKING', icon = 'fas fa-clipboard', label = 'Speak to Sho', event = 'boii-hunting:client:MeatStoreMain', distance = 1.0}, -- Meat buyer sho noodles
    {name = 'Gustavo', coords = vector4(-774.98, 26.88, 47.67, 164.42), hash = 0xB585B217, model = 'ig_gustavo', scenario = 'WORLD_HUMAN_SMOKING', icon = 'fab fa-drupal', label = 'Speak to Gustavo', event = 'boii-hunting:client:ExoticAnimalsMenu', distance = 1.0} -- Exotic animal dealer
}

-- Skinning settings
Config.Skinning = {
    Item = 'weapon_knife',
    Stress = math.random(1,4) -- Amount of stress gained by skinning animals
}

-- Weapon settings
Config.Weapons = {
    BlockPlayerFire = true,-- Enables shooting protection so players cannot kill other players with weapons listed below; true = enabled, false = disabled
    BlockedWeapons = { -- Blocked weapons list
        'weapon_musket',
        'weapon_sniperrifle',
        'weapon_heavysniperrifle'
    }
}

-- Store settings
Config.Stores = {
    Hunting = {
        UseTimes = true, -- Toggle time locks for hunting store; true = active; false = disabled
        StartTime = 10, -- Time to open hunting store
        EndTime = 18, -- Time to close hunting store
        UseLicense = true, -- Enable/disable use of license if disabled License store will be used only
        NoLicense = { -- Accessed without hunting license
            [1] = { name = 'weapon_knife',          price = 1,    amount = 10, info = {}, type = 'item', slot = 1 },
        },
        License = { -- Accessed with hunting license **DO NOT SET AMOUNT HIGHER THAN 1 FOR WEAPONS OR YOU WILL DUPLICATE SERIAL NUMBERS**
            [1] = { name = 'weapon_knife',          price = 100,    amount = 5, info = {}, type = 'item', slot = 1, isgun = false },
            [2] = { name = 'pistol_ammo',           price = 225,    amount = 5, info = {}, type = 'item', slot = 2, isgun = false },
            [3] = { name = 'shotgun_ammo',          price = 350,    amount = 5, info = {}, type = 'item', slot = 3, isgun = false },
            [4] = { name = 'snp_ammo',              price = 550,    amount = 5, info = {}, type = 'item', slot = 4, isgun = false },
            [5] = { name = 'weapon_snspistol',      price = 3500,   amount = 1, info = {}, type = 'item', slot = 5, isgun = true },
            [6] = { name = 'weapon_pistol',         price = 4500,   amount = 1, info = {}, type = 'item', slot = 6, isgun = true },
            [7] = { name = 'weapon_musket',         price = 33500,  amount = 1, info = {}, type = 'item', slot = 7, isgun = true },
            [8] = { name = 'weapon_sniperrifle',    price = 42500,  amount = 1, info = {}, type = 'item', slot = 8, isgun = true },    
        }
    },
    Meat = {
        UseTimes = true, -- Toggle time locks for meat store; true = active; false = disabled
        StartTime = 10, -- Time to open meat store
        EndTime = 18 -- Time to close meat store
    },
    Exotic = {
        UseTimes = true, -- Toggle time locks for exotic store; true = active; false = disabled
        StartTime = 10, -- Time to open exotic store
        EndTime = 18 -- Time to close exotic store
    },
    Selling = {
        MoneyType = 'cash', -- Money type rewarded for selling; 'cash', 'bank', 'crypto' etc...
        Prices = {
            ['skin_rat'] = 2,
            ['skin_rabbit'] = 5,
            ['skin_pig'] = 10,
            ['skin_cow'] = 10,
            ['skin_deer'] = 15,
            ['skin_boar'] = 30,
            ['skin_coyote'] = 50,
            ['skin_mtlion'] = 80,
            ['skin_stingray'] = 120,
            ['skin_dolphin'] = 150,
            ['skin_shark'] = 200,
            ['skin_whale'] = 285,
            ['meat_rat'] = 2,
            ['meat_rabbit'] = 3,
            ['meat_chickenhawk'] = 10,
            ['meat_cormorant'] = 5,
            ['meat_chicken'] = 2,
            ['meat_pig'] = 2,
            ['meat_cow'] = 5,
            ['meat_deer'] = 10,
            ['meat_boar'] = 10,
            ['meat_coyote'] = 15,
            ['meat_mtlion'] = 25,
            ['meat_stingray'] = 40,
            ['meat_dolphin'] = 65,
            ['meat_shark'] = 100,
            ['meat_whale'] = 120
        }
    } 
}

-- Animal settings
Config.Animals = {
    sharkhammer = {
        animalhash = GetHashKey('a_c_sharkhammer'), -- Animal ped hash
        skinningtime = math.random(7500,12500), -- Time taken to skin animal
        items = {
            {
                item = 'skin_shark', -- Item to reward
                min = 1, -- Min amount to reward
                max = 6, -- Max amount to reward
            },
            {
                item = 'meat_shark', -- Item to reward
                min = 1, -- Min amount to reward
                max = 3, -- Max amount to reward
            },
        },
    },
	sharktiger = {
        animalhash = GetHashKey('a_c_sharktiger'), 
        skinningtime = math.random(7500,12500),
        items = {
            {
                item = 'skin_shark',
                min = 1,
                max = 6,
            },
            {
                item = 'meat_shark',
                min = 1,
                max = 3,
            },
        },
    },
    killerwhale = { 
        animalhash = GetHashKey('a_c_killerwhale'), 
        skinningtime = math.random(10500,17500),
        items = {
            {
                item = 'skin_whale',
                min = 1,
                max = 8,
            },
            {
                item = 'meat_whale',
                min = 1,
                max = 8,
            },
        },
    },
	humpback = {
        animalhash = GetHashKey('a_c_humpback'), 
        skinningtime = math.random(10500,17500),
        items = {
            {
                item = 'skin_whale',
                min = 1,
                max = 11,
            },
            {
                item = 'meat_whale',
                min = 1,
                max = 11,
            },
        },
    },
	stingray = { 
        animalhash = GetHashKey('a_c_stingray'), 
        skinningtime = math.random(6500,10500),
        items = {
            {
                item = 'skin_stingray',
                min = 1,
                max = 5,
            },
            {
                item = 'meat_stingray',
                min = 1,
                max = 3,
            },
        },
    },
	dolphin = { 
        animalhash = GetHashKey('a_c_dolphin'), 
        skinningtime = math.random(6500,10500),
        items = {
            {
                item = 'skin_dolphin',
                min = 1,
                max = 2,
            },
            {
                item = 'meat_dolphin',
                min = 1,
                max = 2,
            },
        },
    },
	boar = {
        animalhash = GetHashKey('a_c_boar'), 
        skinningtime = math.random(4500,8500),
        items           = {
            {
                item = 'skin_boar',
                min = 1,
                max = 5,
            },
            {
                item = 'meat_boar',
                min = 1,
                max = 3,
            },
        },
    },
    chickenhawk = {
        animalhash = GetHashKey('a_c_chickenhawk'),
        skinningtime = math.random(3500,6750),
        items = {
            {
                item = 'meat_chickenhawk',
                min = 1,
                max = 3,
            },
        },
    },
    cormorant = {
        animalhash = GetHashKey('a_c_cormorant'), 
        skinningtime = math.random(4000,7000),
        items = {
            {
                item = 'meat_cormorant',
                min = 1,
                max = 3,
            },
        },
    },
	chicken = { 
        animalhash = GetHashKey('a_c_hen'),
        skinningtime = math.random(3500,5850),
        items = {
			{
                item = 'meat_chicken',
                min = 1,
                max = 3,
            },
        },
    },
    coyote = {
        animalhash = GetHashKey('a_c_coyote'),
        skinningtime = math.random(4500,9500),
        items = {
            {
                item = 'skin_coyote',
                min = 1,
                max = 3,
            },
            {
                item = 'meat_coyote',
                min = 1,
                max = 2,
            },
        },
    },
    deer = {
        animalhash = GetHashKey('a_c_deer'), 
        skinningtime = math.random(4200,9900), 
        items = {
            {
                item = 'skin_deer',
                min = 1,
                max = 3,
            },
            {
                item = 'meat_deer',
                min = 1,
                max = 3,
            },
        },
    },
    mtlion = {
        animalhash = GetHashKey('a_c_mtlion'), 
        skinningtime = math.random(6500,10500),
        items = {
            {
                item = 'skin_mtlion',
                min = 1,
                max = 2,
            },
            {
                item = 'meat_mtlion',
                min = 1,
                max = 3,
            },
        },
    },
    rabbit = { 
        animalhash = GetHashKey('a_c_rabbit_01'),
        skinningtime = math.random(4500,6500),
        items = {
            {
                item = 'skin_rabbit',
                min = 1,
                max = 1,
            },
			{
                item = 'meat_rabbit',
                min = 1,
                max = 3,
            },
        },
    },
	cow = {
        animalhash = GetHashKey('a_c_cow'),
        skinningtime = math.random(4500,7500),
        items = {
            {
                item = 'skin_cow',
                min = 1,
                max = 3,
            },
			{
                item = 'meat_cow',
                min = 1,
                max = 3,
            },
        },
    },
	rat = {
        animalhash = GetHashKey('a_c_rat'),
        skinningtime = math.random(4500,5500),
        items = {
            {
                item = 'skin_rat',
                min = 1,
                max = 1,
            },
			{
                item = 'meat_rat',
                min = 1,
                max = 2,
            },
        },
    }
}