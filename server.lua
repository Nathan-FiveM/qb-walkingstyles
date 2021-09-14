RegisterServerEvent('qb-walkstyles:server:walkstyles')
AddEventHandler('qb-walkstyles:server:walkstyles', function(x, anim)
	local loadFile = LoadResourceFile(GetCurrentResourceName(), "./walkingstyles.json")  
	local _source = source
	local walking = {}
	local newwalk = {}
	local xPlayer = QBCore.Functions.GetPlayer(_source)
	local found = false
	local license = QBCore.Functions.GetIdentifier(_source, 'license')
	walking = json.decode(loadFile)
	if x == 'get' then
		if walking ~= nil then
			for k,v in pairs(walking) do
				if v.identifier == license and v.digit == xPlayer.digit then
					TriggerClientEvent('qb-walkstyles:client:walkstyles', _source, v.anim)
					found = true
				end
			end
			if not found then
				TriggerClientEvent('qb-walkstyles:client:walkstyles', _source, 'default')
			end
		end
	elseif x == 'update' then
		if walking ~= nil then
			for k,v in pairs(walking) do
				if v.identifier == license and v.digit == xPlayer.digit then
				else
					table.insert(newwalk, v)
				end
			end
		end
		if anim ~= 'default' then 
			local newstyle = {identifier = license, digit = xPlayer.digit, anim = anim}
			table.insert(newwalk, newstyle)
		end
		SaveResourceFile(GetCurrentResourceName(), "walkingstyles.json", json.encode(newwalk), -1)
	end
end)