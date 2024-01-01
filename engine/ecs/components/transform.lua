--Makes an entity in the scene.
require("tender.engine.ecs.component")
Transform = TComponent:extend()

function Transform:new(thing,args)
    Transform.super:new(thing, args)
    self.name = "Transform"
end
function Transform:update(dt)
    Transform.super:update(dt)
end
function Transform:draw()
    Transform.super:draw()
end