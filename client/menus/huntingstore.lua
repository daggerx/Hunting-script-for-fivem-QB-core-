----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.CoreSettings.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Main menu
local MainMenu = {
    {
        header = Language.Stores.Hunting['huntingstoreheader'],
        txt = Language.Stores.Hunting['huntingstoreheadertext'],
        icon = Language.Stores.Hunting['huntingstoreheadericon'],
        isMenuHeader = true
    },
    {
        header = Language.Stores.Hunting['sellhidesheader'],
        txt = Language.Stores.Hunting['sellhidesheadertext'],
        icon = Language.Stores.Hunting['sellhidesheadericon'],
        params = {
            event = 'boii-hunting:client:SellHidesMenu',
        }
    },
    {
        header = Language.Stores.Hunting['openstoreheader'],
        txt = Language.Stores.Hunting['openstoreheadertext'],
        icon = Language.Stores.Hunting['openstoreheadericon'],
        params = {
            event = 'boii-hunting:client:CheckLicense',
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

local SellMenu = {
    {
        header = Language.Stores.Hunting['sellhidesheader'],
        txt = Language.Stores.Hunting['sellhidesheadertext'],
        icon = Language.Stores.Hunting['sellhidesheadericon'],
        isMenuHeader = true
    },
    {	
        header = Language.Stores.Selling['ratskinheader'],
        txt = Language.Stores.Selling['ratskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 1
        }
    },
    {	
        header = Language.Stores.Selling['rabbitskinheader'],
        txt = Language.Stores.Selling['rabbitskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 2
        }
    },
    {
        header = Language.Stores.Selling['pigskinheader'],
        txt = Language.Stores.Selling['pigskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 3
        }
    },
    {
        header = Language.Stores.Selling['cowskinheader'],
        txt = Language.Stores.Selling['cowskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 4
        }
    },
    {
        header = Language.Stores.Selling['deerskinheader'],
        txt = Language.Stores.Selling['deerskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 5
        }
    },
    {
        header = Language.Stores.Selling['boarskinheader'],
        txt = Language.Stores.Selling['boarskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 6
        }
    },
    {
        header = Language.Stores.Selling['coyoteskinheader'],
        txt = Language.Stores.Selling['coyoteskinheadertext'],
        icon = Language.Stores.Selling['skinheadericon'],
        params = {
            event = 'boii-hunting:server:SellHides',
            isServer = true,
            args = 7
        }
    },
    --[[{ -- Uncomment this if you do not want to use the illegal dealer
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
    },]]
    {
        header = Language.Shared['returnmenu'],
        icon = Language.Shared['returnmenuicon'],
        params = {
            event = 'boii-hunting:client:HuntingStoreMain'
        }
    }
}

-- Events
-- Main menu
RegisterNetEvent('boii-hunting:client:HuntingStoreMain', function()
    if Config.Stores.Hunting.UseTimes == true then
        if GetClockHours() >= Config.Stores.Hunting.StartTime and GetClockHours() <= Config.Stores.Hunting.EndTime then 
            exports[MenuName]:openMenu(MainMenu)
        else 
            TriggerEvent('boii-hunting:notifications', Language.Stores.Hunting['timer'], 'error')
        end
    else
        exports[MenuName]:openMenu(MainMenu)
    end
end)
-- Selling menu
RegisterNetEvent('boii-hunting:client:SellHidesMenu', function()
    exports[MenuName]:openMenu(SellMenu)
end)