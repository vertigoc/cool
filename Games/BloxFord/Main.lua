if game.PlaceId == 5924471692 then
        getgenv().BypassSettings = {
           ["Crystal AntiCheat"] = true,
           ["Adonis"] = false,
    
           ["Anti-Obfuscated Scripts"] = false,-- CANNOT BE ENABLED WITH CRYSTAL This will block any obfuscated script on the client from running (Not executed by your exploit thought)
           ["Random"] = true, -- Will disallow scripts calling, GetPropertyChanged signal on WalkSpeed, JumpPower, Gravity, Health, LogService
    
           ["Enable Kill Logs"] = true, -- Say if you want to get told what's bypassed
        }
    
        loadstring(game:HttpGet("https://irisapp.ca/TheGoodSucc/iAntiCheat.lua"))()
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vertigoc/cool/main/Libs/VertigosLib.lua"))()
    local Pages = Lib:CreateWindow("BloxWank", "DarkMode")
    local Main = Pages:CreateTab("Main")
    local plr = Pages:CreateTab("Player")
    local Car = Pages:CreateTab("Misc")
    
    Main:CreateLabel("For Rep: Fuck you")
    Main:CreateLabel("Mod Gun Added [Misc]")
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
    
    Main:CreateButton("Bypass AntiCheat [NoLag]", "Bypass", function()
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
        getgenv().BypassSettings = {
           ["Crystal AntiCheat"] = true,
           ["Adonis"] = false,
    
           ["Anti-Obfuscated Scripts"] = false,-- CANNOT BE ENABLED WITH CRYSTAL This will block any obfuscated script on the client from running (Not executed by your exploit thought)
           ["Random"] = true, -- Will disallow scripts calling, GetPropertyChanged signal on WalkSpeed, JumpPower, Gravity, Health, LogService
    
           ["Enable Kill Logs"] = true, -- Say if you want to get told what's bypassed
        }
    
        loadstring(game:HttpGet("https://irisapp.ca/TheGoodSucc/iAntiCheat.lua"))()
        print("ac deleted")
    end)
    
    Main:CreateButton("Admin Check", "Activate", function()
        Admins = {306654785, 25074343, 4549187, 1335586467, 60625091, 74203010, 87783947, 205021168, 514766723, 1654610911, 1523203904, 1576824898, 1576824898, 2644516865, 183793140, 290515888, 1607698411, 184456421, 1578667424, 243383919, 129513460, 660028340, 214470, 66869488, 72584476, 66791249, 355123078, 743239452, 73492985, 1846501946, 270645552, 189838373, 20129297, 152957945, 436332770, 172017979, 311255332, 90430360, 889840086}
    
        function CheckAdmin()
        for i, v in pairs(Admins) do
        for _,v2 in pairs(game.Players:GetPlayers()) do
        if v2.UserId == v then
        game:GetService'Players'.LocalPlayer:Kick("Admin Fount: "..v)
        else
        print("No Admins")
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
    plr:CreateSlider("Jump Power", 50, 300, function(value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end)
    plr:CreateButton("RandomName", "Activate", function()
                        local RandomName;
local letters = {'Joshua', 'Alan', 'Harry', 'Ryan', 'Master Cheif', 'F4llen', 'sky', 'Danny', 'Give Gun', 'CarLover312', 'Banker', 'harry', 'jacob', 'alfie', 'alex', 'micheal', 'josh', 'chris', 'callum', 'billy', 'aaron', 'shaun', 'Venom', 'Eagle', 'Clifley','Psycho', 'Victor','Veldora', 'Pro gamer', 'XboxIsBad', 'Greyenna','RDS','Sniper','Splash','Wave','hyper','RobotYes', 'PixelOkay', 'SpaceInside', 'HouseTree', 'CarpetNo', 'TescoDeals', 'AsdaHelps', 'blob','gmodpro','Greatspace','Almighty','mysticpizza','sparky','albert','jaden','BigBill','Buck','Valance','SugarCandy','SkulIll','xxHepticxx','CaliforniaLove','FatTony','sunny','Police Boss','LazyGamer','bread','broosh','RedFox04','evilDevil','BaconNoob','Borris', 'OldDriver','Paul Larson','DarkLord','Misa','magicZak10','UserNotFound','moeLo','WetRain','GemSplash','K9 Sniffer','connor','frostyFish','TimeLocked2','mason','Night','Magnitude','Dodgy','Incoming','Nightcrawlers','Scourge','Defiant','Blackstock','Serenity','Dretron','Bloodline','Dreamteam','Dominance','Cobra'}

function getRandom()
       local randomNumber = math.random(1, #letters)
        RandomName = letters[randomNumber]
       print("Chosen "..RandomName.."!")
end
getRandom()

function Generate()
    local A_1 = RandomName
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1) 
end

Generate()

    end)
    
    plr:CreateToggle("Collet Crates / Cash", false, function(state)
        getgenv().PickUpMyCash = state
    end)
    plr:CreateToggle("Collet Crops", false, function(state)
        getgenv().PickUpCrops = state
    end)
    plr:CreateToggle("Collet Printers Cash", false, function(state)
        getgenv().Printers = state
    end)
    plr:CreateToggle("Steal All Printers", false, function(state)
        getgenv().PrintersGrab = state
    end)
    plr:CreateToggle("Destroy Printers [Cop]", false, function(state)
        getgenv().DESPrinters = state
    end)
    plr:CreateToggle("Take From Shipments", false, function(state)
        getgenv().ShipMentTake = state
    end)
    
    Car:CreateButton("Mod Car [Must Be In Car]", "Mod", function()
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
    Car:CreateButton("Mod Gun [Must Be Holding]", "Mod", function()
       local tool;

for _,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v:IsA("Tool") then
        tool = v.Name
    end
end

game:GetService("Players").LocalPlayer.Character[tool].ammo:GetPropertyChangedSignal("Value"):Connect(function()
    local max = game:GetService("Players").LocalPlayer.Character[tool].Config.capacity.Value
    game:GetService("Players").LocalPlayer.Character[tool].ammo.Value = max
end)
    end)
    
      
        Car:CreateButton("Mod Car [Must Be In Car]", "Mod", function()
                   getgenv().HeadSize = 12.5
getgenv().Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if getgenv().Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(getgenv().HeadSize,getgenv().HeadSize,getgenv().HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Moss")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
        end)
    
    while true do wait(2)
    if getgenv().PickUpCrops == true then
        for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == "Apple" or v.Name == "BlueBerryPlantMesh" or v.Name == "TomatoPlantMesh" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                if v.Name == "Apple" then
                    local A_1 = v:FindFirstChild("droppeditem")
                    local A_2 = 
                    {
                        [1] = "Pick Up", 
                        [2] = "E"
                    }
                    local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                    Event:FireServer(A_1, A_2)
                elseif v.Name == "BlueBerryPlantMesh" then
                    local A_1 = v:FindFirstChild("bberryplant")
                    local A_2 = 
                    {
                        [1] = "Harvest", 
                        [2] = "E"
                    }
                    local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                    Event:FireServer(A_1, A_2)
                else
                    local A_1 = v:FindFirstChild("tomatoplant")
                    local A_2 = 
                    {
                        [1] = "Harvest", 
                        [2] = "E"
                    }
                    local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                    Event:FireServer(A_1, A_2)
                end
                wait(1)
            end
        end
    end
    
    if getgenv().PickUpMyCash == true then
        for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == "cash" or v.Name == "Crate" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                if v.Name == "cash" then
                    local A_1 = v.cashmoney
                    local A_2 = 
                    {
                        [1] = "Collect", 
                        [2] = "E"
                    }
                    local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                    Event:FireServer(A_1, A_2)
                    else
                        local A_1 = v.lootcrate
                        local A_2 = 
                        {
                            [1] = "Pick Up", 
                            [2] = "E"
                        }
                        local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                        Event:FireServer(A_1, A_2)
                end
                wait(1)
            end
        end
    end
    
    if getgenv().Printers == true then
        for _,v in pairs(game:GetService("Workspace").Entities:GetDescendants()) do
            if v.Name == "Money Printer" or v.Name == "Upgraded Money Printer" or v.Name == "OP Money Printer" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                wait(.2)
                local A_1 = v.Main.moneyprinter
                local A_2 = 
                {
                    [1] = "Collect", 
                    [2] = "E"
                }
                local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                Event:FireServer(A_1, A_2)
                wait()
            end
        end
    end
        if getgenv().DESPrinters == true then
        for _,v in pairs(game:GetService("Workspace").Entities:GetDescendants()) do
            if v.Name == "Money Printer" or v.Name == "Upgraded Money Printer" or v.Name == "OP Money Printer" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                wait(.2)
                local A_1 = v.Main.moneyprinter
                local A_2 = 
                {
                    [1] = "Destroy", 
                    [2] = "E"
                }
                local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                Event:FireServer(A_1, A_2)
                wait()
            end
        end
    end
    if getgenv().PrintersGrab == true then
    wait(2)
        for _,v in pairs(game:GetService("Workspace").Entities:GetDescendants()) do
            if v.Name == "Money Printer" or v.Name == "Upgraded Money Printer" or v.Name == "OP Money Printer" then
                if v.Part.CFrame == "-2435.64575, 11.0812035, -3376.73657" then
                    return
                else
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                    wait(.3)
                    local A_1 = v.Main.moneyprinter
                    local A_2 = 
                    {
                        [1] = "Carry", 
                        [2] = "R"
                    }
                    local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                    Event:FireServer(A_1, A_2)
                    wait(.5)
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2435.64575, 11.0812035, -3376.73657)
                    wait(.2)
                    local A_1 = v.Main.moneyprinter
                    local A_3 = 
                    {
                        [1] = "Drop", 
                        [2] = "R"
                    }
                    local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                    Event:FireServer(A_1, A_3)
                    wait(.2)
                end
            end
        end
    end
    if getgenv().ShipMentTake == true then
        for _,v in pairs(game:GetService("Workspace").Entities:GetDescendants()) do
            if v.Name == "Shipment" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                wait(.2)
                local A_1 = v.shipment
                local A_2 = 
                {
                    [1] = "Take 1", 
                    [2] = "E"
                }
                local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                Event:FireServer(A_1, A_2)
                wait()
            end
        end
    end
    end
end
