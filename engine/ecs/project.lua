--Bundles every scene together so you can access any scene at any time.
TProject = Object:extend()
require("tender.engine.ecs.thing")

function TProject:new()
    self.spaces = {}
end
function TProject:update(dt)
    if self.spaces then
        for key, value in pairs(self.spaces) do
            self.spaces[key]:update(dt)
        end
    end

end
function TProject:draw()
    if self.spaces then
        for key, value in pairs(self.spaces) do
            self.spaces[key]:draw()
        end
    end
end
function TProject:enterSpace(space, ...)
    table.insert(self.spaces,space)
    for k, v in pairs(self.spaces) do
        if v.name == space.name then
            v.id = k
            v:onEnter()
        end
    end
end
function TProject:leaveSpace(space, ...)
    for k, v in pairs(self.spaces) do
        if v.name == space.name then
            v:onExit()
            table.remove(self.spaces, k)
        end
    end
end
function TProject:switchSpace(space, ...)
    if self.spaces then
        for k, v in pairs(self.spaces) do
            self:leaveSpace(v)
        end
    end
    self:enterSpace(space)
end