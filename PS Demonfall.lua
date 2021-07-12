local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/YourShigeo/PROJECT-SHIGEO/main/PROJECT%7CSHIGEO%20UI%20LIBRARY"))();
local Main = library:CreateWindow("PROJECT|SHIGEO")
local plr = game.Players.LocalPlayer
----------------------| Anti Afk
loadstring(game:HttpGet("https://raw.githubusercontent.com/YourShigeo/PROJECT-SHIGEO/main/Anti-Afk"))();
--------------------------------
Main:CreateButton("ServerHop",function()
    local gameid = game.PlaceId
    game:GetService("TeleportService"):Teleport(gameid, game:GetService("Players").LocalPlayer)
end)
Main:CreateButton("TRINK|FARM",function()
    local plr = game.Players.LocalPlayer
    shared.trinketfarm  = true
    while shared.trinketfarm do wait()
        pcall(function()
            for i,v in pairs(workspace:GetChildren()) do
                local part = v:FindFirstChild("Part")
                if v:FindFirstChild("PickableItem") and part then
                    game:GetService("ReplicatedStorage").Remotes.Sync:InvokeServer("Player", "SpawnCharacter") --- this bypass the anti tp
                    plr.Character.HumanoidRootPart.CFrame = part.CFrame
                    wait(3)
                    game:GetService("ReplicatedStorage").Remotes.Async:FireServer("Character", "Interaction",  part)
                end
            end
        end)
    end
end)
Main:CreateButton("TP to Merchant",function()
    local Merch = game:GetService("Workspace").Npcs.Merchant.HumanoidRootPart
    game:GetService("ReplicatedStorage").Remotes.Sync:InvokeServer("Player", "SpawnCharacter")
    local plr = game.Players.LocalPlayer
    plr.Character.HumanoidRootPart.CFrame = Merch.CFrame

end)
Main:CreateToggle("Enable cursor",function(bool)
    CEnable = bool
    local userInputService = game:GetService("UserInputService")
    userInputService.MouseIconEnabled = CEnable
end)