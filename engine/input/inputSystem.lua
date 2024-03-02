TInput = Object:extend()
local baton = require("baton.baton")
function TInput:new(map, pairs,deadzone)
    self.actions = {}
    self.map = baton.new({
        controls = map,
        pairs = pairs,
        deadzone = deadzone
    })
end
function TInput:update(dt)
    self.map:update()
end
function TInput:draw()
    
end
