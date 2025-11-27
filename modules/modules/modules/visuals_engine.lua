local module = {
    ESP = {
        Enabled = true,
        Boxes = true,
        Names = true
    },
    Chams = {
        Enabled = true,
        ThroughWalls = true
    }
}

function module.init(NeverWare)
    module.NeverWare = NeverWare
end

-- Визуальные функции
function module.setupESP() end
function module.setupChams() end

return module
