OHImgLoad = Object:extend()
require("object-has-pizza.objhaspizza.graphics.image")
function OHImgLoad:new()
    
end
function OHImgLoad:load(link,flags)
    self.image = OHImage(link,flags)
    return self.image
end
function OHImgLoad:draw(img,x,y,r,sfx,sfy,ox,oy,shearx,sheary)
    img:draw(x,y,r,sfx,sfy,ox,oy,shearx,sheary)
end