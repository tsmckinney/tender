OHImage = Object:extend()

function OHImage:new(link,flags)
    self.image = love.graphics.newImage(link, flags)
    return self.image
end
function OHImage:update(dt)
    
end
function OHImage:draw(x,y,r,sfx,sfy,ox,oy,shearx,sheary)
    x = x or 0
    y = y or 0
    r = r or 0
    sfx = sfx or 1
    sfy = sfy or 1
    ox = ox or 0
    oy = oy or 0
    shearx = shearx or 0
    sheary = sheary or 0
    love.graphics.draw(self.image,x,y,r,sfx,sfy,ox,oy,shearx,sheary)
end