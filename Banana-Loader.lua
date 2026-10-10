local env = getgenv()
local route = env.__BANANA_SCRIPT_ROUTE

if type(route) ~= "string" or route == "" then
    local player = game:GetService("Players").LocalPlayer
    if player then
        player:Kick("No script route specified.")
    end
    return
end

local baseUrl = "https://raw.githubusercontent.com/animewaze/Scripts/main/"
local url = baseUrl .. route .. ".lua"

local ok, source = pcall(function()
    return game:HttpGet(url)
end)

if not ok or type(source) ~= "string" or source == "" then
    return
end

local compile, compileError = loadstring(source)

if type(compile) ~= "function" then
    return
end

return compile()
