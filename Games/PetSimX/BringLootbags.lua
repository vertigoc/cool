getgenv().BringBags = true

while getgenv().BringBags == true do wait()
game:GetService("Workspace")["__THINGS"].Lootbags.ChildAdded:Connect(function(child)
   child.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
       if v.ClassName == "MeshPart" then
           v.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       end
   end
end)
end
