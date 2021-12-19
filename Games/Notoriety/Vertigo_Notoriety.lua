local Config = {
    WindowName = "Notoriety - Vertigo",
	Color = Color3.fromRGB(255,128,64),
	Keybind = Enum.KeyCode.Insert
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Main")
local Tab2 = Window:CreateTab("UI Settings")

local PlrName = game:GetService("Players").LocalPlayer.Name
local scr = game:GetService('Players').LocalPlayer.PlayerScripts.SPS_Package.LocalGuns
local key 
local PrimaryGun = game:GetService("Players")[PlrName].Backpack:GetDescendants("Primary").Parent

--GetKey
--FULL CREDIT OF KEY GRABBING TO CriShoux Found at: https://pastebin.com/raw/EtScuxKA
--CriShoux Profile: https://pastebin.com/u/CriShoux
for i, v in next, getgc() do
    if type(v) == 'function' and getfenv(v).script == scr then
        for i2, v2 in next, getupvalues(v) do
            if type(v2) == "string" then
                key = v2
            end
        end
    end
end


local PlayerSec = Tab1:CreateSection("Player")
local ServerSec = Tab1:CreateSection("Server")
local TeleportSec = Tab1:CreateSection("Teleports")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

-------------
local StamToggle = PlayerSec:CreateToggle("Infinte Stamina", nil, function(State)
    game:GetService("Workspace").Criminals[PlrName].Stamina:GetPropertyChangedSignal("Value"):Connect(function()
        if State == true then
            game:GetService("Workspace").Criminals[PlrName].Stamina.Value = 120
        end
    end)
end)

local BodyBagBut = PlayerSec:CreateButton("Infinte Body Bags", function()
    while true do wait()
        game:GetService("Workspace").Criminals[PlrName].BodyBags.Value = 1
    end
end)

local FastInteractBut = PlayerSec:CreateButton("Fast Interact", function()
	game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
		prompt.HoldDuration = 0
	 end)
end)

local KillAllPolice = ServerSec:CreateButton("Kill Police", function()
		for _,KillAll in pairs(game:GetService("Workspace").Police:GetChildren()) do
			local A_1 = "Damage"
			local A_2 = key
			local A_3 = game:GetService("Workspace").Police[KillAll.Name].Humanoid
			local A_4 = math.huge
			local A_5 = game:GetService("Workspace").Police[KillAll.Name].Head
			local A_6 = PrimaryGun
			local A_7 = Vector3.new(-0.16739356517792, -0.69962334632874, -4.9630703926086)
			local Event = game:GetService("ReplicatedStorage")["RS_Package"].Assets.Remotes.Damage
			Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7)
	end
end)

local BreakGlassBut = ServerSec:CreateButton("Break Glass", function()
	for _,BreakGlass in pairs(game:GetService("Workspace").Glass:GetChildren()) do
		local A1 = key
		local A2 = BreakGlass
		local A3 = false
		
		game:GetService("ReplicatedStorage").RS_Package.Assets.Remotes.HitObject:FireServer(A1, A2, A3)
	end
end)

local YellCitizens = ServerSec:CreateButton("Yell All Citizens",function()
	local Citizens = game:GetService("Workspace").Citizens
	local Yell = game:GetService('ReplicatedStorage').RS_Package.Remotes.PlayerYell
	Yell:FireServer(Citizens:GetChildren())
end)

local CollectBags = ServerSec:CreateButton("Collect Bags", function()
	for _,ColectBag in pairs(game:GetService("Workspace").Bags:GetDescendants()) do
		if ColectBag.ClassName == "UnionOperation" then
			ColectBag.CFrame = game:GetService("Workspace").BagSecuredArea.FloorPart.CFrame+Vector3.new(0,4,0)
		end
	end
end)
CollectBags:AddToolTip("Only Collecs Dropped Bags")

local TptoCard = TeleportSec:CreateButton("Find KeyCard", function()
	local OldPos = game:GetService("Workspace").Criminals[PlrName].HumanoidRootPart.CFrame
	game:GetService("Workspace").Criminals[PlrName].HumanoidRootPart.CFrame = game:GetService("Workspace").Map:FindFirstChild("KeyCard").KeyCard.CFrame
end)

-------------
local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)

local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
end)

Dropdown3:SetOption("Default")

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)
