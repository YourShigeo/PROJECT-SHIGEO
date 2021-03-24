
    local sl = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/".. game.PlaceId.. "/servers/Public?sortOrder=Asc&limit=100"))
    for i,v in pairs(sl.data) do
        if v.playing ~= v.maxPlayers then
            game:service'TeleportService':TeleportToPlaceInstance(game.PlaceId, v.id)
        end
    end
