local module = {
    Configs = {"Default", "Rage", "Legit"},
    Current = "Default"
}

function module.init(NeverWare)
    module.NeverWare = NeverWare
end

-- Система конфигов
function module.saveConfig() end
function module.loadConfig() end

return module
