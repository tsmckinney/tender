OHLogging = ObjHasPizza:extend()

function OHLogging:new()
    
end
function OHLogging:info(msg)
    print("Object Has Info "..os.date()..": " .. msg)
end
function OHLogging:warn(msg)
    print("Object Has Warning "..os.date()..": " .. msg)
end
function OHLogging:error(msg)
    print("Object Has Error "..os.date()..": " .. msg)
end
function OHLogging:fatal(msg)
    error("Object Has Fatal Error "..os.date()..": " .. msg)
end
function OHLogging:assert(msg,val)
    assert(val,("Object Has Assertion "..os.date()..": " .. msg))
end
function OHLogging:__tostring()
   return "OHLogging"
end