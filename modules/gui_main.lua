local module = {}

function module.init(NeverWare)
    module.NeverWare = NeverWare
end

function module.createGUI()
    -- Создание основного GUI
    local gui = Instance.new("ScreenGui")
    gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    
    -- ... код создания интерфейса
end

function module.toggleMenu()
    -- Переключение видимости меню
end

return module
