local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vertigoc/cool/main/Libs/VertigosLib.lua"))()
local Main = Lib:CreateWindow("SUPERNotGay", "DarkMode")
local Tab1 = Main:CreateTab("Test1")
local Tab2 = Main:CreateTab("Test2")
Tab1:CreateLabel("This is on page 1 :D")
Tab2:CreateLabel("This is on page 2 :(")

local Drpo = Tab1:CreateDropdown("Text", {"1","2","3"}, function(Option)
    print(Option)
end)

Tab1:CreateButton("Refresh Drop", function()
    Drpo:Refresh({"Get Fucked"})
end)

Tab1:CreateToggle("Print Money Hacks", false, function(state)
    print(state)
end)

Tab1:CreateTextButton("Box", "Type", function(Text)
    print(Text)
end)

Tab1:CreateSlider("SliderTest", 10, 100, function(value)
   print(value) 
end)

Tab1:CreateKeyBind("Bind Ui", Enum.KeyCode.KeypadOne, function(yes)
    print(yes)
end)
