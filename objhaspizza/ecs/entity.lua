OHEntity = ObjHasPizza:extend()
require("object-has-pizza.objhaspizza.graphics.image")
require("object-has-pizza.objhaspizza.common.logging")
function OHEntity:new(tex,tflags,xpos,ypos,width,height,rotate, lay)
    lay = lay or 0
    self.log = OHLogging()
    self.texload = OHImage()
    self.texture = self.texload:load(tex,tflags)
    self.x = xpos
    self.y = ypos
    self.texwidth = self.texload:getWidth(self.texture)
    self.texheight = self.texload:getHeight(self.texture)
    self.w = (1/self.texwidth) * width
    self.h = (1/self.texheight) * height
    self.r = rotate
    self.layer = lay
    self.log:assert(self:__tostring() == "OHEntity", self:__tostring().." isn't an entity.")
end
function OHEntity:remove()
    
end
function OHEntity:update(dt)
end
function OHEntity:draw()
    self.texload:draw(self.texture,self.x,self.y,self.r,self.w,self.h)
end
function OHEntity:__tostring()
    return "OHEntity"
end