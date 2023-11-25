TDebugGrid = Object:extend()

function TDebugGrid:new(gsize,debug)
    self.gridSize = gsize
    self.debug = debug
end
function TDebugGrid:update(dt)
    
end
function TDebugGrid:draw()
    if self.debug == true then
        for r = 0, love.graphics.getWidth()/(32*self.gridSize), 1 do
            for c = 0, love.graphics.getHeight()/(32*self.gridSize), 1 do
                love.graphics.setColor(1,1,1,0.2)
                love.graphics.rectangle("line",r*(32*self.gridSize),c*(32*self.gridSize),32*self.gridSize,32*self.gridSize)
                love.graphics.setColor(1,1,1,1)
            end
        end
    end
end
function TDebugGrid:__tostring()
    return "TDebugGrid"
end