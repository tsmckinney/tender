TIMap = Object:extend()

function TIMap:new(keyMap)
    self.actions = {}
    self.keyMap = keyMap
end
function TIMap:update(dt)
    for k, v in pairs(self.keyMap) do
        if love.keyboard.isDown(k) then
            v()
            table.insert(self.actions, v) 
        end
    end
end
function TIMap:draw()
    
end
