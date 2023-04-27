local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('police:client:PinHack', function(src)
    local dialog = exports['qb-input']:ShowInput({
        header = "Phone PIN Hack",
        submitText = "Hack",
        inputs = {
            {
                text = "Phone Number", -- text you want to be displayed as a place holder
                name = "pnumber", -- name of the input should be unique otherwise it might override
                type = "number", -- type of the input
                isRequired = true, -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            },
        },
    })

    if dialog ~= nil then
        phoneNumber = dialog.pnumber
        --print(phoneNumber)

        --MINIGAME
        exports['ps-ui']:VarHack(function(success)
            if success then
                exports['ps-ui']:Thermite(function(success)
                    if success then
                        exports['ps-ui']:Scrambler(function(success)
                            if success then
                                TriggerServerEvent('police:server:GetPin', phoneNumber)
                            else
                                TriggerEvent('QBCore:Notify', "You failed the hack.", "error", 5000)
                            end
                        end, "numeric", 30, 0) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
                    else
                        TriggerEvent('QBCore:Notify', "You failed the hack.", "error", 5000)
                    end
                 end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
            else
                TriggerEvent('QBCore:Notify', "You failed the hack.", "error", 5000)
            end
         end, 3, 3) -- Number of Blocks, Time (seconds)
        --MINIGAME END
    end
end)