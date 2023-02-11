OHScene = ObjHasPizza:extend()
require("object-has-pizza.objhaspizza.graphics.image")
require("object-has-pizza.objhaspizza.ecs.entity")
require("object-has-pizza.objhaspizza.common.logging")
function OHScene:new(entities)
    self.log = OHLogging()
    self.entities = entities
    self.log:assert(self:__tostring() == "OHScene", self:__tostring().." isn't a scene.")
end
function OHScene:remove()
    
end
function OHScene:update(dt)
    for index, value in ipairs(self.entities) do
        self.entities[value]:update(dt)
        self.log:info("Entity <" ..index.."."..value.."> updated")
    end
end
function OHScene:draw()
    for index, value in ipairs(self.entities) do
        self.entities[value]:draw()
        self.log:info("Entity <" ..index.."."..value.."> drawn")
    end
end
function OHScene:__tostring()
    return "OHScene"
end