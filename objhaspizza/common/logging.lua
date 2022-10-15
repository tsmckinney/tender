Logging = Object:extend()

function Logging:new()
    
end
function Logging:info(msg)
    print("Object Has Info "..os.date()..": " .. msg)
end
function Logging:warn(msg)
    print("Object Has Warning "..os.date()..": " .. msg)
end
function Logging:error(msg)
    print("Object Has Error "..os.date()..": " .. msg)
end
function Logging:fatal(msg)
    error("Object Has Fatal Error "..os.date()..": " .. msg)
end