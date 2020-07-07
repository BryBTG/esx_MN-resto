ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterServerCallback('esx_mn-resto:CheckMoney', function(source, cb, price)
    local xPlayer = ESX.GetPlayerFromId(source)
    local AccountBalance = xPlayer.getMoney()


    if AccountBalance > price  then
        cb(true)
    else
        cb(false)
    end
end)


ESX.RegisterServerCallback('esx_mn-resto:TakeMoney', function(source, cb, plusfood, plusdrink, amount, RestoOwner)

    local xPlayer = ESX.GetPlayerFromId(source)
    local AccountBalance = xPlayer.getMoney()

    xPlayer.removeMoney(amount)
    owner = ESX.GetPlayerFromIdentifier(RestoOwner)  

    if owner ~= nil then
        owner.addAccountMoney('bank', amount)
    else
        MySQL.Async.fetchAll('SELECT bank FROM users WHERE identifier = @identifier', { ["@identifier"] = RestoOwner }, function(result)
            print(result[1]["bank"])
			if result[1]["bank"] ~= nil then
				MySQL.Async.execute("UPDATE users SET bank = @newBank WHERE identifier = @identifier",
					{
						["@identifier"] = RestoOwner,
						["@newBank"] = result[1]["bank"] + amount
					}
				)
			end
		end)
	end
    



    local addhunger = tonumber(plusfood)
    local addthirst = tonumber(plusdrink)

    TriggerClientEvent("esx_status:add", source, "hunger", addhunger)
    TriggerClientEvent("esx_status:add", source, "thirst", addthirst)
    TriggerClientEvent("esx_mn-resto:Ani", source)

end)