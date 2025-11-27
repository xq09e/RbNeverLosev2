local module = {
    Rage = {
        Aimbot = {Enabled = true, FOV = 35},
        AutoWall = {Enabled = true, Damage = 50},
        Resolver = {Enabled = true}
    },
    Legit = {
        Aimbot = {Enabled = false, FOV = 5},
        Triggerbot = {Enabled = true}
    }
}

function module.init(NeverWare)
    module.NeverWare = NeverWare
end

-- Боевые функции
function module.setupRageAimbot() end
function module.setupLegitAimbot() end
function module.setupTriggerbot() end
function module.setupAutoWall() end

return module
