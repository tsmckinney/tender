TScene = ObjHasPizza:extend()
require("tender.engine.graphics.image")
require("tender.engine.ecs.entity")
require("tender.engine.common.logging")
function TScene:new(entities)
    self.log = TLogging()
    self.entities = entities
    self.log:assert(self:__tostring() == "TScene", self:__tostring().." isn't a scene.")
end
function TScene:remove()
    
end
function TScene:update(dt)
    for index, value in ipairs(self.entities) do
        self.entities[value]:update(dt)
        self.log:info("Entity <" ..index.."."..value.."> updated")
    end
end
function TScene:draw()
    for index, value in ipairs(self.entities) do
        self.entities[value]:draw()
        self.log:info("Entity <" ..index.."."..value.."> drawn")
    end
end
function TScene:__tostring()
    return "TScene"
end