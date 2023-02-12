TComponent = Tender:extend()
function TComponent:new(id)
    self.id = id
end
function TComponent:remove()
    
end
function TComponent:update(dt)
end
function TComponent:draw()
    
end
function TComponent:__tostring()
    return "TComponent"
end