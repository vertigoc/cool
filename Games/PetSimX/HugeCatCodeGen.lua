--// localizations

local rconsoleprint = rconsoleprint;
local rconsolename = rconsolename;

local math_random = math.random;
local coroutine_wrap = coroutine.wrap;
local task_wait = task.wait;
local warn = warn;

--// define init variables

local code_count = 100000;
local characters_list = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
local character_list_length = #characters_list;

local redeem_remote = workspace.__THINGS.__REMOTES:WaitForChild("redeem merch code");

--// create working codes file

if not isfile("working_codes.txt") then
   writefile("working_codes.txt", "");
end;

--// function to generate a random 10 character code

function generate_random_code()
  local code_string = "";
 
  for index = 1, 10 do
      code_string = code_string .. characters_list[math_random(1, character_list_length)];
  end;
 
  return "pet-" .. code_string;
end;

--// stuff to output debug data to the rconsole
local checked_amount = 0;
local working_amount = 0;

local function output_debug_data()
   rconsolename("Huge Cat Generator | Checked: " .. checked_amount .. "/" .. code_count .. " | Working: " .. working_amount);
end;

output_debug_data();

--// main bruteforce loop

for index = 1, code_count do
   local random_code = generate_random_code();
   local code_redeem = redeem_remote:InvokeServer({random_code});
   local response_status = code_redeem[1];
   local response_message = code_redeem[2];
   
   warn(response_message); -- if you remove the wait(3) at the end of the loop, this will be "You are trying this too much"
   
   checked_amount = checked_amount + 1;
 
   if not response_status then
       rconsoleprint("@@RED@@");
       rconsoleprint("[NOT WORKING] ");
       rconsoleprint("@@WHITE@@");
       rconsoleprint(random_code .. "\n");
     
       output_debug_data();
   else
       working_amount = working_amount + 1;
     
       rconsoleprint("@@LIGHT_GREEN@@");
       rconsoleprint("[WORKING] ");
       rconsoleprint("@@WHITE@@");
       rconsoleprint(random_code .. "\n");
     
       appendfile("working codes.txt", random_code .. "\n");
     
       output_debug_data();
   end;
   
   wait(3);
end;
