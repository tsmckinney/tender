TProject = Tender:extend()
require("tender.engine.graphics.image")
require("tender.engine.ecs.scene")
require("tender.engine.common.logging")
local scenes
function TProject:new(name,debug)
    self.log = TLogging()
    self.name = name
    scenes = {}
    self.debug = debug
    self.activeScene = nil
end
function TProject:remove()
    
end
function TProject:update(dt)
    for index, value in ipairs(scenes) do
        if self.activeScene ~= nil then
            if scenes[value] == self.activeScene then
                self.activeScene:update(dt)
            end
        end
    end
    if self.debug then
        self.log:info("Project <" ..self.name.."> updated")
    end
end
function TProject:draw()
    for index, value in ipairs(scenes) do
        --Only update and draw if there's an active scene.
        if self.activeScene ~= nil then
            if scenes[value] == self.activeScene then
                self.activeScene:draw()
            end
        end
    end
    if self.debug then
        self.log:info("Project <" ..self.name.."> drawn")
    end
end
function TProject:addScene(scene)
    math.randomseed(os.time())
    local sceneID = math.random()
    table.insert( scenes, sceneID, scene )
    return {scene = scene, id = sceneID}
end
function TProject:removeScene(scene)
    table.remove(scenes, scene.id)
end
function TProject:setActiveScene(scene)
    self.activeScene:onUnload()
    self.activeScene = scene
    self.activeScene:onLoad(scene.entities)
end