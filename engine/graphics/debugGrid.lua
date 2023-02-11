TDebugGrid = Tender:extend()

function TDebugGrid:new(gsize)
    self.gridSize = gsize
end
function TDebugGrid:update(dt)
    
end
function TDebugGrid:draw()
    for r = 0, love.graphics.getWidth()/(32*self.gridSize), 1 do
        for c = 0, love.graphics.getHeight()/(32*self.gridSize), 1 do
            love.graphics.rectangle("line",r*(32*self.gridSize),c*(32*self.gridSize),32*self.gridSize,32*self.gridSize)
        end
    end
end