--Makes an entity in the scene.
require("tender.engine.ecs.component")
Transform = TComponent:extend()

function Transform:new(thing,args)
    self.x = 0
    self.y = 0
    self.r = 0
    self.sx = 0
    self.sy = 0
    --In Lua, if you want to pass functionality from one thing to another thing extending from the first thing, you have to do this:
    self.super:new(thing, args)
end
function Transform:update(dt)
    
end
function Transform:draw()
    
end