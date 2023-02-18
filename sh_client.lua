local QBCore = exports['qb-core']:GetCoreObject()
local training = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

CreateThread(function()
    for k, v in pairs(Config.Locations) do
        exports['qb-target']:AddBoxZone("GYM"..k, v['coords'], 3, 3, {
            name = "GYM"..k,
            heading = v['heading'],
            minZ = v['coords'].z - 1,
            maxZ = v['coords'].z + 1,
            debugPoly = false,
        }, {
            options = {
                {
                    type = "client",
                    event = v['event'],
                    icon = v['icon'],
                    label = v['label'],
                },
            },
            distance = 1.5
        })
    end
end)

local runningTime = 0
CreateThread(function()
	while true do
        local sleep = 2000
		local playerPed = PlayerPedId()
		if IsPedRunning(playerPed) then
            local sleep = 1000
			runningTime = runningTime + 1
			if runningTime > 1000 then
                sleep = 1
				runningTime = 0
				exports["gamz-skillsystem"]:UpdateSkill("Kondisyon", 0.10)
			end
		end
		Wait(sleep)
	end
end)

RegisterNetEvent('nkoGym:pushup')
AddEventHandler('nkoGym:pushup', function()
    if not training then
        training = true
        QBCore.Functions.Notify(Lang:t('notify.start'), 'success', 3000)
        QBCore.Functions.Progressbar("pushup", Lang:t('progressbar.pushup'), Config.Times['pushup'], false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations['pushup'].animDict,
            anim = Config.Animations['pushup'].anim,
            flags = Config.Animations['pushup'].flags,
        }, {}, {}, function() -- Done
            QBCore.Functions.Notify(Lang:t('notify.pushup'), 'success', 10000)
            exports["gamz-skillsystem"]:UpdateSkill('Güç', 0.10)
            Wait(20000)
            training = false
            QBCore.Functions.Notify(Lang:t('notify.ready'), 'success', 5000)
        end)
    else
        QBCore.Functions.Notify(Lang:t('notify.warn'), 'success', 5000)
    end
end)

RegisterNetEvent('nkoGym:horizontal')
AddEventHandler('nkoGym:horizontal', function()
    local playerPed = PlayerPedId()
    if not training then
        training = true
        QBCore.Functions.Notify(Lang:t('notify.start'), 'success', 3000)
        QBCore.Functions.Progressbar("horizontal", Lang:t('progressbar.horizontal'), Config.Times['horizontal'], false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            TaskStartScenarioInPlace(playerPed, Config.Animations['horizontal_bar'].anim, 0, true)
        }, {}, {}, function() -- Done
            ClearPedTasksImmediately(playerPed)
            ExecuteCommand('yenile')
            QBCore.Functions.Notify(Lang:t('notify.horizontal'), 'success', 10000)
            exports["gamz-skillsystem"]:UpdateSkill('Güç', 0.10)
            Wait(20000)
            training = false
            QBCore.Functions.Notify(Lang:t('notify.ready'), 'success', 5000)
        end)
    else
        QBCore.Functions.Notify(Lang:t('notify.warn'), 'success', 5000)
    end
end)

RegisterNetEvent('nkoGym:situp')
AddEventHandler('nkoGym:situp', function()
    if not training then
        training = true
        QBCore.Functions.Notify(Lang:t('notify.start'), 'success', 3000)
        QBCore.Functions.Progressbar("shuttle", Lang:t('progressbar.situp'), Config.Times['situp'], false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations['situp'].animDict,
            anim = Config.Animations['situp'].anim,
            flags = Config.Animations['situp'].flags,
        }, {}, {}, function() -- Done
            QBCore.Functions.Notify(Lang:t('notify.situp'), 'success', 10000)
            exports["gamz-skillsystem"]:UpdateSkill('Kondisyon', 0.10)
            Wait(20000)
            training = false
            QBCore.Functions.Notify(Lang:t('notify.ready'), 'success', 5000)
        end)
    else
        QBCore.Functions.Notify(Lang:t('notify.warn'), 'success', 5000)
    end
end)

RegisterNetEvent('nkoGym:yoga')
AddEventHandler('nkoGym:yoga', function()
    if not training then
        training = true
        QBCore.Functions.Notify(Lang:t('notify.start'), 'success', 3000)
        QBCore.Functions.Progressbar("yoga", Lang:t('progressbar.yoga'), Config.Times['yoga'], false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations['yoga'].animDict,
            anim = Config.Animations['yoga'].anim,
            flags = Config.Animations['yoga'].flags,
        }, {}, {}, function() -- Done
            QBCore.Functions.Notify(Lang:t('notify.yoga'), 'success', 10000)
            exports["gamz-skillsystem"]:UpdateSkill('Kondisyon', 0.10)
            Wait(20000)
            training = false
            QBCore.Functions.Notify(Lang:t('notify.ready'), 'success', 5000)
        end)
    else
        QBCore.Functions.Notify(Lang:t('notify.warn'), 'success', 5000)
    end
end)

RegisterNetEvent('nkoGym:karate')
AddEventHandler('nkoGym:karate', function()
    if not training then
        training = true
        QBCore.Functions.Notify(Lang:t('notify.start'), 'success', 3000)
        QBCore.Functions.Progressbar("yoga", Lang:t('progressbar.karate'), Config.Times['karate'], false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Animations['karate'].animDict,
            anim = Config.Animations['karate'].anim,
            flags = Config.Animations['karate'].flags,
        }, {}, {}, function() -- Done
            QBCore.Functions.Notify(Lang:t('notify.karate'), 'success', 10000)
            exports["gamz-skillsystem"]:UpdateSkill('Güç', 0.10)
            Wait(20000)
            training = false
            QBCore.Functions.Notify(Lang:t('notify.ready'), 'success', 5000)
        end)
    else
        QBCore.Functions.Notify(Lang:t('notify.warn'), 'success', 5000)
    end
end)

RegisterNetEvent('nkoGym:zbar')
AddEventHandler('nkoGym:zbar', function()
    local playerPed = PlayerPedId()
    if not training then
        training = true
        QBCore.Functions.Notify(Lang:t('notify.start'), 'success', 3000)
        QBCore.Functions.Progressbar("zbar", Lang:t('progressbar.zbar'), Config.Times['zbar'], false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            TaskStartScenarioInPlace(playerPed, Config.Animations['zbar'].anim, 0, true)
        }, {}, {}, function() -- Done
            ClearPedTasksImmediately(playerPed)
            ExecuteCommand('yenile')
            QBCore.Functions.Notify(Lang:t('notify.zbar'), 'success', 10000)
            exports["gamz-skillsystem"]:UpdateSkill('Güç', 0.10)
            Wait(20000)
            training = false
            QBCore.Functions.Notify(Lang:t('notify.ready'), 'success', 5000)
        end)
    else
        QBCore.Functions.Notify(Lang:t('notify.warn'), 'success', 5000)
    end
end)