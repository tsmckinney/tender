Tender = Object:extend()
--I know, they're long class names, but it's better to be safe than sorry.
require("tender.engine.common.window")
require("tender.engine.common.logging")
require("tender.engine.graphics.image")
require("tender.engine.graphics.debugGrid")
function Tender:new(name)
    self.window = TWindow()
    self.log = TLogging()
    self.imgload = TImage()
    self.debugGrid = TDebugGrid(0.5)
    self.project = TProject(name)
end
function Tender:update(dt)
    
end
function Tender:draw()
    self.debugGrid:draw()
end
function Tender:quit()
    love.event.quit()
end