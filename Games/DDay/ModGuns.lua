for i,v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
    if v.Name == "Setting" then
    gun = require(v)
    gun.Auto = true
end
end
