RegisterCommand( "deletevh", function()
    ped = PlayerPedId()
     vehicle = GetVehiclePedIsIn(ped,false)
        if (IsPedSittingInAnyVehicle(ped)) then 
            Dvfunction(vehicle)
        else 
            notification("~r~Need to be in Vehicle")
        end
end)

function Dvfunction(veh)
    SetEntityAsMissionEntity(veh,true,true)
    DeleteVehicle(veh)
        while (DoesEntityExist(veh)) do 
            DeleteVehicle(veh)
        notification( "~r~ Car deleted." )
    end 
end 

function notification(text)
    TriggerEvent('esx:showNotification', text)
end