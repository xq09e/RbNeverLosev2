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

-- Загрузка модулей
function loadModule(moduleName)
    local success, result = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/neverware/main/modules/" .. moduleName .. ".lua"))()
    end)
    return success and result
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

-- Инициализация GUI
if NeverWare.Modules.gui_main then
    NeverWare.Modules.gui_main.createGUI()
end

-- Бинд меню
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode[NeverWare.Config.MenuKey] then
        NeverWare.Modules.gui_main.toggleMenu()
    end
end)

print("🚀 NeverWare Ultimate loaded!")
return NeverWare
