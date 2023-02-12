TWindow = Tender:extend()
require("tender.engine.common.logging")
local isWindowOpen
local log
function TWindow:new(name)
    --Window Defaults
    name = name or "Tender_App"
    isWindowOpen = true
    log = TLogging()
    love.window.setMode(0,0,{fullscreen = true})
    love.window.setTitle(name)
    log:info("Window opened")
end

function TWindow:setMode(w,h,s)
    if isWindowOpen == true then
        love.window.updateMode(w,h,s)
    else
        isWindowOpen = true
        love.window.setMode(w,h,s)
    end
end
function TWindow:setTitle(t)
    love.window.setTitle(t)
end
function TWindow:close()
    love.window.close()
    isWindowOpen = false
    log:info("Window closed. Open the TWindow with (whatever value name you assign to the engine).window:setMode.")
end