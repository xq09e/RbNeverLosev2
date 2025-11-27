-- NeverWare Ultimate Loader
-- Author: Colin

local NeverWare = {
    Name = "NeverWare",
    Version = "4.0",
    Modules = {},
    Config = {
        MenuKey = "RightShift",
        AutoLoad = true,
        Watermark = true
    }
}

-- Загрузка модулей с GitHub
function loadModule(moduleName)
    local moduleUrl = "https://raw.githubusercontent.com/xq09e/neverware/main/modules/" .. moduleName .. ".lua"
    
    local success, result = pcall(function()
        local response = game:HttpGet(moduleUrl)
        return loadstring(response)()
    end)
    
    if success then
        print("✅ Module loaded: " .. moduleName)
        return result
    else
        warn("❌ Failed to load module: " .. moduleName)
        return nil
    end
end

-- Основные модули
local coreModules = {
    "gui_main",
    "combat_system", 
    "visuals_engine",
    "movement_system",
    "misc_features",
    "skin_changer",
    "player_list",
    "config_system",
    "lua_executor",
    "stats_tracker"
}

-- Загрузка всех модулей
for _, moduleName in pairs(coreModules) do
    local module = loadModule(moduleName)
    if module then
        NeverWare.Modules[moduleName] = module
        if module.init then
            module.init(NeverWare)
        end
    end
end

-- Проверка загрузки
local loadedCount = 0
for name, module in pairs(NeverWare.Modules) do
    loadedCount = loadedCount + 1
end

print("🚀 NeverWare Ultimate loaded! Modules: " .. loadedCount .. "/" .. #coreModules)

-- Создание водяного знака
local function createWatermark()
    local gui = Instance.new("ScreenGui")
    gui.Name = "NeverWareWatermark"
    gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0, 200, 0, 30)
    label.Position = UDim2.new(1, -210, 0, 10)
    label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label.BackgroundTransparency = 0.5
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Text = "NeverWare v4.0 | xq09e"
    label.Font = Enum.Font.GothamBold
    label.TextSize = 14
    label.Parent = gui
end

-- Бинд меню
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightShift then
        if NeverWare.Modules.gui_main and NeverWare.Modules.gui_main.toggleMenu then
            NeverWare.Modules.gui_main.toggleMenu()
        else
            warn("GUI module not loaded properly")
        end
    end
end)

-- Создаем водяной знак
createWatermark()

return NeverWare
