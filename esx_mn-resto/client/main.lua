ESX = nil
restoowner = nil
local IsAnimated = false

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)





CreateThread(function()
    SetNuiFocus(false, false)

    for i=1, #Config.Restos do
        local BlipID = Config.Restos[i]
        local blip = AddBlipForCoord(BlipID.posX, BlipID.posY, BlipID.posZ)

        SetBlipSprite(blip, BlipID.Logo)
        SetBlipColour(blip, BlipID.LogoColor)
        SetBlipScale(blip, 0.8)
        SetBlipAsShortRange(blip, true)
        AddTextEntry('RestoName', BlipID.RestoName)
        BeginTextCommandSetBlipName('RestoName')
        EndTextCommandSetBlipName(blip)
    end

    while true do
        Wait(0)


        local pedCoords = GetEntityCoords(PlayerPedId())


        
        local Show = false
        local isInMarker = false


        for i=1, #Config.Restos do


            local RestoID = Config.Restos[i]

            local distance = GetDistanceBetweenCoords(pedCoords, RestoID.posX, RestoID.posY, RestoID.posZ, true)


            if distance < Config.Marker.DrawDistance then
                Show = true
            else
                Show = false
            end


            if Show then  
                DrawMarker(Config.Marker.Type, RestoID.posX, RestoID.posY, (RestoID.posZ-0.5) , 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, Config.Marker.ColorR, Config.Marker.ColorG, Config.Marker.ColorB, 100, false, true, 2, nil, nil, true)
            end


            if Show and distance < 1 then
                isInMarker = true
            else
                isInMarker =false
            end


            if isInMarker then
                ESX.ShowHelpNotification('press ~INPUT_CONTEXT~ to enter ' .. RestoID.RestoName)

                if IsControlJustReleased(0, 38) then
                    OpenMenu(true, RestoID.type, RestoID.RestoName)
                    restoowner = RestoID.Owner
                    CurrentAction = nil
                end
            end
        end
    end
end)


function OpenMenu(data, restotype, RestoName)



    for i=1, #Config.Food do
        local food = Config.Food[i]

        if food.resto == restotype then

            SendNUIMessage({
                menu = food.name,
                price = food.price,
            })
            --print(food.name)
        end
        Wait(0)
    end

    SetNuiFocus(data, data)

    SendNUIMessage({
        type = 'OpenResto',
        resto = restotype,
        restoname = RestoName,
    })
end


RegisterNUICallback('ClosingMenu', function()
    SetNuiFocus(false, false)
    --print('test')
end)

RegisterNUICallback('StartFood', function(data)
    local button = data.button

    for i=1, #Config.Food do 
        local food = Config.Food[i]
        
        if button == food.name then
            ESX.TriggerServerCallback('esx_mn-resto:CheckMoney', function(CanPay)
                if CanPay then
                    GoEatStuff(food.addfood, food.adddrink, food.price)
                else
                    ESX.ShowNotification("Je hebt geen geld om dit te betalen", true, true, nil)
                end
                
            end, food.price)
        end
    end
end)

function GoEatStuff(addhunger, addthirst, foodprice, shopname)
    ESX.TriggerServerCallback('esx_mn-resto:TakeMoney', function() end, addhunger, addthirst, foodprice, restoowner)
end


RegisterNetEvent("esx_mn-resto:Ani")
AddEventHandler("esx_mn-resto:Ani", function()
    if not IsAnimated then
		prop_name = 'prop_cs_burger_01'
        IsAnimated = true
        
        Citizen.CreateThread(function()
            local playerPed = PlayerPedId(PlayerPedId())
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

                Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)