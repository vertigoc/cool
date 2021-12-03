getgenv().Count = 100000 --how much codes to generate and check

local codes = 'abcdefghijklmnopqrstuvwxyz0123456789'
if not isfile('working codes.txt') then
   writefile('working codes.txt', '')
end

function generateCode()
   local code = ''
   for i = 1, 10 do
       code = code .. string.split(codes,'')[math.random(1, #string.split(codes, ''))]
   end
   return 'pet-' .. code
end

local howMuch = 0
local Working = 0

rconsolename('Huge Cat Generator | Checked: ' .. howMuch .. '/' .. Count .. ' | Working: ' .. Working)

for i = 1,Count do
   local code = generateCode()
   local request = workspace.__THINGS.__REMOTES:FindFirstChild("redeem merch code"):InvokeServer({code})
   if request[1] == false then
       howMuch = howMuch + 1
       rconsoleprint('@@RED@@')
       rconsoleprint('[NOT WORKING] ')
       rconsoleprint('@@WHITE@@')
       rconsoleprint(code .. '\n')
       rconsolename('Huge Cat Generator | Checked: ' .. howMuch .. '/' .. Count .. ' | Working: ' .. Working)
   elseif request[1] == true then
       Working = Working + 1
       Count = Count + 1
       rconsoleprint('@@LIGHT_GREEN@@')
       rconsoleprint('[WORKING] ')
       rconsoleprint('@@WHITE@@')
       rconsoleprint(code .. '\n')
       appendfile('working codes.txt', code .. '\n')
       rconsolename('Huge Cat Generator | Checked: ' .. howMuch .. '/' .. Count .. ' | Working: ' .. Working)
   end
end
