
local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('rlanta-baron:server:gorev1', function(source)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local level = GetPlayerLevel(src, "baron")

	if level >= Config.Gorev1Level then
	Player.Functions.AddItem(Config.Gorev1Item, 1)
	TriggerClientEvent(Config.Gorev1Event)
	TriggerClientEvent('QBCore:Notify', src, "Başaramazsan sana olan saygımız düşecek, kolay gelsin.", 'success')
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Gorev1Item], 'add')
		else
		TriggerClientEvent('QBCore:Notify', src, "Bunu yapabilmek için yeterli tecrübeye sahip değilsin..", 'error')
	end
end)

RegisterNetEvent('rlanta-baron:server:gorev2', function(source)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local level = GetPlayerLevel(src, "baron")

	if level >= Config.Gorev2Level then
	Player.Functions.AddItem(Config.Gorev2Item, 1)
	TriggerClientEvent(Config.Gorev2Event)
	TriggerClientEvent('QBCore:Notify', src, "Başaramazsan sana olan saygımız düşecek, kolay gelsin.", 'success')
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Gorev2Item], 'add')
		else
		TriggerClientEvent('QBCore:Notify', src, "Bunu yapabilmek için yeterli tecrübeye sahip değilsin..", 'error')
	end
end)

RegisterNetEvent('rlanta-baron:server:gorev3', function(source)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local level = GetPlayerLevel(src, "baron")

	if level >= Config.Gorev3Level then
	Player.Functions.AddItem(Config.Gorev3Item, 1)
	TriggerClientEvent(Config.Gorev3Event)
	TriggerClientEvent('QBCore:Notify', src, "Başaramazsan sana olan saygımız düşecek, kolay gelsin.", 'success')
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Gorev3Item], 'add')
		else
		TriggerClientEvent('QBCore:Notify', src, "Bunu yapabilmek için yeterli tecrübeye sahip değilsin..", 'error')
	end
end)

RegisterNetEvent('rlanta-baron:server:gorev4', function(source)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local level = GetPlayerLevel(src, "baron")

	if level >= Config.Gorev4Level then
	Player.Functions.AddItem(Config.Gorev4Item, 1)
	TriggerClientEvent(Config.Gorev4Event)
	TriggerClientEvent('QBCore:Notify', src, "Başaramazsan sana olan saygımız düşecek, kolay gelsin.", 'success')
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Gorev4Item], 'add')
		else
		TriggerClientEvent('QBCore:Notify', src, "Bunu yapabilmek için yeterli tecrübeye sahip değilsin..", 'error')
	end
	
end)

RegisterNetEvent('rlanta-baron:server:gorev5', function(source)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local level = GetPlayerLevel(src, "baron")

	if level >= Config.Gorev5Level then
	Player.Functions.AddItem(Config.Gorev5Item, 1)
	TriggerClientEvent(Config.Gorev5Event)
	TriggerClientEvent('QBCore:Notify', src, "Başaramazsan sana olan saygımız düşecek, kolay gelsin.", 'success')
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Gorev5Item], 'add')
		else
		TriggerClientEvent('QBCore:Notify', src, "Bunu yapabilmek için yeterli tecrübeye sahip değilsin..", 'error')
	end
end)

RegisterNetEvent("rlanta-baron:server:tecrubekazan1", function(soruce)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	AddPlayerXP(src, "baron", Config.EklenecekXP)
end)



