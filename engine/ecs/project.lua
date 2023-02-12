TProject = Tender:extend()
require("tender.engine.graphics.image")
require("tender.engine.ecs.entity")
require("tender.engine.common.logging")
function TProject:new(scenes, name)
    self.log = TLogging()
    self.name = name
    self.scenes = scenes
end
function TProject:remove()
    
end
function TProject:update(dt)
    for index, value in ipairs(self.scenes) do
        self.scenes[value]:update(dt)
    end
    self.log:info("Project <" ..self.__tostring().."> updated")
end
function TProject:draw()
    for index, value in ipairs(self.scenes) do
        self.scenes[value]:draw()
    end
    self.log:info("Project <" ..self.__tostring().."> drawn")
end
function TProject:addScene(scene)
    local sceneID = math.randomseed(os.time)
    scene.id = sceneID
    table.insert( self.components, sceneID, scene )
    return {scene = scene, id = sceneID}
end
function TProject:removeScene(scene)
    table.remove(self.components, scene.id)
end
function TProject:__tostring()
    if self.name == nil then
        return "TProject"
    else
        return self.name
    end
end