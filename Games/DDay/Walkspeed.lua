local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local OldIndex = gmt.__index
gmt.__index = newcclosure(function(self, key)
    if key == "WalkSpeed" then
        return 16
    end
    return OldIndex(self, key)
end)

while wait() do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
end
