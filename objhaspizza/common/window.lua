OHWindow = ObjHasPizza:extend()
require("object-has-pizza.objhaspizza.common.logging")
local isWindowOpen
local log
function OHWindow:new()
    --Window Defaults
    self.isWindowOpen = true
    self.log = OHLogging()
    love.window.setTitle("Object_Has_App")
    self.log:info("Window opened")
end

function OHWindow:setMode(w,h,s)
    if self.isWindowOpen == true then
        love.window.updateMode(w,h,s)
    else
        self.isWindowOpen = true
        love.window.setMode(w,h,s)
    end
    love.window.getDesktopDimensions()
    if w == 0 and h == 0 then
        dw, dh = love.window.getDesktopDimensions()
        self.log:info("Window mode changed to "..dw.."x"..dh.." with settings: "..tostring(s))
    else
        self.log:info("Window mode changed to "..w.."x"..h.." with settings: "..tostring(s))
    end
end
function OHWindow:setTitle(t)
    love.window.setTitle(t)
    self.log:info("Title changed to "..t)
end
function OHWindow:close()
    love.window.close()
    self.isWindowOpen = false
    self.log:info("Window closed. Open the OHWindow with (whatever value name you assign to the engine).window:setMode.")
end
function OHWindow:__tostring()
    return "OHWindow"
 end