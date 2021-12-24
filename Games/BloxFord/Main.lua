if game.PlaceId == 5924471692 then
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vertigoc/cool/main/Libs/VertigosLib.lua"))()
local Pages = Lib:CreateWindow("BloxWank", "DarkMode")
local Main = Pages:CreateTab("Main")
local plr = Pages:CreateTab("Player")
local Car = Pages:CreateTab("Car")

Main:CreateLabel("For Rep: Fuck you")
Main:CreateLabel("All Collect Stuff Is Faster")
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
local GenNew = true
local random = Random.new()
local letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','`','!','"','£','$','%','^','&','*','(',')','-','+','=','{','}','[',']',';',':','~','<',',','.','>','/','?','我','很','高','兴','你','呢','，','？','Г','Б','Д','Ё','Ж','Я','㊕ ','㊐','㊋','㊅','㊍','㊋','㊐','㊅','㊊','㊋','㊐','㊇','㊖','㊇','㊙','㊇','㊕','㊗','㊋','㊉','㊒','㊅','㊒','㊒','㊎','ȧ̜͔̦̗͗̾̈́̒'}

function getRandomLetter()
	return letters[random:NextInteger(1,#letters)]
end
function getRandomString(length, includeCapitals)
	local length = length or 10
	local str = ''
	for i=1,length do
		local randomLetter = getRandomLetter()
		if includeCapitals and random:NextNumber() > .5 then
			randomLetter = string.upper(randomLetter)
		end
		str = str .. randomLetter
	end
	return str
end

function Generate()
    local A_1 = getRandomString(math.random(3,15), true)
    local Event = game:GetService("ReplicatedStorage").Events.RpName
    Event:FireServer(A_1) 
end
local Wow = game:GetService("Players").LocalPlayer.RpName
local str = Wow.Value

Generate()

Wow:GetPropertyChangedSignal("Value"):Connect(function()
    if string.find(Wow.Value, "#") then
        Generate()
    end
end)
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
                local A_1 = v:FindFirstChild("cashmoney")
                local A_2 = 
                {
                    [1] = "Collect", 
                    [2] = "E"
                }
                local Event = game:GetService("ReplicatedStorage").Events.ActionHandler
                Event:FireServer(A_1, A_2)
                else
                    local A_1 = v:FindFirstChild("lootcrate")
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
        if v.Name == "Money Printer" or v.Name == "OP Money Printer" then
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

if getgenv().PrintersGrab == true then
wait(2)
    for _,v in pairs(game:GetService("Workspace").Entities:GetDescendants()) do
        if v.Name == "Money Printer" or v.Name == "Upgraded Money Printer" or v.Name == "OP Money Printer" then
            if v.Part.CFrame == "472.092499, 26.5716248, -51.4557571" then
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
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(330.071411, 40.1731453, -184.473297)
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
end
end
