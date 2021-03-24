while wait(1) do 
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("ClickDetector") then
             if v.Parent.Name == "ClickBox" then
                if v.Parent.Parent.Name == "ChikaraCrate" then
                    game.Players.LocalPlayer.Character:MoveTo(v.Parent.Position)
                    fireclickdetector(v)
                end
             end
        end
    end
end
