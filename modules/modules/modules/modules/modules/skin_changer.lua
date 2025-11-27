local module = {
    Enabled = true,
    Weapons = {
        AK47 = {SkinId = 1},
        AWP = {SkinId = 5}
    }
}

function module.init(NeverWare)
    module.NeverWare = NeverWare
end

-- Скинчейнджер
function module.applySkins() end
function module.changeKnife() end

return module
