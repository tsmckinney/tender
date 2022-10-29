OHImage = ObjHasPizza:extend()

function OHImage:new()
end
function OHImage:load(link,flags)
    flags = flags or {}
    local image = {}
    image.tex = love.graphics.newImage(link, flags)
    image.dimensions = image.tex:getPixelDimensions()
    image.width = image.tex:getWidth()
    image.height = image.tex:getHeight()
    return image
end
function OHImage:update(dt)
    
end
function OHImage:getDimensions(image)
    return image.dimensions
end
function OHImage:getWidth(image)
    return image.width
end
function OHImage:getHeight(image)
    return image.height
end
function OHImage:draw(image,x,y,r,sfx,sfy,ox,oy,shearx,sheary)
    x = x or 0
    y = y or 0
    r = r or 0
    sfx = sfx or 1
    sfy = sfy or 1
    ox = ox or 0
    oy = oy or 0
    shearx = shearx or 0
    sheary = sheary or 0
    love.graphics.draw(image.tex,x,y,r,sfx,sfy,ox,oy,shearx,sheary)
end