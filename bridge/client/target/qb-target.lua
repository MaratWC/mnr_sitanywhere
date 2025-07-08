---@diagnostic disable: duplicate-set-field, lowercase-global

if GetResourceState("qb-target") ~= "started" then return end

local state = require "client.state"

target = {}

function target.AddModels(models)
    exports["qb-target"]:AddTargetModel(models, {
        options = {
            {
                type = "client",
                event = "mnr_sitanywhere:client:Sit",
                icon = "fas fa-chair",
                label = locale("target.sit"),
                canInteract = function(entity)
                    return DoesEntityExist(entity) and not state.sitting
                end
            }
        },
        distance = 3.0,
    })
end