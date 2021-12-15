QBCore = exports['qb-core']:GetCoreObject()

local PlayerData = {}
local currentwalkingstyle = 'default'

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function(playerData)
	PlayerData = QBCore.Functions.GetPlayerData()
	TriggerServerEvent('qb-walkstyles:server:walkstyles', 'get')
end)

RegisterNetEvent('qb-walkstyles:openmenu', function()
	OpenWalkMenu()
end)

-- // Walkstyle Events \\ --
RegisterNetEvent('qb-walkstyles:arrogant', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_f@arrogant@a')
end)
RegisterNetEvent('qb-walkstyles:casual', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@casual@a')
end)
RegisterNetEvent('qb-walkstyles:casual2', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@casual@b')
end)
RegisterNetEvent('qb-walkstyles:casual3', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@casual@c')
end)
RegisterNetEvent('qb-walkstyles:casual4', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@casual@d')
end)
RegisterNetEvent('qb-walkstyles:casual5', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@casual@e')
end)
RegisterNetEvent('qb-walkstyles:casual6', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@casual@f')
end)
RegisterNetEvent('qb-walkstyles:confident', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@confident')
end)
RegisterNetEvent('qb-walkstyles:business', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@business@a')
end)
RegisterNetEvent('qb-walkstyles:business2', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@business@b')
end)
RegisterNetEvent('qb-walkstyles:business3', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@business@c')
end)
RegisterNetEvent('qb-walkstyles:femme', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_f@femme@')
end)
RegisterNetEvent('qb-walkstyles:flee', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_f@flee@a')
end)
RegisterNetEvent('qb-walkstyles:gangster', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@gangster@generic')
end)
RegisterNetEvent('qb-walkstyles:gangster2', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@gangster@ng')
end)
RegisterNetEvent('qb-walkstyles:gangster3', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@gangster@var_e')
end)
RegisterNetEvent('qb-walkstyles:gangster4', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@gangster@var_f')
end)
RegisterNetEvent('qb-walkstyles:gangster5', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@gangster@var_i')
end)
RegisterNetEvent('qb-walkstyles:heels', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_f@heels@c')
end)
RegisterNetEvent('qb-walkstyles:heels2', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_f@heels@d')
end)
RegisterNetEvent('qb-walkstyles:hiking', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@hiking')
end)
RegisterNetEvent('qb-walkstyles:muscle', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@muscle@a')
end)
RegisterNetEvent('qb-walkstyles:quick', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@quick')
end)
RegisterNetEvent('qb-walkstyles:wide', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@bag')
end)
RegisterNetEvent('qb-walkstyles:scared', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_f@scared')
end)
RegisterNetEvent('qb-walkstyles:brave', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@brave')
end)
RegisterNetEvent('qb-walkstyles:tipsy', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@drunk@slightlydrunk')
end)
RegisterNetEvent('qb-walkstyles:injured', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@injured')
end)
RegisterNetEvent('qb-walkstyles:tough', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@tough_guy@')
end)
RegisterNetEvent('qb-walkstyles:sassy', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@sassy')
end)
RegisterNetEvent('qb-walkstyles:sad', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@sad@a')
end)
RegisterNetEvent('qb-walkstyles:posh', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@posh@')
end)
RegisterNetEvent('qb-walkstyles:alien', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@alien')
end)
RegisterNetEvent('qb-walkstyles:nonchalant', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@non_chalant')
end)
RegisterNetEvent('qb-walkstyles:hobo', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@hobo@a')
end)
RegisterNetEvent('qb-walkstyles:money', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@money')
end)
RegisterNetEvent('qb-walkstyles:swagger', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@swagger')
end)
RegisterNetEvent('qb-walkstyles:shady', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_m@shadyped@a')
end)
RegisterNetEvent('qb-walkstyles:maneater', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_f@maneater')
end)
RegisterNetEvent('qb-walkstyles:chichi', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'move_f@chichi')
end)
RegisterNetEvent('qb-walkstyles:default', function()
	TriggerEvent("qb-walkstyles:setwalkstyle", 'default')
end)
-- // Walkstyle Events \\ --

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
