local url = "https://discord.com/api/webhooks/818079380236140575/VgpLy7P9AbdowmIU0Uq5xGMODzIWzf0Vt7InZfEy-xxl4g_IvOqGJtUp-ithVID_R2A-"
local time1 = os.date("%H".."%M".."%S")
local starterGui = game:GetService("StarterGui");
local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
	local PlayerName = function()
		starterGui:SetCore("SendNotification", {
			Title = "Notice";
			Text = "Friend joined\n"..player.Name;
			Duration = 5;
		});
	end
	if player.UserId == 929987036  then
		PlayerName()
	elseif player.UserId == 866612516 then
		PlayerName()
	elseif player.UserId == 268191854 then
		PlayerName()
	elseif player.UserId == 195088958 then
		PlayerName()
	elseif player.UserId == 726941263 then
		PlayerName()
	elseif player.UserId == 780317082 then
		PlayerName()
	elseif player.UserId == 362404214 then
		PlayerName()
	elseif player.UserId == 1741809805 then
		PlayerName()
	elseif player.UserId == 689931936 then
		PlayerName()
	elseif player.UserId == 386854574 then
		PlayerName()
	elseif player.UserId == 1969817334 then
		PlayerName()
	elseif player.UserId == 782200714 then
		PlayerName()
	elseif player.UserId ==	468622736 then
		PlayerName()
	elseif player.UserId == 852985318 then
		PlayerName()
	elseif player.UserId == 268191854 then
		PlayerName()
	elseif player.UserId == 1121022491 then
		PlayerName()
	else
		Players.LocalPlayer:Kick("Joined unknown player!\n" .. player.Name)
		local time2 = os.date("%H".."%M".."%S")
		local time3 = time2 - time1
		local msg = "KICKED \nUser: " .. game.Players.LocalPlayer.Name .. " \Has been kicked by: " .. player.Name .. "\nMinutes Elapsed: " .. time3/60 .. " \n@NerxNeki#5939"
		syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
	end	
end)