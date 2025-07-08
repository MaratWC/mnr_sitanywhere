local state = {}
local state._index = state

function state:init()
    self.sitting = false
    self.entity = 0
    self.clonedEntity = 0
end

function state:set(key, value)
    self[key] = value
end

return state