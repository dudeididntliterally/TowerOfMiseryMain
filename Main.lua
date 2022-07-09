--ok

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()
local Scripts = GUI:CreateWindow("Tower Of Misery","Main")

local Home = Scripts:addPage("Home",1,true,6)
local Other = Scripts:addPage("Others",1,true,6)
local Teleport = Scripts:addPage("Teleports",1,true,6)
local AntiCheat = Scripts:addPage("Anti Cheat",1,true,6)

Home:addButton("GodMode",function()
    game.ReplicatedStorage.Server_Data.ImmunityEnabled.Value = true
end
)

Home:addButton("Fly (e = toggle)",function()
loadstring(game:HttpGet('https://pastebin.com/raw/d32zM888'))()
end
)

Teleport:addButton("TP To Top",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
)

Other:addButton("Bypass WalkSpeed",function()
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

AntiCheat:addButton("Anti Cheat Bypass (Gravity)",function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Press On Respawn And After Every Round",
	Color = Color3.fromRGB(207, 96, 36)
})
local h = game.Workspace
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Gravity")) do
   v:Disable()
end
end)

AntiCheat:addButton("Anti Cheat Bypass (fly)",function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Press On Respawn And After Every Round",
	Color = Color3.fromRGB(207, 96, 36)
})
local h = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Velocity")) do
   v:Disable()
end
end)

Home:addButton("FE Admin (press ;)",function()
loadstring(game:HttpGet("https://pastebin.com/raw/MQ3wc7Zq", true))()
end)

Other:addButton("Bypass JumpPower",function()
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

Other:addSlider("Speed", 16, 300,function(arg)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg
end
)

Other:addSlider("JumpPower", 50, 350,function(arg)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = arg
end
)

AntiCheat:addButton("Anti Cheat Bypass",function()
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



Home:addButton("Inf Yield",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
)

Home:addButton("Gravity Coil (free)",function()
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

Teleport:addButton("Auto Farm (NOT WORKING)",function()
    warn("not working")
    wait(0.5)
    print("not working")
end
)

Other:addButton("Buy Everything",function()
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

Home:addButton("Auto Respawn",function()
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

Other:addButton("Get Sword",function()
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "Using this will teleport you back to the winners room every round so just teleport back with the teleport to top",
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

Teleport:addButton("TP Winners Room",function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
    firetouchinterest(playerHead, v.Parent, 0)
    wait(0.1)
    firetouchinterest(playerHead, v.Parent, 1)
    break;
end
end
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36.1369514, 233.999954, 2820.86865)
end
)

Teleport:addButton("Flappy Bird",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.7847023, 234.399963, 2805.98145)
end
)

Teleport:addButton("Track Slide",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.9553223, 234.199951, 2824.10547)
end
)
