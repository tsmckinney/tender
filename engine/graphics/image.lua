TImage = Object:extend()
require("tender.engine.common.logging")
function TImage:new()
    self.log = TLogging()
end
function TImage:load(link,flags)
    flags = flags or {}
    local image = {}
    image.tex = love.graphics.newImage(link, flags)
    image.dimensions = image.tex:getPixelDimensions()
    image.width = image.tex:getWidth()
    image.height = image.tex:getHeight()
    self.log:info("Image loaded: "..link.."with flags " .. flags, "Tender.Graphics.TImage")
    return image
end
function TImage:update(dt)
    
end
function TImage:getDimensions(image)
    return image.dimensions
end
function TImage:getWidth(image)
    return image.width
end
function TImage:getHeight(image)
    return image.height
end
function TImage:draw(image,x,y,r,sfx,sfy,ox,oy,shearx,sheary)
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
function TImage:__tostring()
    return "TImage"
end