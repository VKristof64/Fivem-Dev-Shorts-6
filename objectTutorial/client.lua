local model = "prop_portaloo_01a"
local obj = nil

RegisterCommand("objectSpawn", function(source, args, rawCommand)
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(10) end
    obj = CreateObject(model, -144.4117, -944.5606, 269.1352, false, false, false)
    FreezeEntityPosition(obj, true)
end)

RegisterCommand("objectDelete", function(source, args, rawCommand)
    DeleteEntity(obj)
    obj = nil
end)