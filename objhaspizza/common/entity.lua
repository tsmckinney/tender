OHEntity = ObjHasPizza:extend()
require("object-has-pizza.objhaspizza.graphics.image")
function OHEntity:new(tex,tflags,xpos,ypos,width,height,rotate)
    self.texload = OHImage()
    self.texture = self.texload:load(tex,tflags)
    self.x = xpos
    self.y = ypos
    self.texwidth = self.texload:getWidth(self.texture)
    self.texheight = self.texload:getHeight(self.texture)
    self.w = (1/self.texwidth) * width
    self.h = (1/self.texheight) * height
    self.r = rotate
end
function OHEntity:remove()
    
end
function OHEntity:update(dt)
end
function OHEntity:draw()
    self.texload:draw(self.texture,self.x,self.y,self.r,self.w,self.h)
end