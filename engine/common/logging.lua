TLogging = Object:extend()

function TLogging:new()
    
end
function TLogging:info(msg, cfrom)
    print("[Tender.Info "..os.date()..",".." Called from " .. cfrom .. "] " .. msg)
end
function TLogging:warn(msg, cfrom)
    print("[Tender.Warn "..os.date()..",".." Called from " .. cfrom .. "] " .. msg)
end
function TLogging:error(msg, cfrom)
    print("[Tender.Error "..os.date()..",".." Called from " .. cfrom .. "] " .. msg)
end
function TLogging:fatal(msg, cfrom)
    error("[Tender.Fatal "..os.date()..",".." Called from " .. cfrom .. "] " .. msg)
end
function TLogging:assert(msg,val, cfrom)
    assert(val,("[Tender.Assert "..os.date()..",".." Called from " .. cfrom .. "] " .. msg))
end