Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        SetPedCanLosePropsOnDamage(playerPed, false, 0)
        Citizen.Wait(0)
    end
end)