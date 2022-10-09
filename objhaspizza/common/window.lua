Window = Object:extend()

function Window:new()
    --Window Defaults
    self.isWindowOpen = true
    love.window.setMode(0,0,{fullscreen = true})
    love.window.setTitle("Object_Has_App")
end

function Window:setMode(w,h,s)
    if self.isWindowOpen == true then
        love.window.updateMode(w,h,s)
    else
        love.window.setMode(w,h,s)
    end
end
function Window:setTitle(t)
    love.window.setTitle(t)
end
function Window:close()
    love.window.close()
    self.isWindowOpen = false
end