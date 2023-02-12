TEntity = Tender:extend()
require("tender.engine.graphics.image")
require("tender.engine.ecs.component")
function TEntity:new(components, id)
    components = components or {}
    self.components = components
    self.id = id
end
function TEntity:remove()
    
end
function TEntity:update(dt)
    for index, value in ipairs(self.components) do
        self.components[value]:update(dt)
    end
    self.log:info("Entity <" ..self.__tostring().."> updated")
end
function TEntity:draw()
    for index, value in ipairs(self.components) do
        self.components[value]:draw()
    end
    self.log:info("Entity <" ..self.__tostring().."> drawn")
end
function TEntity:addComponent(component)
    local componentID = math.randomseed(os.time)
    component.id = componentID
    table.insert( self.components, componentID, component )
    return {component = component, id = componentID}
end
function TEntity:removeComponent(component)
    table.remove(self.components, component.id)
end
function TEntity:__tostring()
    return "TEntity"
end