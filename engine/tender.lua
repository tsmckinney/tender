Tender = Object:extend()
--I know, they're long class names, but it's better to be safe than sorry.
require("tender.engine.common.window")
require("tender.engine.common.logging")
require("tender.engine.graphics.image")
require("tender.engine.graphics.debugGrid")
function Tender:new(name, debugMode, settings)
    self.debug = debugMode
    --If debug mode is enabled, use settings and enable the grid.
    --If not, just enable everything except the debug stuff.
    if self.debug then
        self.settings = settings
        if self.settings.window == true or self.settings.everything == true then
            self.window = TWindow(name)
        end
        if self.settings.log == true or self.settings.everything == true then
            self.log = TLogging()
        end
        if self.settings.img == true or self.settings.everything == true then
            self.imgload = TImage()
        end
        self.debugGrid = TDebugGrid(1,self.debug)
        self.log:warn("WARNING: Debug mode is enabled. Adjusting certain parameters such as the settings variable may break your project. Use with caution.", "Tender")
    else
        self.window = TWindow(name)
        self.log = TLogging()
        self.imgload = TImage()
    end
end
function Tender:update(dt)

end
function Tender:draw()
    if self.debug then
        self.debugGrid:draw()
    end
end
function Tender:quit()
    love.event.quit()
end