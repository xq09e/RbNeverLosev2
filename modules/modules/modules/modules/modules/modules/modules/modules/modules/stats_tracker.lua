local module = {
    Kills = 0,
    Deaths = 0,
    Headshots = 0
}

function module.init(NeverWare)
    module.NeverWare = NeverWare
end

-- Трекер статистики
function module.updateStats() end
function module.showSession() end

return module
