-- Простой хаб для 5 игр
local placeId = game.PlaceId
print("Игра ID:", placeId)

-- База данных скриптов
local scriptDB = {
    [79602128065352] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Torfogs/No-Cooldown-Doomspire-Brickbattle/refs/heads/main/Brickbattle.lua"))()
    end,
    [12137249458] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Torfogs/Flick/refs/heads/main/Torfog.lua"))()
    end,
    
    [136801880565837] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Torfogs/Flick/refs/heads/main/Torfog.lua"))()
    end
}

-- Проверяем и запускаем
if scriptDB[placeId] then
    print("Найден скрипт для этой игры!")
    local success, err = pcall(scriptDB[placeId])
    if not success then
        warn("Ошибка:", err)
    end
else
    warn("Для этой игры нет скрипта в базе")
    
    -- Можно показать список доступных игр
    print("\nДоступные игры:")
    for id, func in pairs(scriptDB) do
        print("- ID:", id)
    end
end
