Window = Object:extend()

function Window:new()
    --Window Defaults
    love.window.setMode(0,0,{fullscreen = true})
    love.window.setTitle("Object_Has_App")
end