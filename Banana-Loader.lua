local route = getgenv().__BANANA_SCRIPT_ROUTE

if not route then
    local player = game:GetService("Players").LocalPlayer
    if player then
        player:Kick("No script route specified.")
    end
    return
end

return loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/animewaze/Scripts/main/" .. route .. ".lua"
))()
