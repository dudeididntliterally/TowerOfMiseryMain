--Most OP Tower Of Misery Script?

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/mag"))()
local Main = Library.Category("Scripts", "Main Scripts", Color3.fromRGB(0, 0, 255))
Main:Section("Main Stuff")

Main:Button(
    "GodMode (basically)",
    function()
    game.ReplicatedStorage.Server_Data.ImmunityEnabled.Value = true
end
)

Main:Button(
    "Fly Bypass (gui)",
    function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KazeOnTop/RiceFeFly/main/Wind"))()
end
)

Main:Button(
    "Teleport Bypass",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
)

Main:Button(
    "Bypass WalkSpeed",
    function()
    local old
old = hookfunction(getrawmetatable(game).__namecall,(function(...)
    local args = {...}
    local self = args[1]
    local method = getnamecallmethod()
    if(self==game and method=="GetService"and args[2]:lower()=="workspace")then
        return game.ReplicatedStorage
    end
    return old(...)
end))
local old
old = hookfunction(getrawmetatable(game).__index,(function(...)
    local self,key = ...
    if(self:IsA("Humanoid")and key=="WalkSpeed")then
        return 16
    end
    return old(...)
end))
end
)

Main:Button(
    "Bypass JumpPower",
    function()
    local old
old = hookfunction(getrawmetatable(game).__namecall,(function(...)
    local args = {...}
    local self = args[1]
    local method = getnamecallmethod()
    if(self==game and method=="GetService"and args[2]:lower()=="workspace")then
        return game.ReplicatedStorage
    end
    return old(...)
end))
local old
old = hookfunction(getrawmetatable(game).__index,(function(...)
    local self,key = ...
    if(self:IsA("Humanoid")and key=="JumpPower")then
        return 50
    end
    return old(...)
end))
end
)

Main:Slider(
    "Speed (bypass 1st)",
    16,
    300,
    true,
    function(numbers)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = numbers
end
)

Main:Slider(
    "Jump (bypass 1st)",
    50,
    350,
    true,
    function(numbers)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = numbers
end
)

Main:Button(
    "Bypass Anti Cheat",
    function()
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if method == "InvokeServer" and tostring(self) == "CallFunction" then
        return warn("CallFunction Tried To Fire It's Self")
    end
    return namecall(self, table.unpack(args))
end)
end
)

Main:Button(
    "Inf Yield",
    function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
)

Main:Button(
    "Gravity Coil (free)",
    function()
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "Still Breaks: Speed Coil",
		Color = Color3.fromRGB(207, 96, 36)
	})
local args = {
    [1] = "Gravity Coil"
}

game:GetService("ReplicatedStorage").Remote_Functions.General.Equip_Coil:InvokeServer(unpack(args))
end
)

Main:Button(
    "Auto Farm",
    function()
_G.Auto = true

while _G.Auto == true do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
end)

Main:Button(
    "Stop Auto Farm",
    function()
_G.Auto = false
end)

Main:Button(
    "Buy Everything",
    function()
local args = {
    [1] = "QuickSpawn"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Quick_Spawn:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "Immunity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Immunity:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "GlassTower"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Glass_Tower:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "HighSpeed"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_High_Speed:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "LowGravity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Low_Gravity:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "NightMode"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Night_Mode:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "SpeedTimer"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Speed_Timer:InvokeServer(unpack(args))
wait(0.5)
print("Auto Bought Everything!")
end
)

Main:Button(
    "Auto Respawn",
    function()
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "UPDATE: ONLY PRESS ONCE OR IT FIRES THE REMOTE MORE, ALSO PRESS AFTER EVERY ROUND (same location)",
		Color = Color3.fromRGB(207, 96, 36)
	})
while true do
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end
end)

Main:Button(
    "Get Winners Sword",
    function()
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "Using this will teleport you back to the winners room every round so just teleport back with the teleport bypass.",
		Color = Color3.fromRGB(207, 96, 36)
	})
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
wait(0.2)
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
    firetouchinterest(playerHead, v.Parent, 0)
    wait(0.1)
    firetouchinterest(playerHead, v.Parent, 1)
    break;
end
end
wait(0.3)
fireclickdetector(game:GetService("Workspace").WinnersRoomServerSide.SwordGiver.ClickPart.ClickDetector)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
)
