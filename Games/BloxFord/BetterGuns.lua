local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

local player = game:GetService("Players").LocalPlayer.Name
local scriptPath = workspace[player].gun
local closureName = "Unnamed function"
local upvalueIndex = 1
local closureConstants = {
    [1] = "onEquip"
}

local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
local value = auto


-- DO NOT RELY ON THIS FEATURE TO PRODUCE 100% FUNCTIONAL SCRIPTS
debug.setupvalue(closure, upvalueIndex, value)
-- Generated by Hydroxide's Upvalue Scanner: https://github.com/Upbolt/Hydroxide

local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

local player = game:GetService("Players").LocalPlayer.Name
local scriptPath = workspace[player].gun
local closureName = "Unnamed function"
local upvalueIndex = 1
local closureConstants = {
    [1] = "shot",
    [2] = "task",
    [3] = "wait",
    [5] = 0.01,
    [6] = 0.005,
    [7] = "animations"
}

local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
local value = 0.001 --Bullet Speed
local elementIndex = "rpm"


-- DO NOT RELY ON THIS FEATURE TO PRODUCE 100% FUNCTIONAL SCRIPTS
debug.getupvalue(closure, upvalueIndex)[elementIndex] = value