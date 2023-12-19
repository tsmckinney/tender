--Manages the current scene and all its things.
require("tender.engine.tender")
TSpace = Object:extend()
require("tender.engine.common.utils")
require("tender.engine.ecs.thing")
require("tender.engine.ecs.blackscreen")
function TSpace:new()
    self.things = {}
    self.name = ""
    self.id = 0
end
function TSpace:update(dt)
    if self.things then
        for k, v in pairs(self.things) do
            self.things[k]:update(dt)
        end
        for i = #self.things, 1,-1 do
            if self.things[i].alive == false then
                table.remove(self.things, i)
            end
        end
    end
end
function TSpace:draw()
    if self.things then
        for key, value in pairs(self.things) do
            self.things[key]:draw()
        end
    end
end
function TSpace:onEnter()
    self:addThing(TBlackScreen(0,0,{}))
    self:draw()
end
function TSpace:onExit()
    table.remove(self.things)
end
function TSpace:addThing(thing)
    table.insert(self.things, thing)
end
function TSpace:getUUID()
    return self.id
end