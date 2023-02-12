TScene = ObjHasPizza:extend()
require("tender.engine.graphics.image")
require("tender.engine.ecs.entity")
require("tender.engine.common.logging")
function TScene:new(entities,name, id)
    self.log = TLogging()
    self.entities = entities
    self.name = name
    self.id = id
end
function TScene:remove()
    
end
function TScene:update(dt)
    for index, value in ipairs(self.entities) do
        self.entities[value]:update(dt)
    end
    self.log:info("Scene <" ..self.__tostring().."> updated")
end
function TScene:draw()
    for index, value in ipairs(self.entities) do
        self.entities[value]:draw()
    end
    self.log:info("Scene <" ..self.__tostring().."> drawn")
end
function TScene:addEntity(entity)
    local entityID = math.randomseed(os.time)
    entity.id = entityID
    table.insert( self.components, entityID, entity )
    return {entity = entity, id = entityID}
end
function TScene:removeEntity(entity)
    table.remove(self.components, entity.id)
end
function TScene:__tostring()
    if self.name == nil then
        return "TScene"
    else
        return self.name
    end
end