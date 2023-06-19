----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.CoreSettings.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

local MainMenu = {
    {
        header = Language.Stores.Exotic['eadheader'],
        txt = Language.Stores.Exotic['eadheadertext'],
        icon = Language.Stores.Exotic['eadheadericon'],
        isMenuHeader = true
    },
    {
        header = Language.Stores.Exotic['sellhidesheader'],
        txt = Language.Stores.Exotic['sellhidesheadertext'],
        icon = Language.Stores.Exotic['sellhidesheadericon'],
        params = {
            event = 'boii-hunting:client:ExoticSellMenus',
            args = 1
        }
    },
    {
        header = Language.Stores.Exotic['sellmeatsheader'],
        txt = Language.Stores.Exotic['sellmeatsheadertext'],
        icon = Language.Stores.Exotic['sellmeatsheadericon'],
        params = {
            event = 'boii-hunting:client:ExoticSellMenus',
            args = 2
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

local HideMenu = {
    {
        header = Language.Stores.Exotic['eadheader'],
        txt = Language.Stores.Exotic['eadheadertext'],
        icon = Language.Stores.Exotic['eadheadericon'],
        isMenuHeader = true
    },
    {
        header = Language.Stores.Selling['mtlionskinheader'],
        txt = Language.Stores.Selling['mtlionskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 8
        }
    },
    {
        header = Language.Stores.Selling['stingrayskinheader'],
        txt = Language.Stores.Selling['stingrayskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 9
        }
    },
    {
        header = Language.Stores.Selling['dolphinskinheader'],
        txt = Language.Stores.Selling['dolphinskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 10
        }
    },
    {
        header = Language.Stores.Selling['sharkskinheader'],
        txt = Language.Stores.Selling['sharkskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 11
        }
    },
    {
        header = Language.Stores.Selling['whaleskinheader'],
        txt = Language.Stores.Selling['whaleskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 12
        }
    },
    {
        header = Language.Shared['returnmenu'],
        icon = Language.Shared['returnmenuicon'],
        params = {
            event = 'boii-hunting:client:ExoticAnimalsMenu'
        }
    },
}

-- Sell meats menu
local MeatMenu = {
    {
        eader = Language.Stores.Exotic['eadheader'],
        txt = Language.Stores.Exotic['eadheadertext'],
        icon = Language.Stores.Exotic['eadheadericon'],
        isMenuHeader = true
    },
    {
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
    },
    {
        header = Language.Shared['returnmenu'],
        icon = Language.Shared['returnmenuicon'],
        params = {
            event = 'boii-hunting:client:ExoticAnimalsMenu'
        }
    },
}

-- Events
-- Main menu
RegisterNetEvent('boii-hunting:client:ExoticAnimalsMenu', function()
    if Config.Stores.Exotic.UseTimes == true then
        if GetClockHours() >= Config.Stores.Exotic.StartTime and GetClockHours() <= Config.Stores.Exotic.EndTime then 
            exports[MenuName]:openMenu(MainMenu)
        else 
            TriggerEvent('boii-hunting:notifications', Language.Stores.Exotic['timer'], 'error')
        end
    else
        exports[MenuName]:openMenu(MainMenu)
    end
end)

 -- Selling menus
RegisterNetEvent('boii-hunting:client:ExoticSellMenus', function(args)
    local args = tonumber(args)
    if args == 1 then
        exports[MenuName]:openMenu(HideMenu)
    elseif args == 2 then
        exports[MenuName]:openMenu(MeatMenu)
    end
end)