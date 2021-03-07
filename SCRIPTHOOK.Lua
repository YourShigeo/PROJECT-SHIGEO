local good_fruits = {"Mera", "Magu", "Hie", "Pika", "Bari", "Tori", "Bomu", "Suke", "Mero"}
local url = "https://discord.com/api/webhooks/818060760000757760/nFxpqUbP7cW9DLTun_JI5YsGZaj5nwe8IL1x68y5Ukmc3paIf3kHBE8RLHirmb8aCVvX"
local time1 = os.date("%H".."%M".."%S")
local style = "Melee" --BlackLeg, Rokushiki, Kiribachi, Melee, Katana
Found = false -- leave this

spawn(function()
while wait(.1) do
   pcall(function()
       if not Found then
           if not game.Players.LocalPlayer.Character:FindFirstChild(style) then
               game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(style))
           end
       end
   end)
end
end)

game.Players.LocalPlayer.Backpack.ChildAdded:Connect(function(p1)
   wait()
   for i,fr in pairs(good_fruits) do
       if p1.Name == fr then
           Found = true
       repeat
           pcall(function()
               wait()
               local time2 = os.date("%H".."%M".."%S")
               local time3 = time2 - time1
                   local msg = "-Logia Farm- \nUser: " .. game.Players.LocalPlayer.Name .. " \nFound: " .. p1.Name .. "\nMinutes Elapsed: " .. time3/60 .. " \n@everyone"
                   syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
               repeat wait(.1)
               game.Players.LocalPlayer.Character.Humanoid:EquipTool(p1)
               wait(.3)
               game.ReplicatedStorage.Events.FruitStorage:InvokeServer()
               until not game.Players.LocalPlayer.Backpack:FindFirstChild(p1.Name)
                   wait(.5)
                   game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(style))
               end)
           until not game.Players.LocalPlayer.Backpack:FindFirstChild(p1.Name)
       Found = false
       end
   end
end)