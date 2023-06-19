----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.CoreSettings.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Main menu
local MainMenu = {
    {
        header = Language.Stores.Meat['meatstoreheader'],
        txt = Language.Stores.Meat['meatstoreheadertext'],
        icon = Language.Stores.Meat['meatstoreheadericon'],
        isMenuHeader = true
    },
    {
        header = Language.Stores.Meat['sellmeatsheader'],
        txt = Language.Stores.Meat['sellmeatsheadertext'],
        icon = Language.Stores.Meat['sellmeatsheadericon'],
        params = {
            event = 'boii-hunting:client:SellMeatsMenu',
        }
    },
    {
        header = Language.Shared['exitmenu'],
        icon = Language.Shared['exitmenuicon'],
        params = {
            event = 'boii-hunting:client:StopMenu'
        }
    },
}

-- Selling menu
local SellMenu = {
    {
        header = Language.Stores.Meat['meatstoreheader'],
        txt = Language.Stores.Meat['meatstoreheadertext'],
        icon = Language.Stores.Meat['meatstoreheadericon'],
        isMenuHeader = true
    },
    {
        header = Language.Stores.Selling['ratmeatheader'],
        txt = Language.Stores.Selling['ratmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 1
        }
    },
    {
        header = Language.Stores.Selling['rabbitmeatheader'],
        txt = Language.Stores.Selling['rabbitmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 2
        }
    },
    {
        header = Language.Stores.Selling['chickenhawkmeatheader'],
        txt = Language.Stores.Selling['chickenhawkmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 3
        }
    },
    {
        header = Language.Stores.Selling['cormorantmeatheader'],
        txt = Language.Stores.Selling['cormorantmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 4
        }
    },
    {
        header = Language.Stores.Selling['chickenmeatheader'],
        txt = Language.Stores.Selling['chickenmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 5
        }
    },
    {
        header = Language.Stores.Selling['pigmeatheader'],
        txt = Language.Stores.Selling['pigmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 6
        }
    },
    {
        header = Language.Stores.Selling['cowmeatheader'],
        txt = Language.Stores.Selling['cowmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 7
        }
    },
    {
        header = Language.Stores.Selling['deermeatheader'],
        txt = Language.Stores.Selling['deermeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 8
        }
    },
    {
        header = Language.Stores.Selling['boarmeatheader'],
        txt = Language.Stores.Selling['boarmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 9
        }
    },
    {
        header = Language.Stores.Selling['coyotemeatheader'],
        txt = Language.Stores.Selling['coyotemeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 10
        }
    },
    --[[{ -- Uncomment this if you do not want to use illegal dealer
        header = Language.Stores.Selling['mtlionmeatheader'],
        txt = Language.Stores.Selling['mtlionmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 11
        }
    },
    {
        header = Language.Stores.Selling['stingraymeatheader'],
        txt = Language.Stores.Selling['stingraymeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 12
        }
    },
    {
        header = Language.Stores.Selling['dolphinmeatheader'],
        txt = Language.Stores.Selling['dolphinmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 13
        }
    },
    {
        header = Language.Stores.Selling['sharkmeatheader'],
        txt = Language.Stores.Selling['sharkmeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 14
        }
    },
    {
        header = Language.Stores.Selling['whalemeatheader'],
        txt = Language.Stores.Selling['whalemeatheadertext'],
        icon = Language.Stores.Selling['meatheadericon'],
        params = {
            event = 'boii-hunting:server:SellMeats',
            isServer = true,
            args = 15
        }
    },]]
    {
        header = Language.Shared['returnmenu'],
        icon = Language.Shared['returnmenuicon'],
        params = {
            event = 'boii-hunting:client:MeatStoreMain'
        }
    },
}

-- Events
-- Main menu
RegisterNetEvent('boii-hunting:client:MeatStoreMain', function()
    if Config.Stores.Meat.UseTimes == true then
        if GetClockHours() >= Config.Stores.Meat.StartTime and GetClockHours() <= Config.Stores.Meat.EndTime then 
            exports[MenuName]:openMenu(MainMenu)
        else 
            TriggerEvent('boii-hunting:notifications', Language.Stores.Meat['timer'], 'error')
        end
    else
        exports[MenuName]:openMenu(MainMenu)
    end
end)
-- Selling menu
RegisterNetEvent('boii-hunting:client:SellMeatsMenu', function()
    exports[MenuName]:openMenu(SellMenu)
end)