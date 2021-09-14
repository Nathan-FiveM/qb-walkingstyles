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

function tprint (tbl, indent)
    if not indent then indent = 0 end
    for k, v in pairs(tbl) do
      formatting = string.rep("  ", indent) .. k .. ": "
      if type(v) == "table" then
        print(formatting)
        tprint(v, indent+1)
      elseif type(v) == 'boolean' then
        print(formatting .. tostring(v))      
      else
        print(formatting .. v)
      end
    end
end

function OpenWalkMenu()
	for k, v in pairs(Config.Styles) do
 		if k == 1 then
			TriggerEvent('nh-context:sendMenu', {
				{
					id = 0,
					header = "Close Menu",
					txt = "",
					params = {
						event = "nh-context:closeMenu",
					}
				},
			})
		end
		TriggerEvent('nh-context:sendMenu', {
			{
				id = k,
				header = "<h8>"..v.label.."</h>",
				txt = "Choose",
				params = {
					event = "qb-walkstyles:setwalkstyle",
					args = v.value
				}
			},
		})
	end
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

Citizen.CreateThread(function()
	while true do
		local playerhp = GetEntityHealth(PlayerPedId())-100
		if (playerhp > 50) then
			setwalkstyle(currentwalkingstyle)
		else
			setwalkstyle('move_m@injured')
		end
		Wait(10000)
	end
end)

RegisterNetEvent('qb-walkstyles:client:walkstyles')
AddEventHandler('qb-walkstyles:client:walkstyles', function(walkstyle)
	setwalkstyle(walkstyle)
	currentwalkingstyle = walkstyle
end)
