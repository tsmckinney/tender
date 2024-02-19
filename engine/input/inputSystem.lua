TInput = Object:extend()

function TInput:new(keyMap, mouseMap, padMap)
    self.keyActions = {}
    self.mouseActions = {}
    self.padActions = {}
    self.keyMap = keyMap or {}
    self.mouseMap = mouseMap or {}
    self.padMap = padMap or {}
end
function TInput:update(dt)
    for k, v in pairs(self.keyMap) do
        if love.keyboard.isDown(k) then
            v()
            table.insert(self.keyActions, {k,v}) 
        end
    end
    for k, v in pairs(self.mouseMap) do
        if k == true then
            v()
            table.insert(self.mouseActions, {k,v})
        end
    end
    for k, v in pairs(self.padMap) do
        if k == true then
            v()
            table.insert(self.padActions, {k,v})
        end
    end
end
function TInput:draw()
    
end
