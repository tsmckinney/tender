--Makes an entity in the scene.
require("tender.engine.ecs.component")
Transform = TComponent:extend()

function Transform:new(thing,args)
    self.super:new(thing, args)
    self.name = "Transform"
    --In Lua, if you want to pass functionality from one thing to another thing extending from the first thing, you have to do this:
end
function Transform:update(dt)
    
end
function Transform:draw()
    
end