--Makes an entity in the scene.
require("tender.engine.common.utils")
require("tender.engine.ecs.components.transform")
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
    self.components = {}
    self.transform = Transform(self, {x = x, y = y})
    table.insert(self.components, self.transform)
end
function Thing:update(dt)
    if self.components then
        for key, value in pairs(self.components) do
            value:update(dt)
        end
    end
    print(self.components)
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