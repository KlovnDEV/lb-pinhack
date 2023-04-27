local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("pinhack", function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player.Functions.GetItemByName("pinhack") then return end
    TriggerClientEvent("police:client:PinHack", src)
end)

RegisterNetEvent('police:server:GetPin', function(phoneNumber)
    local Player = QBCore.Functions.GetPlayer(source)
    local src = source
    local pincode = exports["lb-phone"]:GetPin(phoneNumber)
    local pininfo =  {
        label = "The PIN for "..tostring(phoneNumber).." is "..tostring(pincode)
    }

    if not pincode then --if pin code returns nil, the phone number is invalid.
        TriggerClientEvent('QBCore:Notify', src, "The phone number is not valid.", 'error')
    else
        Player.Functions.AddItem("stickynote", 1, false, pininfo) --gives a sticky note with the pin code.
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["stickynote"], "add")
    end
end)