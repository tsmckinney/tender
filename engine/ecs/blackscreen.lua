require("tender.engine.ecs.thing")

TBlackScreen = Thing:extend()

--Makes an entity in the scene.

function TBlackScreen:new(x, y, args)
    TBlackScreen.super.new(self,x,y,args)
end
function TBlackScreen:update(dt)
    TBlackScreen.super:update(dt)
end
function TBlackScreen:draw()
    TBlackScreen.super:draw()
    love.graphics.setColor(0,0,0)
    local safeW, safeH = love.window.getDesktopDimensions()
    love.graphics.rectangle("fill", 0, 0, safeW, safeH)
end
function TBlackScreen:__tostring()
    return "TBlackScreen"
end