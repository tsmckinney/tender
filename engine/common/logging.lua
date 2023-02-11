TLogging = Tender:extend()

function TLogging:new()
    
end
function TLogging:info(msg)
    print("[Tender.Info "..os.date().."] " .. msg)
end
function TLogging:warn(msg)
    print("[Tender.Warn "..os.date().."] " .. msg)
end
function TLogging:error(msg)
    print("[Tender.Error "..os.date().."] " .. msg)
end
function TLogging:fatal(msg)
    error("[Tender.Fatal "..os.date().."] " .. msg)
end
function TLogging:assert(msg,val)
    assert(val,("[Tender.Assert "..os.date().."] " .. msg))
end