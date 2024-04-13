local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function ()
    exports['qb-target']:AddBoxZone("gorevadam", vector3(Config.PedKonumx, Config.PedKonumy, Config.Pedkonumz), 1, 1, {
        name = "gorevadam",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "rlanta-baron:client:client:gorevmenu",
                icon = Config.TargetIcon,
                label = Config.PedIsim
            },
        },
        distance = 1.5
    })

    RequestModel(GetHashKey(Config.PedHash)) -- ped kodu
    while not HasModelLoaded(GetHashKey(Config.PedHash)) do -- ped kodu
        Wait(1)
    end
    npc = CreatePed(1, GetHashKey(Config.PedHash), 958.882, -1968.6, 29.3, 59.35, false, true) -- ped kodu ve kordinatı
    SetPedCombatAttributes(npc, 46, true)              
    SetPedFleeAttributes(npc, 0, 0)              
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetEntityAsMissionEntity(npc, true, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
end)

RegisterNetEvent("rlanta-baron:client:client:gorevmenu", function()
    local player = QBCore.Functions.GetPlayerData()
    local PlayerJob = player.job

    if PlayerJob.name ~= "police" or PlayerJob.type ~= "leo" or then
        QBCore.Functions.Notify("Sana göre bir işim yok, kafana sıkmadan önce s*** git burdan!", "error")
    else
        openMenu({
            {
                header = "Baron Evi Görevleri",
                isMenuHeader = true, -- Set to true to make a nonclickable title
            },
            {
                header = Config.Gorev1Name,
                txt = Config.Gorev1Text,
                params = {
                    event = "rlanta-baron:client:gorev1",
                    args = {
                        number = 1,
                    }
                }
            },
            {
                header = Config.Gorev2Name,
                txt = Config.Gorev2Text,
                params = {
                    event = "rlanta-baron:client:gorev2",
                    args = {
                        number = 1,
                    }
                }
            },
            {
                header = Config.Gorev3Name,
                txt = Config.Gorev3Text,
                params = {
                    event = "rlanta-baron:client:gorev3",
                    args = {
                        number = 1,
                    }
                }
            },
            {
                header = Config.Gorev4Name,
                txt = Config.Gorev4Text,
                params = {
                    event = "rlanta-baron:client:gorev4",
                    args = {
                        number = 1,
                    }
                }
            },
            {
                header = Config.Gorev5Name,
                txt = Config.Gorev5Text,
                params = {
                    event = "rlanta-baron:client:gorev5",
                    args = {
                        number = 1,
                    }
                }
            },
        })
    end
end)

RegisterNetEvent("rlanta-baron:client:gorev1", function()
    TriggerServerEvent("rlanta-baron:server:gorev1")
end)

RegisterNetEvent("rlanta-baron:client:gorev2", function()
    TriggerServerEvent("rlanta-baron:server:gorev2")
end)

RegisterNetEvent("rlanta-baron:client:gorev2", function()
    TriggerServerEvent("rlanta-baron:server:gorev2")
end)

RegisterNetEvent("rlanta-baron:client:gorev2", function()
    TriggerServerEvent("rlanta-baron:server:gorev2")
end)

RegisterNetEvent("rlanta-baron:client:gorev3", function()
    TriggerServerEvent("rlanta-baron:server:gorev3")
end)
