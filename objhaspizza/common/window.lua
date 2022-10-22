OHWindow = Object:extend()
require("object-has-pizza.objhaspizza.common.logging")
local isWindowOpen
local log
function OHWindow:new()
    --Window Defaults
    isWindowOpen = true
    log = OHLogging()
    love.window.setMode(0,0,{fullscreen = true})
    love.window.setTitle("Object_Has_App")
    log:info("Window opened")
end

function OHWindow:setMode(w,h,s)
    if isWindowOpen == true then
        love.window.updateMode(w,h,s)
    else
        isWindowOpen = true
        love.window.setMode(w,h,s)
    end
end
function OHWindow:setTitle(t)
    love.window.setTitle(t)
end
function OHWindow:close()
    love.window.close()
    isWindowOpen = false
    log:info("Window closed. Open the OHWindow with (whatever value name you assign to the engine).window:setMode.")
end