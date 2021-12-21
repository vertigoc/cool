if game.PlaceId == 5924471692 then
    wait(10)
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
end
