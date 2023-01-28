local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tilitestaccount/Idk/main/asd"))()
local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

local PepsisWorld = library:CreateWindow({
Name = "Belex Hub",
Themeable = {
Info = "Grand Piece Online"
}
})
local mainTab = PepsisWorld:CreateTab({ --Name before Tab
Name = "Main" -- Tab name
})
local modifierSection = mainTab:CreateSection({  -- Name before Tab and section
Name = "Player Modifiers" -- Section Name
})
local aTab = PepsisWorld:CreateTab({ --Name before Tab
Name = "Visuals" -- Tab name
})
local chestSection = aTab:CreateSection({  -- Name before Tab and section
Name = "Chest ESP" -- Section Name
})


modifierSection:AddButton({
Name = "Godmode Use Knocked",
Callback = function()
    Ur dad 
            v:Destroy()
            end
        end
    wait()
end

local RunService = game:GetService("RunService")
local humanoid = game.Players.LocalPlayer.Character.Humanoid

RunService.Heartbeat:Connect(function()
    humanoid.Health = 500
    wait()
end)
end
})

modifierSection:AddToggle({
Name = "Walkspeed",
Keybind = {
bool
},
Callback = function(bool)
    _G.Running = bool
    local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 while wait(0.005) and _G.Running == true do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1

if _G.Running == false then

end
end
end})







modifierSection:AddButton({
Name = "Noclip toggle P",
Callback = function()
local StealthMode = true -- If game has an anticheat that checks the logs

local Indicator

if not StealthMode then
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    print("NOCLIP: Press X to Activate")
    Indicator = Instance.new("TextLabel", ScreenGui)
    Indicator.AnchorPoint = Vector2.new(0, 1)
    Indicator.Position = UDim2.new(0, 0, 1, 0)
    Indicator.Size = UDim2.new(0, 200, 0, 50)
    Indicator.BackgroundTransparency = 1
    Indicator.TextScaled = true
    Indicator.TextStrokeTransparency = 0
    Indicator.TextColor3 = Color3.new(0, 0, 0)
    Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
    Indicator.Text = "Noclip: Enabled"
end

local noclip = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local mouse = player:GetMouse()

mouse.KeyDown:Connect(function(key)
    if key == "p" then
        noclip = not noclip

        if not StealthMode then
            Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
        end
    end
end)

while true do
    player = game.Players.LocalPlayer
    character = player.Character

    if noclip then
        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end

    game:GetService("RunService").Stepped:wait()
end
end
})






modifierSection:AddButton({
Name = "fly toggle H",
Callback = function()
-- THUNDER HUB ON TOP
repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 80 -- speed
local speed = 80 -- speed

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
if key:lower() == "h" then -- toggle 
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
})


modifierSection:AddButton({
Name = "Infinite Jump toggle L",
Callback = function()
_G.infinjump = true
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "l" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
end
})

chestSection:AddButton({
Name = "Rare Chest ESP",
Callback = function()
--thunder hub on top
local EspFolder = Instance.new("Folder",game.CoreGui)
        EspFolder.Name = "ChestEspFolder"
        modelsWithEsp = {} 
        while wait() do
            wait()
            for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
                if v.ClassName == "Model" and not modelsWithEsp[v] then 
                    local Chest = v:FindFirstChildOfClass("MeshPart")
                    if Chest and Chest.MeshId == "rbxassetid://10788852296" then
                        local esp = Instance.new("BoxHandleAdornment",EspFolder)
                        esp.Adornee = v
                        esp.ZIndex = 0
                        esp.Size = Vector3.new(4, 5, 1)
                        esp.Transparency = 0.65
                        esp.Color3 = Color3.fromRGB(0,191,255)
                        esp.AlwaysOnTop = true
                        esp.Name = "EspBox"
                        modelsWithEsp[v] = true 
                    end
                end
            end
        end
end
})

chestSection:AddButton({
Name = "Legendary chest ESP",
Callback = function()
--thunder hub on top
local EspFolder = Instance.new("Folder",game.CoreGui)
        EspFolder.Name = "ChestEspFolder"
        modelsWithEsp = {} 
        while wait() do
            wait()
            for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
                if v.ClassName == "Model" and not modelsWithEsp[v] then 
                    local Chest = v:FindFirstChildOfClass("MeshPart")
                    if Chest and Chest.MeshId == "rbxassetid://10798559852" then
                        local esp = Instance.new("BoxHandleAdornment",EspFolder)
                        esp.Adornee = v
                        esp.ZIndex = 0
                        esp.Size = Vector3.new(4, 5, 1)
                        esp.Transparency = 0.65
                        esp.Color3 = Color3.fromRGB(255,48,48)
                        esp.AlwaysOnTop = true
                        esp.Name = "EspBox"
                        modelsWithEsp[v] = true 
                    end
                end
            end
        end
end
})

chestSection:AddButton({
Name = "Mythical chest ESP",
Callback = function()
--thunder on top
 local EspFolder = Instance.new("Folder",game.CoreGui)
        EspFolder.Name = "ChestEspFolder"
        modelsWithEsp = {} 
        while wait() do
            wait()
            for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
                if v.ClassName == "Model" and not modelsWithEsp[v] then
                    local Chest = v:FindFirstChildOfClass("MeshPart")
                    if Chest and Chest.MeshId == "rbxassetid://10811929054" then
                        local esp = Instance.new("BoxHandleAdornment",EspFolder)
                        esp.Adornee = v
                        esp.ZIndex = 0
                        esp.Size = Vector3.new(4, 5, 1)
                        esp.Transparency = 0.65
                        esp.Color3 = Color3.fromRGB(102,0,255)
                        esp.AlwaysOnTop = true
                        esp.Name = "EspBox"
                        modelsWithEsp[v] = true 
                    end
                end
            end
        end
end
})


chestSection:AddButton({
Name = "Medal ESP",
Callback = function()
local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
    for i, v in pairs(game:GetService("Workspace").Effects["DragonClaw Medal"]:GetChildren()) do
        if not v:FindFirstChild("ESP") then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                local Highlight = Instance.new("Highlight")
                
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1
                BillboardGui.Size = UDim2.new(35, 0, 35, 0)
                BillboardGui.Name = "ESP"
            
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 69, 0)
                TextLabel.BackgroundTransparency = 1
                TextLabel.BorderSizePixel = 0
                TextLabel.Size = UDim2.new(1, 0, 1, 1)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.Text = "Dragon Claw Medal"
                TextLabel.TextColor3 = Color3.new(0.0666667, 1, 0)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 14
                TextLabel.TextWrapped = true

                Highlight.Archivable = true
                Highlight.Adornee = v
                Highlight.Parent = v
                Highlight.Name = "ESPHighight"
                Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                Highlight.Enabled = true
                Highlight.Color = Color3.fromRGB(255, 255, 255)
                Highlight.FillTransparency = 0.5
                Highlight.OutlineColor = Color3.fromRGB(255,255,255)
                Highlight.OutlineTransparency = 0
            end
        end
end)
local RunService = game:GetService("RunService")
    
RunService.RenderStepped:Connect(function()
    for i, v in pairs(game:GetService("Workspace").Effects["Electro Medal"]:GetChildren()) do
        if not v:FindFirstChild("ESP") then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                local Highlight = Instance.new("Highlight")
                    
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1
                BillboardGui.Size = UDim2.new(35, 0, 35, 0)
                BillboardGui.Name = "ESP"
                
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(0,127,255)
                TextLabel.BackgroundTransparency = 1
                TextLabel.BorderSizePixel = 0
                TextLabel.Size = UDim2.new(1, 0, 1, 1)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.Text = "Electro Medal"
                TextLabel.TextColor3 = Color3.fromRGB(0,127,255)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 14
                TextLabel.TextWrapped = true
    
                Highlight.Archivable = true
                Highlight.Adornee = v
                Highlight.Parent = v
                Highlight.Name = "ESPHighight"
                Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                Highlight.Enabled = true
                Highlight.Color = Color3.fromRGB(255, 255, 255)
                Highlight.FillTransparency = 0.5
                Highlight.OutlineColor = Color3.fromRGB(255,255,255)
                Highlight.OutlineTransparency = 0
            end
        end
end)
local RunService = game:GetService("RunService")
        
    RunService.RenderStepped:Connect(function()
        for i, v in pairs(game:GetService("Workspace").Effects["Fishman Karate Medal"]:GetChildren()) do
            if not v:FindFirstChild("ESP") then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")
                    local Highlight = Instance.new("Highlight")
                        
                    BillboardGui.Parent = v
                    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    BillboardGui.Active = true
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(35, 0, 35, 0)
                    BillboardGui.Name = "ESP"
                    
                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.fromRGB(0,0,156)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.BorderSizePixel = 0
                    TextLabel.Size = UDim2.new(1, 0, 1, 1)
                    TextLabel.Font = Enum.Font.SourceSans
                    TextLabel.Text = "Fishman Medal"
                    TextLabel.TextColor3 = Color3.fromRGB(0,0,156)
                    TextLabel.TextScaled = true
                    TextLabel.TextSize = 14
                    TextLabel.TextWrapped = true
        
                    Highlight.Archivable = true
                    Highlight.Adornee = v
                    Highlight.Parent = v
                    Highlight.Name = "ESPHighight"
                    Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    Highlight.Enabled = true
                    Highlight.Color = Color3.fromRGB(255, 255, 255)
                    Highlight.FillTransparency = 0.5
                    Highlight.OutlineColor = Color3.fromRGB(255,255,255)
                    Highlight.OutlineTransparency = 0
                end
            end
    end)
    local RunService = game:GetService("RunService")
            
RunService.RenderStepped:Connect(function()
        for i, v in pairs(game:GetService("Workspace").Effects["Rokushiki Medal"]:GetChildren()) do
            if not v:FindFirstChild("ESP") then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                local Highlight = Instance.new("Highlight")
                            
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1
                BillboardGui.Size = UDim2.new(35, 0, 35, 0)
                BillboardGui.Name = "ESP"
                        
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(107,35,142)
                TextLabel.BackgroundTransparency = 1
                TextLabel.BorderSizePixel = 0
                TextLabel.Size = UDim2.new(1, 0, 1, 1)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.Text = "Rokushiki Medal"
                TextLabel.TextColor3 = Color3.fromRGB(107,35,142)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 14
                TextLabel.TextWrapped = true
            
                Highlight.Archivable = true
                Highlight.Adornee = v
                Highlight.Parent = v
                Highlight.Name = "ESPHighight"
                Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                Highlight.Enabled = true
                Highlight.Color = Color3.fromRGB(255, 255, 255)
                Highlight.FillTransparency = 0.5
                Highlight.OutlineColor = Color3.fromRGB(255,255,255)
                Highlight.OutlineTransparency = 0
            end
        end
end)
local RunService = game:GetService("RunService")
    
RunService.RenderStepped:Connect(function()
    for i, v in pairs(game:GetService("Workspace").Effects["BlackLeg Medal"].Part:GetChildren()) do
        if not v:FindFirstChild("ESP") then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                local Highlight = Instance.new("Highlight")
                    
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1
                BillboardGui.Size = UDim2.new(35, 0, 35, 0)
                BillboardGui.Name = "ESP"
                
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                TextLabel.BackgroundTransparency = 1
                TextLabel.BorderSizePixel = 0
                TextLabel.Size = UDim2.new(1, 0, 1, 1)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.Text = "BlackLeg Medal"
                TextLabel.TextColor3 = Color3.fromRGB(30, 30, 30)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 14
                TextLabel.TextWrapped = true
    
                Highlight.Archivable = true
                Highlight.Adornee = v
                Highlight.Parent = v
                Highlight.Name = "ESPHighight"
                Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                Highlight.Enabled = true
                Highlight.Color = Color3.fromRGB(255, 255, 255)
                Highlight.FillTransparency = 0.5
                Highlight.OutlineColor = Color3.fromRGB(255,255,255)
                Highlight.OutlineTransparency = 0
            end
        end
end)
local RunService = game:GetService("RunService")
    
RunService.RenderStepped:Connect(function()
    for i, v in pairs(game:GetService("Workspace").Effects["1SS Medal"]:GetChildren()) do
        if not v:FindFirstChild("ESP") then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                local Highlight = Instance.new("Highlight")
                    
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1
                BillboardGui.Size = UDim2.new(35, 0, 35, 0)
                BillboardGui.Name = "ESP"
                
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(112,147,219)
                TextLabel.BackgroundTransparency = 1
                TextLabel.BorderSizePixel = 0
                TextLabel.Size = UDim2.new(1, 0, 1, 1)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.Text = "1SS Medal"
                TextLabel.TextColor3 = Color3.fromRGB(112,147,219)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 14
                TextLabel.TextWrapped = true
    
                Highlight.Archivable = true
                Highlight.Adornee = v
                Highlight.Parent = v
                Highlight.Name = "ESPHighight"
                Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                Highlight.Enabled = true
                Highlight.Color = Color3.fromRGB(255, 255, 255)
                Highlight.FillTransparency = 0.5
                Highlight.OutlineColor = Color3.fromRGB(255,255,255)
                Highlight.OutlineTransparency = 0
            end
        end
end)
local RunService = game:GetService("RunService")
        
RunService.RenderStepped:Connect(function()
    for i, v in pairs(game:GetService("Workspace").Effects["2SS Medal"]:GetChildren()) do
        if not v:FindFirstChild("ESP") then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                local Highlight = Instance.new("Highlight")
                        
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1
                BillboardGui.Size = UDim2.new(35, 0, 35, 0)
                BillboardGui.Name = "ESP"
                    
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(47,79,47)
                TextLabel.BackgroundTransparency = 1
                TextLabel.BorderSizePixel = 0
                TextLabel.Size = UDim2.new(1, 0, 1, 1)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.Text = "2SS Medal"
                TextLabel.TextColor3 = Color3.fromRGB(47,79,47)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 14
                TextLabel.TextWrapped = true
        
                Highlight.Archivable = true
                Highlight.Adornee = v
                Highlight.Parent = v
                Highlight.Name = "ESPHighight"
                Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                Highlight.Enabled = true
                Highlight.Color = Color3.fromRGB(255, 255, 255)
                Highlight.FillTransparency = 0.5
                Highlight.OutlineColor = Color3.fromRGB(255,255,255)
                Highlight.OutlineTransparency = 0
            end
        end
    end)
end
})

local playerSection = aTab:CreateSection({  -- Name before Tab and section
Name = "Player ESP" -- Section Name
})



playerSection:AddButton({
Name = "Boxes + Username ",
Callback = function()
local ESP = {
    Enabled = true,
    Boxes = true,
    BoxShift = CFrame.new(0,-1.5,0),
	BoxSize = Vector3.new(4,6,0),
    Color = Color3.fromRGB(255, 170, 0),
    FaceCamera = false,
    Names = true,
    TeamColor = true,
    Thickness = 0.5,
    AttachShift = 1,
    TeamMates = true,
    Players = true,
    
    Objects = setmetatable({}, {__mode="kv"}),
    Overrides = {}
}

--Declarations--
local cam = workspace.CurrentCamera
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()

local V3new = Vector3.new
local WorldToViewportPoint = cam.WorldToViewportPoint

--Functions--
local function Draw(obj, props)
	local new = Drawing.new(obj)
	
	props = props or {}
	for i,v in pairs(props) do
		new[i] = v
	end
	return new
end

function ESP:GetTeam(p)
	local ov = self.Overrides.GetTeam
	if ov then
		return ov(p)
	end
	
	return p and p.Team
end

function ESP:IsTeamMate(p)
    local ov = self.Overrides.IsTeamMate
	if ov then
		return ov(p)
    end
    
    return self:GetTeam(p) == self:GetTeam(plr)
end

function ESP:GetColor(obj)
	local ov = self.Overrides.GetColor
	if ov then
		return ov(obj)
    end
    local p = self:GetPlrFromChar(obj)
	return p and self.TeamColor and p.Team and p.Team.TeamColor.Color or self.Color
end

function ESP:GetPlrFromChar(char)
	local ov = self.Overrides.GetPlrFromChar
	if ov then
		return ov(char)
	end
	
	return plrs:GetPlayerFromCharacter(char)
end

function ESP:Toggle(bool)
    self.Enabled = bool
    if not bool then
        for i,v in pairs(self.Objects) do
            if v.Type == "Box" then --fov circle etc
                if v.Temporary then
                    v:Remove()
                else
                    for i,v in pairs(v.Components) do
                        v.Visible = false
                    end
                end
            end
        end
    end
end

function ESP:GetBox(obj)
    return self.Objects[obj]
end

function ESP:AddObjectListener(parent, options)
    local function NewListener(c)
        if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
            if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
                if not options.Validator or options.Validator(c) then
                    local box = ESP:Add(c, {
                        PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
                        Color = type(options.Color) == "function" and options.Color(c) or options.Color,
                        ColorDynamic = options.ColorDynamic,
                        Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
                        IsEnabled = options.IsEnabled,
                        RenderInNil = options.RenderInNil
                    })
                    --TODO: add a better way of passing options
                    if options.OnAdded then
                        coroutine.wrap(options.OnAdded)(box)
                    end
                end
            end
        end
    end

    if options.Recursive then
        parent.DescendantAdded:Connect(NewListener)
        for i,v in pairs(parent:GetDescendants()) do
            coroutine.wrap(NewListener)(v)
        end
    else
        parent.ChildAdded:Connect(NewListener)
        for i,v in pairs(parent:GetChildren()) do
            coroutine.wrap(NewListener)(v)
        end
    end
end

local boxBase = {}
boxBase.__index = boxBase

function boxBase:Remove()
    ESP.Objects[self.Object] = nil
    for i,v in pairs(self.Components) do
        v.Visible = false
        v:Remove()
        self.Components[i] = nil
    end
end

function boxBase:Update()
    if not self.PrimaryPart then
        --warn("not supposed to print", self.Object)
        return self:Remove()
    end

    local color
    if ESP.Highlighted == self.Object then
       color = ESP.HighlightColor
    else
        color = self.Color or self.ColorDynamic and self:ColorDynamic() or ESP:GetColor(self.Object) or ESP.Color
    end

    local allow = true
    if ESP.Overrides.UpdateAllow and not ESP.Overrides.UpdateAllow(self) then
        allow = false
    end
    if self.Player and not ESP.TeamMates and ESP:IsTeamMate(self.Player) then
        allow = false
    end
    if self.Player and not ESP.Players then
        allow = false
    end
    if self.IsEnabled and (type(self.IsEnabled) == "string" and not ESP[self.IsEnabled] or type(self.IsEnabled) == "function" and not self:IsEnabled()) then
        allow = false
    end
    if not workspace:IsAncestorOf(self.PrimaryPart) and not self.RenderInNil then
        allow = false
    end

    if not allow then
        for i,v in pairs(self.Components) do
            v.Visible = false
        end
        return
    end

    if ESP.Highlighted == self.Object then
        color = ESP.HighlightColor
    end

    --calculations--
    local cf = self.PrimaryPart.CFrame
    if ESP.FaceCamera then
        cf = CFrame.new(cf.p, cam.CFrame.p)
    end
    local size = self.Size
    local locs = {
        TopLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,size.Y/2,0),
        TopRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,size.Y/2,0),
        BottomLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,-size.Y/2,0),
        BottomRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,-size.Y/2,0),
        TagPos = cf * ESP.BoxShift * CFrame.new(0,size.Y/2,0),
        Torso = cf * ESP.BoxShift
    }

    if ESP.Boxes then
        local TopLeft, Vis1 = WorldToViewportPoint(cam, locs.TopLeft.p)
        local TopRight, Vis2 = WorldToViewportPoint(cam, locs.TopRight.p)
        local BottomLeft, Vis3 = WorldToViewportPoint(cam, locs.BottomLeft.p)
        local BottomRight, Vis4 = WorldToViewportPoint(cam, locs.BottomRight.p)

        if self.Components.Quad then
            if Vis1 or Vis2 or Vis3 or Vis4 then
                self.Components.Quad.Visible = true
                self.Components.Quad.PointA = Vector2.new(TopRight.X, TopRight.Y)
                self.Components.Quad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                self.Components.Quad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                self.Components.Quad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
                self.Components.Quad.Color = color
            else
                self.Components.Quad.Visible = false
            end
        end
    else
        self.Components.Quad.Visible = false
    end

    if ESP.Names then
        local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
        
        if Vis5 then
            self.Components.Name.Visible = true
            self.Components.Name.Position = Vector2.new(TagPos.X, TagPos.Y)
            self.Components.Name.Text = self.Name
            self.Components.Name.Color = color
            
            self.Components.Distance.Visible = true
            self.Components.Distance.Position = Vector2.new(TagPos.X, TagPos.Y + 14)
            self.Components.Distance.Text = math.floor((cam.CFrame.p - cf.p).magnitude) .."m away"
            self.Components.Distance.Color = color
        else
            self.Components.Name.Visible = false
            self.Components.Distance.Visible = false
        end
    else
        self.Components.Name.Visible = false
        self.Components.Distance.Visible = false
    end
    
    if ESP.Tracers then
        local TorsoPos, Vis6 = WorldToViewportPoint(cam, locs.Torso.p)

        if Vis6 then
            self.Components.Tracer.Visible = true
            self.Components.Tracer.From = Vector2.new(TorsoPos.X, TorsoPos.Y)
            self.Components.Tracer.To = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/ESP.AttachShift)
            self.Components.Tracer.Color = color
        else
            self.Components.Tracer.Visible = false
        end
    else
        self.Components.Tracer.Visible = false
    end
end

function ESP:Add(obj, options)
    if not obj.Parent and not options.RenderInNil then
        return warn(obj, "has no parent")
    end

    local box = setmetatable({
        Name = options.Name or obj.Name,
        Type = "Box",
        Color = options.Color --[[or self:GetColor(obj)]],
        Size = options.Size or self.BoxSize,
        Object = obj,
        Player = options.Player or plrs:GetPlayerFromCharacter(obj),
        PrimaryPart = options.PrimaryPart or obj.ClassName == "Model" and (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")) or obj:IsA("BasePart") and obj,
        Components = {},
        IsEnabled = options.IsEnabled,
        Temporary = options.Temporary,
        ColorDynamic = options.ColorDynamic,
        RenderInNil = options.RenderInNil
    }, boxBase)

    if self:GetBox(obj) then
        self:GetBox(obj):Remove()
    end

    box.Components["Quad"] = Draw("Quad", {
        Thickness = self.Thickness,
        Color = color,
        Transparency = 1,
        Filled = false,
        Visible = self.Enabled and self.Boxes
    })
    box.Components["Name"] = Draw("Text", {
		Text = box.Name,
		Color = box.Color,
		Center = true,
		Outline = true,
        Size = 19,
        Visible = self.Enabled and self.Names
	})
	box.Components["Distance"] = Draw("Text", {
		Color = box.Color,
		Center = true,
		Outline = true,
        Size = 19,
        Visible = self.Enabled and self.Names
	})
	
	box.Components["Tracer"] = Draw("Line", {
		Thickness = ESP.Thickness,
		Color = box.Color,
        Transparency = 1,
        Visible = self.Enabled and self.Tracers
    })
    self.Objects[obj] = box
    
    obj.AncestryChanged:Connect(function(_, parent)
        if parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)
    obj:GetPropertyChangedSignal("Parent"):Connect(function()
        if obj.Parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)

    local hum = obj:FindFirstChildOfClass("Humanoid")
	if hum then
        hum.Died:Connect(function()
            if ESP.AutoRemove ~= false then
                box:Remove()
            end
		end)
    end

    return box
end

local function CharAdded(char)
    local p = plrs:GetPlayerFromCharacter(char)
    if not char:FindFirstChild("HumanoidRootPart") then
        local ev
        ev = char.ChildAdded:Connect(function(c)
            if c.Name == "HumanoidRootPart" then
                ev:Disconnect()
                ESP:Add(char, {
                    Name = p.Name,
                    Player = p,
                    PrimaryPart = c
                })
            end
        end)
    else
        ESP:Add(char, {
            Name = p.Name,
            Player = p,
            PrimaryPart = char.HumanoidRootPart
        })
    end
end
local function PlayerAdded(p)
    p.CharacterAdded:Connect(CharAdded)
    if p.Character then
        coroutine.wrap(CharAdded)(p.Character)
    end
end
plrs.PlayerAdded:Connect(PlayerAdded)
for i,v in pairs(plrs:GetPlayers()) do
    if v ~= plr then
        PlayerAdded(v)
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    cam = workspace.CurrentCamera
    for i,v in (ESP.Enabled and pairs or ipairs)(ESP.Objects) do
        if v.Update then
            local s,e = pcall(v.Update, v)
            if not s then warn("[EU]", e, v.Object:GetFullName()) end
        end
    end
end)

return ESP
end
})


playerSection:AddButton({
Name = "Charms",
Callback = function()
local players = game.Players:GetPlayers()

for i,v in pairs(players) do
 local esp = Instance.new("Highlight")
 esp.Name = v.Name
 esp.FillTransparency = 50
 esp.FillColor = Color3.new(1, 0.666667, 0)
 esp.OutlineColor = Color3.new(1, 0.333333, 1)
 esp.OutlineTransparency = 0
 esp.Parent = v.Character
end
end
})
