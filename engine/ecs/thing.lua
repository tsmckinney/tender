--Makes an entity in the scene.
require("tender.engine.common.utils")
Thing = Object:extend()

function Thing:new(x, y, args)
    local args = args or {}
    if args then
        for key, value in pairs(args) do
            self[key]=value
        end
    end
    self.uuid = makeUUID()
    self.alive = true
    self.x = 0
    self.y = 0
    self.components = {}
end
function Thing:update(dt)
    if self.components then
        for key, value in pairs(self.components) do
            value:update(dt)
        end
    end
end
function Thing:draw()
    if self.components then
        for key, value in pairs(self.components) do
            value:draw()
        end
    end
end
function Thing:getUUID()
    return self.uuid
end