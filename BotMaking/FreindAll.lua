local obese = game:GetService('Players')
for _,kachow in pairs(obese:GetPlayers()) do
obese.LocalPlayer:RequestFriendship(kachow, kachow)
end
