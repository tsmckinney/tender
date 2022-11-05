ObjHasPizza = Object:extend()
--I know, they're long class names, but it's better to be safe than sorry.
require("object-has-pizza.objhaspizza.common.window")
require("object-has-pizza.objhaspizza.common.logging")
require("object-has-pizza.objhaspizza.graphics.image")
require("object-has-pizza.objhaspizza.graphics.debugGrid")
function ObjHasPizza:new()
    self.window = OHWindow()
    self.log = OHLogging()
    self.imgload = OHImage()
    self.debugGrid = OHDebugGrid(0.5)
end
function ObjHasPizza:update(dt)
    
end
function ObjHasPizza:draw()
    self.debugGrid:draw()
end
function ObjHasPizza:quit()
    love.event.quit()
end