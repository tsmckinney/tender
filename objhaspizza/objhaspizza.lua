ObjHasPizza = Object:extend()
--I know, they're long class names, but it's better to be safe than sorry.
require("object-has-pizza.objhaspizza.common.window")
require("object-has-pizza.objhaspizza.common.logging")
require("object-has-pizza.objhaspizza.graphics.image")
function ObjHasPizza:new()
    self.window = OHWindow()
    self.log = OHLogging()
    self.imgload = OHImage()
end
function ObjHasPizza:update(dt)
    
end
function ObjHasPizza:draw()
    
end
function ObjHasPizza:quit()
    love.event.quit()
end