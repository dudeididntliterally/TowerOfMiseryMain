--Added new UI

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dudeididntliterally/lolwhatisthis/main/SenpaiLib"))();
local Main = library:CreateWindow("Scripts");
local Other = library:CreateWindow("Other");

Main:Button(
    "GodMode (basically)",
    function()
    game.ReplicatedStorage.Server_Data.ImmunityEnabled.Value = true
end
)

Main:Button(
    "Fly (e = toggle)",
    function()
repeat wait()
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0
 
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end
)

Main:Button(
    "Teleport To Top",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
)

Other:Button(
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

Other:Button(
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

Other:Slider(
    "Speed (bypass 1st)",
    16,
    300,
    true,
    function(numbers)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = numbers
end
)

Other:Slider(
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

Other:Button(
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
    "Get Sword",
    function()
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

Other:Button(
    "TP To Winners Room",
    function()
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

Other:Button(
    "Play Flappy Bird",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.7847023, 234.399963, 2805.98145)
end
)

Other:Button(
    "Play Track Slide",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.9553223, 234.199951, 2824.10547)
end
)
