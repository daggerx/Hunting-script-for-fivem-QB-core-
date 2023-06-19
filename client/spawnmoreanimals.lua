--<!>-- CREDIT --<!>--
-- The follow code was pulled directly from https://forum.cfx.re/t/free-release-animal-spawner/2412093 with a couple of minor changes.
-- All credit to the original creator floatingdog

--<!>-- NOTES --<!>--
-- The following was used purely for testing purposes whilst creating the script, it is not needed for the script to function correctly
-- This will cause the script to run at around 0.20ms on average, please use with caution!

local animals = {} 
-- Land animals
-- Spawn more deer
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'CMSW')
			or IsEntityInZone(player, 'MTCHIL')
			or IsEntityInZone(player, 'MTGORDO')
			or IsEntityInZone(player, 'MTJOSE')
			or IsEntityInZone(player, 'PALFOR')
			or IsEntityInZone(player, 'PALHIGH')
			or IsEntityInZone(player, 'SANCHIA')
			or IsEntityInZone(player, 'TONGVAH'))
				and #animals < 10 then
					RequestModel('a_c_deer')
						while not HasModelLoaded('a_c_deer') or not HasCollisionForModelLoaded('a_c_deer') do
					Wait(1)
				end				
					posX = pos.x+math.random(-100,100)
					posY = pos.y+math.random(-100,100)
					Z = pos.z+999.0
					heading = math.random(0,359)+.0
					ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
					if(ground) then
					deerped = CreatePed(28, 'a_c_deer', posX, posY, posZ, heading, true, true)
					SetEntityAsMissionEntity(deerped, true, true)
					TaskWanderStandard(deerped, 10.0, 10)
					SetModelAsNoLongerNeeded(deerped)
					SetPedAsNoLongerNeeded(deerped) 
					table.insert(animals,deerped)
				end
			end	
			for i, deerped in pairs(animals) do
				if IsEntityInWater(deerped) then
				local deer = GetEntityModel(deerped)
				SetEntityAsNoLongerNeeded(deerped)
				SetModelAsNoLongerNeeded(deer)
				DeleteEntity(deerped)
				table.remove(animals,i)	
			end	
		end
	end
end)
-- Spawn more boar
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'CMSW')
			or IsEntityInZone(player, 'MTCHIL')
			or IsEntityInZone(player, 'MTGORDO')
			or IsEntityInZone(player, 'MTJOSE')
			or IsEntityInZone(player, 'PALFOR')
			or IsEntityInZone(player, 'SANCHIA')
			or IsEntityInZone(player, 'TONGVAH'))
				and #animals < 5 then
					RequestModel('a_c_boar')
						while not HasModelLoaded('a_c_boar') or not HasCollisionForModelLoaded('a_c_boar') do
					Wait(1)
				end				
					posX = pos.x+math.random(-100,100)
					posY = pos.y+math.random(-100,100)
					Z = pos.z+999.0
					heading = math.random(0,359)+.0
					ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
					if(ground) then
					boarped = CreatePed(28, 'a_c_boar', posX, posY, posZ, heading, true, true)
					SetEntityAsMissionEntity(boarped, true, true)
					TaskWanderStandard(boarped, 10.0, 10)
					SetModelAsNoLongerNeeded(boarped)
					SetPedAsNoLongerNeeded(boarped) 
					table.insert(animals,boarped)
				end
			end	
			for i, boarped in pairs(animals) do
				if IsEntityInWater(boarped) then 
				local boar = GetEntityModel(boarped)
				SetEntityAsNoLongerNeeded(boarped)
				SetModelAsNoLongerNeeded(boar)
				DeleteEntity(boarped)
				table.remove(animals,i)	
			end	
		end
	end
end)
-- Spawn more coyote
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'CMSW')
			or IsEntityInZone(player, 'MTCHIL')
			or IsEntityInZone(player, 'MTGORDO')
			or IsEntityInZone(player, 'MTJOSE')
			or IsEntityInZone(player, 'PALFOR')
			or IsEntityInZone(player, 'SANCHIA')
			or IsEntityInZone(player, 'TONGVAH'))
				and #animals < 5 then
					RequestModel('a_c_coyote')
						while not HasModelLoaded('a_c_coyote') or not HasCollisionForModelLoaded('a_c_coyote') do
					Wait(1)
				end				
					posX = pos.x+math.random(-100,100)
					posY = pos.y+math.random(-100,100)
					Z = pos.z+999.0
					heading = math.random(0,359)+.0
					ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
					if(ground) then
					coyoteped = CreatePed(28, 'a_c_coyote', posX, posY, posZ, heading, true, true)
					SetEntityAsMissionEntity(coyoteped, true, true)
					TaskWanderStandard(coyoteped, 10.0, 10)
					SetModelAsNoLongerNeeded(coyoteped)
					SetPedAsNoLongerNeeded(coyoteped)
					table.insert(animals,coyoteped)
				end
			end	
			for i, coyoteped in pairs(animals) do
				if IsEntityInWater(coyoteped) then
				local coyote = GetEntityModel(coyoteped)
				SetEntityAsNoLongerNeeded(coyoteped)
				SetModelAsNoLongerNeeded(coyote)
				DeleteEntity(coyoteped)
				table.remove(animals,i)	
			end	
		end
	end
end)
-- Spawn more rabbit
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'CMSW')
			or IsEntityInZone(player, 'MTCHIL')
			or IsEntityInZone(player, 'MTGORDO')
			or IsEntityInZone(player, 'MTJOSE')
			or IsEntityInZone(player, 'PALFOR')
			or IsEntityInZone(player, 'SANCHIA')
			or IsEntityInZone(player, 'TONGVAH'))
				and #animals < 10 then
					RequestModel('a_c_rabbit_01')
						while not HasModelLoaded('a_c_rabbit_01') or not HasCollisionForModelLoaded('a_c_rabbit_01') do
					Wait(1)
				end				
					posX = pos.x+math.random(-100,100)
					posY = pos.y+math.random(-100,100)
					Z = pos.z+999.0
					heading = math.random(0,359)+.0
					ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
					if(ground) then
					rabbitped = CreatePed(28, 'a_c_rabbit_01', posX, posY, posZ, heading, true, true)
					SetEntityAsMissionEntity(rabbitped, true, true)
					TaskWanderStandard(rabbitped, 10.0, 10)
					SetModelAsNoLongerNeeded(rabbitped)
					SetPedAsNoLongerNeeded(rabbitped)
					table.insert(animals,rabbitped)
				end
			end	
			for i, rabbitped in pairs(animals) do
				if IsEntityInWater(rabbitped) then
				local rabbit = GetEntityModel(rabbitped)
				SetEntityAsNoLongerNeeded(rabbitped)
				SetModelAsNoLongerNeeded(rabbit)
				DeleteEntity(rabbitped)
				table.remove(animals,i)	
			end	
		end
	end
end)
-- Spawn more mt lion
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'CMSW')
			or IsEntityInZone(player, 'MTCHIL')
			or IsEntityInZone(player, 'MTGORDO')
			or IsEntityInZone(player, 'MTJOSE')
			or IsEntityInZone(player, 'PALFOR')
			or IsEntityInZone(player, 'PALHIGH')
			or IsEntityInZone(player, 'SANCHIA')
			or IsEntityInZone(player, 'TONGVAH'))
				and #animals < 5 then
					RequestModel('a_c_mtlion')
						while not HasModelLoaded('a_c_mtlion') or not HasCollisionForModelLoaded('a_c_mtlion') do
					Wait(1)
				end				
					posX = pos.x+math.random(-100,100)
					posY = pos.y+math.random(-100,100)
					Z = pos.z+999.0
					heading = math.random(0,359)+.0
					ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
					if(ground) then
					mtlionped = CreatePed(28, 'a_c_mtlion', posX, posY, posZ, heading, true, true)
					SetEntityAsMissionEntity(mtlionped, true, true)
					TaskWanderStandard(mtlionped, 10.0, 10)
					SetModelAsNoLongerNeeded(mtlionped)
					SetPedAsNoLongerNeeded(mtlionped)
					table.insert(animals,mtlionped)
				end
			end	
			for i, mtlionped in pairs(animals) do
				if IsEntityInWater(mtlionped) then
				local mtlion = GetEntityModel(mtlionped)
				SetEntityAsNoLongerNeeded(mtlionped)
				SetModelAsNoLongerNeeded(mtlion)
				DeleteEntity(mtlionped)
				table.remove(animals,i)	
			end	
		end
	end
end)
-- Spawn more rats
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'PBLUFF')
			or IsEntityInZone(player, 'VCANA')
			or IsEntityInZone(player, 'VESP')
			or IsEntityInZone(player, 'VINE')
			or IsEntityInZone(player, 'STRAW')
			or IsEntityInZone(player, 'SANAND')
			or IsEntityInZone(player, 'SANDY')
			or IsEntityInZone(player, 'SKID')
			or IsEntityInZone(player, 'SLAB'))
				and #animals < 10 then
					RequestModel('a_c_rat')
						while not HasModelLoaded('a_c_rat') or not HasCollisionForModelLoaded('a_c_rat') do
					Wait(1)
				end				
					posX = pos.x+math.random(-100,100)
					posY = pos.y+math.random(-100,100)
					Z = pos.z+999.0
					heading = math.random(0,359)+.0
					ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
					if(ground) then
					mtlionped = CreatePed(28, 'a_c_rat', posX, posY, posZ, heading, true, true)
					SetEntityAsMissionEntity(mtlionped, true, true)
					TaskWanderStandard(mtlionped, 10.0, 10)
					SetModelAsNoLongerNeeded(mtlionped)
					SetPedAsNoLongerNeeded(mtlionped)
					table.insert(animals,mtlionped)
				end
			end	
			for i, mtlionped in pairs(animals) do
				if IsEntityInWater(mtlionped) then
				local mtlion = GetEntityModel(mtlionped)
				SetEntityAsNoLongerNeeded(mtlionped)
				SetModelAsNoLongerNeeded(mtlion)
				DeleteEntity(mtlionped)
				table.remove(animals,i)	
			end	
		end
	end
end)
-- Water animals
-- Hammerhead sharks
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'OCEANA')
		or IsEntityInZone(player, 'PALCOV'))
			and #animals < 10 then
				RequestModel('a_c_sharkhammer')
					while not HasModelLoaded('a_c_sharkhammer') or not HasCollisionForModelLoaded('a_c_sharkhammer') do
				Wait(1)
			end				
				posX = pos.x+math.random(-1000,1000)
				posY = pos.y+math.random(-1000,1000)
				Z = pos.z+999.0
				heading = math.random(0,359)+.0
				ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
				if(ground) then
				hammersped = CreatePed(28, 'a_c_sharkhammer', posX, posY, posZ, heading, true, true)
				SetEntityAsMissionEntity(hammersped, true, true)
				TaskWanderStandard(hammersped, 10.0, 10)
				SetModelAsNoLongerNeeded(hammersped)
				SetPedAsNoLongerNeeded(hammersped)
				table.insert(animals,hammersped)
			end	
		end
	end
end)
-- Hammerhead sharks
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'OCEANA')
		or IsEntityInZone(player, 'PALCOV'))
			and #animals < 10 then--how many animals to spawn
				RequestModel('a_c_sharktiger')
					while not HasModelLoaded('a_c_sharktiger') or not HasCollisionForModelLoaded('a_c_sharktiger') do
				Wait(1)
			end				
				posX = pos.x+math.random(-1000,1000)
				posY = pos.y+math.random(-1000,1000)
				Z = pos.z+999.0
				heading = math.random(0,359)+.0
				ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
				if(ground) then
				tigersped = CreatePed(28, 'a_c_sharktiger', posX, posY, posZ, heading, true, true)
				SetEntityAsMissionEntity(tigersped, true, true)
				TaskWanderStandard(tigersped, 10.0, 10)
				SetModelAsNoLongerNeeded(tigersped)
				SetPedAsNoLongerNeeded(tigersped) -- despawn when player no longer in the area
				table.insert(animals,tigersped)
			end	
		end
	end
end)
-- Stingrays
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'OCEANA')
		or IsEntityInZone(player, 'PALCOV'))
			and #animals < 10 then--how many animals to spawn
				RequestModel('a_c_stingray')--model of animal, this is a deer
					while not HasModelLoaded('a_c_stingray') or not HasCollisionForModelLoaded('a_c_stingray') do
				Wait(1)
			end				
				posX = pos.x+math.random(-1000,1000)
				posY = pos.y+math.random(-1000,1000)
				Z = pos.z+999.0
				heading = math.random(0,359)+.0
				ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
				if(ground) then
				stingrayped = CreatePed(28, 'a_c_stingray', posX, posY, posZ, heading, true, true)
				SetEntityAsMissionEntity(stingrayped, true, true)
				TaskWanderStandard(stingrayped, 10.0, 10)
				SetModelAsNoLongerNeeded(stingrayped)
				SetPedAsNoLongerNeeded(stingrayped) -- despawn when player no longer in the area
				table.insert(animals,stingrayped)
			end	
		end
	end
end)
-- Killer whale 
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'OCEANA')
		or IsEntityInZone(player, 'PALCOV'))
			and #animals < 5 then--how many animals to spawn
				RequestModel('a_c_killerwhale')
					while not HasModelLoaded('a_c_killerwhale') or not HasCollisionForModelLoaded('a_c_killerwhale') do
				Wait(1)
			end				
				posX = pos.x+math.random(-1000,1000)
				posY = pos.y+math.random(-1000,1000)
				Z = pos.z+999.0
				heading = math.random(0,359)+.0
				ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
				if(ground) then
				killerwped = CreatePed(28, 'a_c_killerwhale', posX, posY, posZ, heading, true, true)
				SetEntityAsMissionEntity(killerwped, true, true)
				TaskWanderStandard(killerwped, 10.0, 10)
				SetModelAsNoLongerNeeded(killerwped)
				SetPedAsNoLongerNeeded(killerwped) -- despawn when player no longer in the area
				table.insert(animals,killerwped)
			end	
		end
	end
end)
-- Humpback whale
Citizen.CreateThread(function()			 
	while true do
		Wait(0)		
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player,1)
		local ground
		if (IsEntityInZone(player, 'OCEANA')
		or IsEntityInZone(player, 'PALCOV'))
			and #animals < 5 then--how many animals to spawn
				RequestModel('a_c_humpback')
					while not HasModelLoaded('a_c_humpback') or not HasCollisionForModelLoaded('a_c_humpback') do
				Wait(1)
			end				
				posX = pos.x+math.random(-1000,1000)
				posY = pos.y+math.random(-1000,1000)
				Z = pos.z+999.0
				heading = math.random(0,359)+.0
				ground,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,Z,1)
				if(ground) then
				humpbackped = CreatePed(28, 'a_c_humpback', posX, posY, posZ, heading, true, true)
				SetEntityAsMissionEntity(humpbackped, true, true)
				TaskWanderStandard(humpbackped, 10.0, 10)
				SetModelAsNoLongerNeeded(humpbackped)
				SetPedAsNoLongerNeeded(humpbackped) -- despawn when player no longer in the area
				table.insert(animals,humpbackped)
			end	
		end
	end
end)