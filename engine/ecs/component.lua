--Makes an entity in the scene.
require("tender.engine.common.utils")
TComponent = Object:extend()

function TComponent:new(thing,args)
    if args then
        for key, value in pairs(args) do
            self[key]=value
        end
    end
    self.thing = thing
end
function TComponent:update(dt)
    
end
function TComponent:draw()
    
end