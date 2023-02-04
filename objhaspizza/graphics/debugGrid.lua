OHDebugGrid = ObjHasPizza:extend()

function OHDebugGrid:new(gsize)
    self.gridSize = gsize
end
function OHDebugGrid:update(dt)
    
end
function OHDebugGrid:draw()
    for r = 0, love.graphics.getWidth()/(64*self.gridSize), 1 do
        for c = 0, love.graphics.getHeight()/(64*self.gridSize), 1 do
            love.graphics.setColor(1,1,1,0.1)
            love.graphics.rectangle("line",r*(64*self.gridSize),c*(64*self.gridSize),64*self.gridSize,64*self.gridSize)
            love.graphics.setColor(1,1,1,1)
        end
    end
end
function OHDebugGrid:__tostring()
    return "OHDebugGrid"
end