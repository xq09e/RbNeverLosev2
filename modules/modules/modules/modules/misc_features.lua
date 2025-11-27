local module = {
    Clantag = {Enabled = true},
    RevealRanks = {Enabled = true},
    AutoAccept = {Enabled = true}
}

function module.init(NeverWare)
    module.NeverWare = NeverWare
end

-- Дополнительные функции
function module.setupClantag() end
function module.setupAutoAccept() end

return module
