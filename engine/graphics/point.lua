TPoint = Object:extend()
require("tender.engine.common.logging")
function TPoint:new(x,y)
    self.x = 0
    self.y = 0
end
function TPoint:update(dt)
    
end
function TPoint:draw()
    
end
function TPoint:__tostring()
    return "TPoint"
end