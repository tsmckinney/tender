TEntity = Tender:extend()
require("tender.engine.graphics.image")
function TEntity:new(tex,tflags,xpos,ypos,width,height,rotate)
    self.texload = TImage()
    self.texture = self.texload:load(tex,tflags)
    self.x = xpos
    self.y = ypos
    self.texwidth = self.texload:getWidth(self.texture)
    self.texheight = self.texload:getHeight(self.texture)
    self.w = (1/self.texwidth) * width
    self.h = (1/self.texheight) * height
    self.r = rotate
end
function TEntity:remove()
    
end
function TEntity:update(dt)
end
function TEntity:draw()
    self.texload:draw(self.texture,self.x,self.y,self.r,self.w,self.h)
end
function TEntity:__tostring()
    return "TEntity"
end