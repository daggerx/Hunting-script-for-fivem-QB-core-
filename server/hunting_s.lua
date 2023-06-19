-------------------------------
---------- CASE#1993 ----------
-------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- SELL HIDES START --<!>--
RegisterServerEvent('boii-hunting:server:SellHides', function(args) 
	local source = source
    local Player = Core.Functions.GetPlayer(source)
	local args = tonumber(args)
    saleitem = ''
    if args == 1 then
        saleitem =  'skin_rat'
	elseif args == 2 then
        saleitem =  'skin_rabbit'
	elseif args == 3 then
        saleitem =  'skin_pig'
    elseif args == 4 then
        saleitem =  'skin_cow'
    elseif args == 5 then
        saleitem =  'skin_deer'
    elseif args == 6 then
        saleitem =  'skin_boar'
    elseif args == 7 then
        saleitem =  'skin_coyote'
    elseif args == 8 then
        saleitem =  'skin_mtlion'
    elseif args == 9 then
        saleitem =  'skin_stingray'
    elseif args == 10 then
        saleitem =  'skin_dolphin'
    elseif args == 11 then
        saleitem =  'skin_shark'
    elseif args == 12 then
        saleitem =  'skin_whale'
    end -- You can add more items here
	if Player.Functions.GetItemByName(saleitem) ~= nil then
        item = Player.Functions.GetItemByName(saleitem).amount
        pay = (item * Config.Stores.Selling.Prices[saleitem])
        Player.Functions.RemoveItem(saleitem, item)
        Player.Functions.AddMoney(Config.Stores.Selling.MoneyType, pay)	
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[saleitem], 'remove', item)
    else
        TriggerClientEvent('boii-hunting:notifications', source, Language.Stores.Selling['noitems'], 'error')
    end
end)
--<!>-- SELL HIDES END --<!>--

--<!>-- SELL MEAT START --<!>--
RegisterServerEvent('boii-hunting:server:SellMeats', function(args) 
	local source = source
    local Player = Core.Functions.GetPlayer(source)
	local args = tonumber(args)
    saleitem = ''
    if args == 1 then
        saleitem =  'meat_rat'
	elseif args == 2 then
        saleitem =  'meat_rabbit'
	elseif args == 3 then
        saleitem =  'meat_chickenhawk'
    elseif args == 4 then
        saleitem =  'meat_cormorant'
    elseif args == 5 then
        saleitem =  'meat_chicken'
    elseif args == 6 then
        saleitem =  'meat_pig'
    elseif args == 7 then
        saleitem =  'meat_cow'
    elseif args == 8 then
        saleitem =  'meat_deer'
    elseif args == 9 then
        saleitem =  'meat_boar'
    elseif args == 10 then
        saleitem =  'meat_coyote'
    elseif args == 11 then
        saleitem =  'meat_mtlion'
    elseif args == 12 then
        saleitem =  'meat_stingray'
    elseif args == 13 then
        saleitem =  'meat_dolphin'
    elseif args == 14 then
        saleitem =  'meat_shark'
    elseif args == 15 then
        saleitem =  'meat_whale'
    end -- You can add more items here
	if Player.Functions.GetItemByName(saleitem) ~= nil then
        item = Player.Functions.GetItemByName(saleitem).amount
        pay = (item * Config.Stores.Selling.Prices[saleitem])
        Player.Functions.RemoveItem(saleitem, item)
        Player.Functions.AddMoney(Config.Stores.Selling.MoneyType, pay)	
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[saleitem], 'remove', item)
    else
        TriggerClientEvent('boii-hunting:notifications', source, Language.Stores.Selling['noitems'], 'error')
    end
end)
--<!>-- SELL MEAT END --<!>--

--<!>-- HUNTING LICENSE START --<!>--
-- License item
Core.Functions.CreateUseableItem('huntinglicense', function(source, item)
	local player = GetPlayerPed(source)
	local pCoords = GetEntityCoords(player)
	for k, v in pairs(Core.Functions.GetPlayers()) do
		local TargetPed = GetPlayerPed(v)
		local dist = #(pCoords - GetEntityCoords(TargetPed))
		if dist < 3.0 then
			local gender = 'Man'
			if item.info.gender == 1 then
				gender = 'Woman'
			end
			TriggerClientEvent('chat:addMessage', v,  {
					template = '<div class="chat-message advert"><div class="chat-message-body"><strong>{0}:</strong><br><br> <strong>Civ ID:</strong> {1} <br><strong>First Name:</strong> {2} <br><strong>Last Name:</strong> {3} <br><strong>Birthdate:</strong> {4} <br><strong>Gender:</strong> {5}</div></div>',
					args = {
						'Hunting License',
						item.info.citizenid,
						item.info.firstname,
						item.info.lastname,
						item.info.birthdate,
						gender,
					}
				}
			)
		end
	end
end)
-- License check callback
Core.Functions.CreateCallback('boii-hunting:server:CheckLicense', function(source, cb)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local licenseTable = Player.PlayerData.metadata['licences']
    local licenseItem = Player.Functions.GetItemByName('huntinglicense')
    cb(licenseTable.hunting, licenseItem)
end)
--<!>-- HUNTING LICENSE END --<!>--