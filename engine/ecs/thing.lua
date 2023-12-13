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
    self.x = x
    self.y = y
    self.uuid = makeUUID()
    self.alive = true
    self.components = {}
end
function Thing:update(dt)
    if self.components then
        for key, value in pairs(self.components) do
            self.components[key]:update(dt)
        end
    end
end
function Thing:draw()
    if self.components then
        for key, value in pairs(self.components) do
            self.components[key]:draw()
        end
    end
end
function Thing:getUUID()
    return self.uuid
end