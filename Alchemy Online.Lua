local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/YourShigeo/PROJECT-SHIGEO/main/PROJECT%7CSHIGEO%20UI%20LIBRARY"))();
local Main = library:CreateWindow("PROJECT|SHIGEO")
local players = game:GetService("Players")
local client = players.LocalPlayer
local HRP = client.character.HumanoidRootPart



for i, v in pairs(game.Workspace:GetDescendants()) do 
    if v:IsA("UnionOperation") then
    v:Destroy()
    end
end


Main:CreateToggle("Coins Farm", function(bool)
    CFEnabled = bool
    while wait() do
         if CFEnabled == true then
              for i,v in pairs(workspace:GetDescendants()) do
                   if v:IsA("ClickDetector") then
                        if v.Parent.Name == "Coins" then
                             game.Players.LocalPlayer.Character:MoveTo(v.Parent.Position)
                             wait(0.2)
                             fireclickdetector(v)
                        end
                   end
              end
         end
    end
end)


Main:CreateToggle("KN Farm", function(bool)
    local KNVal = nil
    local KNChecker = function()
         local KNValue = game:GetService("Players").LocalPlayer.PlayerGui.StatsUI.MainVitals.ExpText.Text
         if KNValue > "15 KN"  then 
            KNVal = "Raya"
       elseif KNValue < "10 KN" then
            KNVal = "Valloris"
       end
    end
    KNEnabled = bool
    while wait() do
        KNChecker()
         if KNEnabled == true then
            if KNVal == "Valloris" then
                local A_1 = "Valloris"
                local ValloQuest = game:GetService("ReplicatedStorage").Events.Quest
                ValloQuest:FireServer(A_1)
                
                for i,v in pairs(workspace:GetDescendants()) do
                     if v:IsA("ClickDetector") then
                          if v.Parent.Name == "Dust" then
                               game.Players.LocalPlayer.Character:MoveTo(v.Parent.Position)
                               wait(0.3)
                               fireclickdetector(v)
                          end
                     end
                end  
            elseif KNVal == "Raya" then
                local A_1 = "Raya"
                local Event = game:GetService("ReplicatedStorage").Events.Quest
                Event:FireServer(A_1)

                for i,v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        if v.Parent.Name == "ScrapMetal" then
                            game.Players.LocalPlayer.Character:MoveTo(v.Parent.Position)
                            wait(0.4)
                            fireclickdetector(v)
                        end
                    end
                end
            end
         end
    end
end)