Tender = Object:extend()
--I know, they're long class names, but it's better to be safe than sorry.
require("tender.engine.common.window")
require("tender.engine.common.logging")
require("tender.engine.graphics.image")
require("tender.engine.graphics.debugGrid")
require("tender.engine.ecs.project")
function Tender:new(name, settings)
    self.settings = settings or {}
    --If debug mode is enabled, use settings and enable the grid.
    --If not, just enable everything except the debug stuff.
    self.window = TWindow(name)
    self.log = TLogging()
    self.imgload = TImage()
    self.ecs = TProject()
    if settings and settings.grid == true then
        self.debugGrid = TDebugGrid()
    end
end
function Tender:update(dt)
    self.ecs:update(dt)
    love.math.setRandomSeed(os.time())
end
function Tender:draw()
    if self.settings and self.settings.grid then
        self.debugGrid:draw()
    end
    self.ecs:draw()
end
function Tender:quit()
    love.event.quit()
end