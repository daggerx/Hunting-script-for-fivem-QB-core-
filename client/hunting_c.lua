----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local TargetName = Config.CoreSettings.TargetName
local MenuName = Config.CoreSettings.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- NOTIFICATIONS CODE START --<!>--
RegisterNetEvent('boii-hunting:notifications')
AddEventHandler('boii-hunting:notifications', function(msg, type)
    Core.Functions.Notify(msg,type)
end)
--<!>-- NOTIFICATIONS CODE END --<!>--

--<!>-- SPAWN PEDS START --<!>--
--<!>-- PEDS START --<!>--
CreateThread(function()
    for k, v in pairs(Config.Peds) do
        RequestModel(GetHashKey(v.model))
        while not HasModelLoaded(GetHashKey(v.model)) do
            Wait(1)
        end
        huntingpeds = CreatePed(0, v.hash, v['coords'].x, v['coords'].y, v['coords'].z-1, v['coords'].w, false, false)
        FreezeEntityPosition(huntingpeds, true)
        SetEntityInvincible(huntingpeds, true)
        SetBlockingOfNonTemporaryEvents(huntingpeds, true)
        TaskStartScenarioInPlace(huntingpeds, v.scenario, 0, true)
        exports[TargetName]:AddTargetModel(v.model, {
            options = {
                {   
                    icon = v.icon,
                    label = v.label,
                    event = v.event,
                    canInteract = function(entity)
                        if IsPedDeadOrDying(entity, true) or IsPedAPlayer(entity) or IsPedInAnyVehicle(PlayerPedId()) then return false end
                        return true
                    end,    
                },
            },
            distance = v.distance
        })
    end
end)
--<!>-- PEDS END --<!>--

--<!>-- ANIMALS TARGETING START --<!>--
local Animals = {
	'a_c_deer',
	'a_c_boar',
	'a_c_coyote',
	'a_c_rabbit_01',
	'a_c_mtlion',
	'a_c_rat',
	'a_c_sharkhammer',
	'a_c_sharktiger',
	'a_c_stingray',
	'a_c_killerwhale',
	'a_c_humpback',
	'a_c_cow',
	'a_c_hen',
}
exports[TargetName]:AddTargetModel(Animals, {options = {{event = 'boii-hunting:client:SkinAnimal',icon = Language.Targeting['animalsicon'],label = Language.Targeting['animalslabel'],item = Config.Skinning.Item}},distance = 2.0})
--<!>-- ANIMALS TARGETING END --<!>--

--<!>-- STORES START --<!>--
-- No license store
RegisterNetEvent('boii-hunting:client:StoreNoLicense', function()
    local ShopItems = {}
    ShopItems.label = Language.Stores.Hunting['huntingstorelabel'] 
        ShopItems.items = Config.Stores.Hunting.NoLicense
        ShopItems.slots = #Config.Stores.Hunting.NoLicense
    TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'huntingstore', ShopItems)
end)
-- Has license store
RegisterNetEvent('boii-hunting:client:StoreLicense', function()
    local ShopItems = {}
    ShopItems.label = Language.Stores.Hunting['huntingstorelabel'] 
        ShopItems.items = Config.Stores.Hunting.License
        ShopItems.slots = #Config.Stores.Hunting.License
    for k, v in pairs(Config.Stores.Hunting.License) do
        if k < 8 then -- If you have more than 10 items in your store increase this number to apply serials
            Config.Stores.Hunting.License[k].info.serie = tostring(Core.Shared.RandomInt(2) .. Core.Shared.RandomStr(3) .. Core.Shared.RandomInt(1) .. Core.Shared.RandomStr(2) .. Core.Shared.RandomInt(3) .. Core.Shared.RandomStr(4))
        end
    end
    TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'huntingstore2', ShopItems)
end)
--<!>-- STORES END --<!>--

--<!>-- BLIPS START --<!>--
if Config.Blips.UseBlips then
	CreateThread(function()
		for k, v in pairs(Config.Blips.Blips) do
			v.blip = AddBlipForCoord(v['coords'].x, v['coords'].y, v['coords'].z)
			SetBlipSprite(v.blip, v.id)
			SetBlipDisplay(v.blip, 4)
			SetBlipScale(v.blip, v.scale)
			SetBlipColour(v.blip, v.colour)
			SetBlipAsShortRange(v.blip, true)
			BeginTextCommandSetBlipName('STRING')
			AddTextComponentString(v.title)
			EndTextCommandSetBlipName(v.blip)
		end
	end)
end
--<!>-- BLIPS END --<!>--

--<!>-- ZONES START --<!>--
if Config.Zones.UseZones then
	CreateThread(function()
		for k,v in pairs(Config.Zones.Zones) do
		    local zones = AddBlipForRadius(v['coords'].x, v['coords'].y, v['coords'].z, v.radius) -- Adjust the size of the circle zones here
			SetBlipHighDetail(zones, true)
			SetBlipColour(zones, v.zonecolour)
			SetBlipAlpha (zones, 128)
			local zones = AddBlipForCoord(v['coords'].x, v['coords'].y, v['coords'].z)
			SetBlipSprite (zones, v.id)
			SetBlipDisplay(zones, 4)
			SetBlipScale  (zones, 0.6)
			SetBlipColour (zones, v.colour)
			SetBlipAsShortRange(zones, true)
			BeginTextCommandSetBlipName('STRING')
			AddTextComponentString(v.title)
			EndTextCommandSetBlipName(zones)
		end
	end)
end
--<!>-- ZONES START --<!>--