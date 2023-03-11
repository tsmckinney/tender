Tender = Object:extend()
--I know, they're long class names, but it's better to be safe than sorry.
require("tender.engine.common.window")
require("tender.engine.common.logging")
require("tender.engine.graphics.image")
require("tender.engine.graphics.debugGrid")
require("tender.engine.ecs.project")
function Tender:new(name, debugMode)
    self.window = TWindow(name)
    self.log = TLogging()
    self.imgload = TImage()
    self.debugGrid = TDebugGrid(1,debugMode)
    self.project = TProject(name)
end
function Tender:update(dt)
    self.project:update(dt)
end
function Tender:draw()
    self.debugGrid:draw()
    self.project:draw()
end
function Tender:quit()
    love.event.quit()
end