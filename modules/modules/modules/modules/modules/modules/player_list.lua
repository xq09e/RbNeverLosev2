local module = {
    PlayerInfo = {},
    Priority = {}
}

function module.init(NeverWare)
    module.NeverWare = NeverWare
end

-- Система игроков
function module.updatePlayerList() end
function module.setPriority() end

return module
