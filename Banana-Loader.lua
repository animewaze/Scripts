local route = getgenv().__BANANA_SCRIPT_ROUTE

if type(route) ~= "string" or route == "" then
    return
end

local baseUrl = "https://raw.githubusercontent.com/animewaze/Scripts/refs/heads/main/"
local url = baseUrl .. route .. ".lua"

return loadstring(game:HttpGet(url))()
