local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vertigoc/cool/main/Libs/VertigosLib.lua"))()
local Main = Lib:CreateWindow("BloxWank", "LightMode")
local Main = Main:CreateTab("Main")
local Plr = Main:CreateTab("Player")
local Car = Main:CreateTab("Car")

Main:CreateLabel("For Rep: Fuck you")
Main:CreateButton("Bypass AntiCheat [Laggy]", "Bypass", function()
    game:GetService("Workspace").AntiChatFlood:Destroy()
    if game:GetService("Workspace"):FindFirstChild("Sorry_not_sorry") then
        game:GetService("Workspace"):FindFirstChild("Sorry_not_sorry"):Destroy()
    end
    if game:GetService("Players").LocalPlayer.PlayerScripts:FindFirstChild("AntiAutoclick") then
        game:GetService("Players").LocalPlayer.PlayerScripts.AntiAutoclick:Destroy()
    end
    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("NewLifeRule") then
        game:GetService("Players").LocalPlayer.PlayerScripts.NewLifeRule:Destroy()
    end
    print("ac deleted")

    local eventbypass

    eventbypass = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()

        if not checkcaller() and self.Name == "check" and method == "FireServer" then
            print("Anti Cheat remote was called and blocked.")
            return wait(9e9); -- do nothing if called
        end

        return eventbypass(self, ...)
    end)
    getgenv().BypassSettings = {
       ["Crystal AntiCheat"] = true,
       ["Adonis"] = false,

       ["Anti-Obfuscated Scripts"] = false,-- CANNOT BE ENABLED WITH CRYSTAL This will block any obfuscated script on the client from running (Not executed by your exploit thought)
       ["Random"] = true, -- Will disallow scripts calling, GetPropertyChanged signal on WalkSpeed, JumpPower, Gravity, Health, LogService

       ["Enable Kill Logs"] = true, -- Say if you want to get told what's bypassed
    }

    loadstring(game:HttpGet("https://irisapp.ca/TheGoodSucc/iAntiCheat.lua"))()
    print("Iris Loaded")
end)

Main:CreateButton("Admin Check", "Activate", function()
    Admins = {306654785, 25074343, 4549187, 1335586467, 60625091, 74203010, 87783947, 205021168, 514766723, 1654610911, 1523203904, 1576824898, 1576824898, 2644516865, 183793140, 290515888, 1607698411, 184456421, 1578667424, 243383919, 129513460, 660028340, 214470, 66869488, 72584476, 66791249, 355123078, 743239452, 73492985, 1846501946, 270645552, 189838373, 20129297, 152957945, 436332770, 172017979, 311255332, 90430360, 889840086}

    function CheckAdmin()
    for i, v in pairs(Admins) do
    for _,v2 in pairs(game.Players:GetPlayers()) do
    if v2.UserId == v then
    game:GetService'Players'.LocalPlayer:Kick("Admin Fount: "..v)
    else
    print("No Admins, Time: "..os.date())
    print("=============================================")
    end
    end
    end
    end

    game.Players.PlayerAdded:Connect(function()
    CheckAdmin()
    end)

    CheckAdmin()
end)

local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local OldIndex = gmt.__index
gmt.__index = newcclosure(function(self, key)
    if key == "WalkSpeed" then
        return 16
    elseif key == "JumpPower" then
        return 50
    end
    return OldIndex(self, key)
end)

plr:CreateSlider("Walkspeed", 16, 250, function(value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
plr:CreateSlider("Walkspeed", 50, 300, function(value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)
plr:CreateButton("Cool Name [Vertigo]", "Activate", function()
    local A_1 = "V"
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
    local A_1 = "Ve"
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
    local A_1 = "Ver"
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
    local A_1 = "Vert"
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
    local A_1 = "Verti"
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
    local A_1 = "Vertig"
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
    local A_1 = "Vertigo"
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
    local A_1 = "."
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
    local A_1 = ".."
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
    local A_1 = "..."
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1)
    wait(1)
end)

Plr:CreateToggle("Collet Crates / Cash", false, function(state)
    getgenv().PickUpMyCash = state
end)
Plr:CreateToggle("Collet Crates / Cash", false, function(state)
    getgenv().PickUpCrops = state
end)

CarMain:CreateButton("Mod Car [Must Be In Car]", "Mod", function()
   for i, v in next, getgc(true) do
    if type(v) == "table" and rawget(v, "WheelFriction") then
        v.WheelFriction = math.huge
        v.MaxSpeed = math.huge
        v.BrakingTorque = math.huge
        v.DrivingTorque = math.huge
        v.TorsionSpringDamping = 0
        v.StrutSpringStiffnessRear = 0
        v.MaxSteer = 5
        v.ReverseSpeed = math.huge
    end
end
end)

while true do wait(2)
if getgenv().PickUpCrops == true then
    for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "Apple" or v.Name == "BlueBerryPlantMesh" or v.Name == "TomatoPlantMesh" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            keypress(0x45)
            wait()
            keyrelease(0x45)
            wait(1)
        end
    end
end

if getgenv().PickUpMyCash == true then
    for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "cash" or v.Name == "Crate" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            keypress(0x45)
            wait()
            keyrelease(0x45)
            wait(1)
        end
    end
end
end
        
        
        
        
      
