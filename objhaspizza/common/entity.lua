OHEntity = ObjHasPizza:extend()
require("object-has-pizza.objhaspizza.graphics.image")
local w,h,x,y,r
local texture, texload
local texwidth, texheight
function OHEntity:new(tex,tflags,xpos,ypos,width,height,rotate)
    texload = OHImage()
    texture = texload:load(tex,tflags)
    x = xpos
    y = ypos
    texwidth = texload:getWidth(texture)
    texheight = texload:getHeight(texture)
    w = (1/texwidth) * width
    h = (1/texheight) * height
    r = rotate
end
function OHEntity:remove()
    
end
function OHEntity:update(dt)
end
function OHEntity:draw()
    texload:draw(texture,x,y,r,w,h)
end