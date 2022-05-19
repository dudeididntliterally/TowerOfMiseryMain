--i dont actually understand the reason why now they wanna take the time to write this code like: Head:Destoy() just doesnt make any sense but what ever

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
    "Teleport Bypass (gui)",
    function()
local GameScriptGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Tittle = Instance.new("Frame")
local Header = Instance.new("TextLabel")
local isw = Instance.new("TextButton")
local HGSP = Instance.new("TextButton")
local afk = Instance.new("TextButton")
local xButton = Instance.new("TextButton")
local OpenFrame = Instance.new("Frame")
local Open = Instance.new("TextButton")

GameScriptGui.Name = "GameScriptGui"
GameScriptGui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = GameScriptGui
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
MainFrame.BorderSizePixel = 0
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.39118838, 0, 0.0474308431, 0)
MainFrame.Size = UDim2.new(0, 240, 0, 240)
MainFrame.Visible = false
Tittle.Name = "Tittle"
Tittle.Parent = MainFrame
Tittle.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Tittle.BorderSizePixel = 0
Tittle.Size = UDim2.new(0, 230, 0, 36)

Header.Name = "Header"
Header.Parent = MainFrame
Header.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0.0549645387, 0, 0, 0)
Header.Size = UDim2.new(0, 226, 0, 36)
Header.Font = Enum.Font.SciFi
Header.Text = "Scripts"
Header.TextColor3 = Color3.new(0.333333, 1, 1)
Header.TextSize = 14

isw.Name = "isw"
isw.Parent = MainFrame
isw.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
isw.BorderSizePixel = 0
isw.Position = UDim2.new(0.0283687934, 0, 0.417763174, 0)
isw.Size = UDim2.new(0, 229, 0, 50)
isw.Font = Enum.Font.SciFi
isw.Text = "Instant Win"
isw.TextColor3 = Color3.new(0.333333, 1, 1)
isw.TextSize = 14

xButton.Name = "xButton"
xButton.Parent = MainFrame
xButton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
xButton.BorderSizePixel = 0
xButton.Size = UDim2.new(0, 31, 0, 36)
xButton.Font = Enum.Font.SourceSans
xButton.Text = "X"
xButton.TextColor3 = Color3.new(0.333333, 1, 1)
xButton.TextSize = 20

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = GameScriptGui
OpenFrame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
OpenFrame.BorderSizePixel = 0
OpenFrame.Position = UDim2.new(0, 0, 0.707509875, 0)
OpenFrame.Size = UDim2.new(0, 160, 0, 40)

Open.Name = "Open"
Open.Parent = OpenFrame
Open.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.075000003, 0)
Open.Size = UDim2.new(0, 158, 0, 37)
Open.Font = Enum.Font.SciFi
Open.Text = "Open"
Open.TextColor3 = Color3.new(0.333333, 1, 1)
Open.TextSize = 14

isw.MouseButton1Down:connect(function()
local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldindex = gmt.__index
gmt.__index = newcclosure(function(self,b)
    if b == "CFrame" then
        CFrame.new()
    end
return oldindex(self,b)
end)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.411705, 253.999863, 48.9925232)
end)

xButton.MouseButton1Down:connect(function()
MainFrame:TweenPosition(UDim2.new(0.384,0,-1,0), 'Out', 'Elastic', 3)
MainFrame.Visible = false
OpenFrame.Visible = true
end)

Open.MouseButton1Down:connect(function()
OpenFrame.Visible = false
MainFrame.Visible = true
MainFrame:TweenPosition(UDim2.new(0.384,0,0.377,0), 'Out', 'Elastic', 3)
end)
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
    "FE Admin (Press ; )",
    function()
    loadstring(game:HttpGet("https://pastebin.com/raw/MQ3wc7Zq", true))()
end
)

Main:Button(
    "Inf Yield",
    function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
)

Main:Button(
    "Auto Farm",
    function()
_G.Auto = true

while _G.Auto == true do

local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldindex = gmt.__index
gmt.__index = newcclosure(function(self,b)
    if b == "CFrame" then
        CFrame.new()
    end
return oldindex(self,b)
end)

wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.411705, 253.999863, 48.9925232)
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
wait(0.1)
local args = {
    [1] = "Immunity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Immunity:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "GlassTower"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Glass_Tower:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "HighSpeed"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_High_Speed:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "LowGravity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Low_Gravity:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "NightMode"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Night_Mode:InvokeServer(unpack(args))
wait(0.1)
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
		Text = "UPDATE: ONLY PRESS ONCE OR IT FIRES THE REMOTE MORE AND IF IT BREAKS PRESS ONCE AFTER A FEW RESPAWNS (same location)",
		Color = Color3.fromRGB(207, 96, 36)
	})
while true do
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = "LocalPlayer"

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = "LocalPlayer"

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = "LocalPlayer"

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = "LocalPlayer"

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end
end
)
