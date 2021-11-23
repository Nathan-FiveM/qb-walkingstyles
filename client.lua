QBCore = exports['qb-core']:GetCoreObject()

local PlayerData = {}
local currentwalkingstyle = 'default'

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function(playerData)
	PlayerData = QBCore.Functions.GetPlayerData()
	TriggerServerEvent('qb-walkstyles:server:walkstyles', 'get')
end)

RegisterCommand('walking-style', function()
  OpenWalkMenu()
end)

RegisterCommand('fetch-style', function()
	TriggerServerEvent('qb-walkstyles:server:walkstyles', 'get')
end)

function OpenWalkMenu()
	local MenuOptions = {
		{
			header = "QB Walkstyles",
			isMenuHeader = true
		},
	}
	for k, v in pairs(Config.Styles) do
		

		MenuOptions[#MenuOptions+1] = {
			header = "<h8>"..v.label.."</h>",
			txt = "Choose",
			params = {
				event = "qb-walkstyles:setwalkstyle",
				args = v.value,
			}
		}
	end

	MenuOptions[#MenuOptions+1] = {
		header = "⬅ Close Menu",
		txt = "",
		params = {
			event = "qb-menu:closeMenu",
		}
	}
	exports['qb-menu']:openMenu(MenuOptions)
end

RegisterNetEvent('qb-walkstyles:setwalkstyle')
AddEventHandler('qb-walkstyles:setwalkstyle', function(anim)
	currentwalkingstyle = anim
	setwalkstyle(anim)
	TriggerServerEvent('qb-walkstyles:server:walkstyles', 'update', anim)
end)

function setwalkstyle(anim)
	local playerped = PlayerPedId()

	if anim == 'default' then
		ResetPedMovementClipset(playerped)
		ResetPedWeaponMovementClipset(playerped)
		ResetPedStrafeClipset(playerped)
	else
		RequestAnimSet(anim)
		while not HasAnimSetLoaded(anim) do Citizen.Wait(0) end
		SetPedMovementClipset(playerped, anim)
		ResetPedWeaponMovementClipset(playerped)
		ResetPedStrafeClipset(playerped)
	end
end

RegisterNetEvent('qb-walkstyles:client:walkstyles')
AddEventHandler('qb-walkstyles:client:walkstyles', function(walkstyle)
	setwalkstyle(walkstyle)
	currentwalkingstyle = walkstyle
end)
