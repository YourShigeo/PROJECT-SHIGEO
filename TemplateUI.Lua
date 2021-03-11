local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/YourShigeo/PROJECT-SHIGEO/main/PROJECT%7CSHIGEO%20UI%20LIBRARY"))();
local Main = library:CreateWindow("PROJECT|SHIGEO")
local players = game:GetService("Players")
local client = players.LocalPlayer
local HRP = client.character.HumanoidRootPart

Main:CreateButton("Collect all chest",function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("ClickDetector") then
            if v.Parent.Name == "Clicker" then
                fireclickdetector(v)		
            end
        end
    end
    wait(2)
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
     
    ts:Teleport(game.PlaceId, p)
end)





