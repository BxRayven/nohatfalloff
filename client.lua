--  __    __   ______         __    __   ______  ________        ________   ______   __        __               ______   ________  ________                                                                  
-- |  \  |  \ /      \       |  \  |  \ /      \|        \      |        \ /      \ |  \      |  \             /      \ |        \|        \                                                                 
-- | $$\ | $$|  $$$$$$\      | $$  | $$|  $$$$$$\\$$$$$$$$      | $$$$$$$$|  $$$$$$\| $$      | $$            |  $$$$$$\| $$$$$$$$| $$$$$$$$                                                                 
-- | $$$\| $$| $$  | $$      | $$__| $$| $$__| $$  | $$         | $$__    | $$__| $$| $$      | $$            | $$  | $$| $$__    | $$__                                                                     
-- | $$$$\ $$| $$  | $$      | $$    $$| $$    $$  | $$         | $$  \   | $$    $$| $$      | $$            | $$  | $$| $$  \   | $$  \                                                                    
-- | $$\$$ $$| $$  | $$      | $$$$$$$$| $$$$$$$$  | $$         | $$$$$   | $$$$$$$$| $$      | $$            | $$  | $$| $$$$$   | $$$$$                                                                    
-- | $$ \$$$$| $$__/ $$      | $$  | $$| $$  | $$  | $$         | $$      | $$  | $$| $$_____ | $$_____       | $$__/ $$| $$      | $$                                                                       
-- | $$  \$$$ \$$    $$      | $$  | $$| $$  | $$  | $$         | $$      | $$  | $$| $$     \| $$     \       \$$    $$| $$      | $$                                                                       
--  \$$   \$$  \$$$$$$        \$$   \$$ \$$   \$$   \$$          \$$       \$$   \$$ \$$$$$$$$ \$$$$$$$$        \$$$$$$  \$$       \$$                                                                       

-- JOIN OUR FIVEM ROLEPLAY SERVER AT DISCORD.GG/Ff7YHRAGsu
-- LOOKING FOR HIGH COMMAND MEMBERS ITS A BRITISH SERVER

--====================================================================================================================================================--

local config = {
    delay = 0, -- Adjust this value to change the delay
    command = "nohatfalloff", -- Adjust this value to change the command
    enableHatFunctionality = true -- Adjust this value to enable/disable the hat functionality
}

local isHatFunctionalityEnabled = true

Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        if isHatFunctionalityEnabled then
            SetPedCanLosePropsOnDamage(playerPed, false, 0)
        end
        Citizen.Wait(config.delay)
    end
end)

RegisterCommand(config.command, function(source, args, rawCommand)
    isHatFunctionalityEnabled = not isHatFunctionalityEnabled

    if isHatFunctionalityEnabled then
        print("Hat functionality enabled.")
    else
        print("Hat functionality disabled.")
    end
end)