TScene = Tender:extend()
require("tender.engine.graphics.image")
require("tender.engine.ecs.entity")
require("tender.engine.common.logging")
function TScene:new()
    self.log = TLogging()
    self.entities = {}
    self.activeEntities = {}
    self.name = ""
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
    table.insert(self.entities, entityID, entity)
    table.insert(self.activeEntities, entityID, entity)
    return {entity = entity, id = entityID}
end
function TScene:removeEntity(entity)
    table.remove(self.activeEntities,entity.id)
    table.remove(self.entities, entity.id)
end
function TScene:onUnload()
    table.remove(self.activeEntities)
end
function TScene:onLoad(activeEntities)
    self.activeEntities = activeEntities
end
function TScene:__tostring()
    if self.name == nil then
        return "TScene"
    else
        return self.name
    end
end