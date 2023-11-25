--Thanks to jrus for the original UUID function!
function makeUUID()
    local format ="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"
    return string.gsub(format, "[xy]", function (c)
        local v = (c=="x") and love.math.random(0,0xf) or love.math.random(8,0xb)
        return string.format("%x", v)
    end)
end
