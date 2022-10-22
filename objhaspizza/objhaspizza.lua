ObjHasPizza = Object:extend()
--I know, it's a long class name, but it's better to be safe than sorry.
require("object-has-pizza.objhaspizza.common.window")
require("object-has-pizza.objhaspizza.common.logging")
function ObjHasPizza:new()
    self.window = OHWindow()
    self.log = OHLogging()
end
function ObjHasPizza:update(dt)
    
end
function ObjHasPizza:draw()
    
end