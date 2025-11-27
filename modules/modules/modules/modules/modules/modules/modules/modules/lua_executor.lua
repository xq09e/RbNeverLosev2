local module = {
    Scripts = {},
    Enabled = true
}

function module.init(NeverWare)
    module.NeverWare = NeverWare
end

-- LUA исполнитель
function module.executeScript() end
function module.loadFromURL() end

return module
