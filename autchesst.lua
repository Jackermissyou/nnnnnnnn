
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame_3 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.500
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.420601517, 0, 0.169314548, 0)
Frame.Size = UDim2.new(0, 217, 0, 302)

UICorner.Parent = Frame

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 2.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(0, 65, 0, 69)
ImageLabel.Image = "rbxassetid://14561079984"

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0740345195, 0, 0.225354433, 0)
Frame_2.Size = UDim2.new(0, 189, 0, -3)

UICorner_2.Parent = Frame_2

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0740345195, 0, 0.873263001, 0)
Frame_3.Size = UDim2.new(0, 189, 0, 4)

UICorner_3.Parent = Frame_3

ImageLabel_2.Parent = Frame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.17435804, 0, 0.324596375, 0)
ImageLabel_2.Size = UDim2.new(0, 141, 0, 122)
ImageLabel_2.Image = "rbxassetid://14561316419"

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0775531828, 0, 0.0284909885, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Sun Hub"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 20.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 5
TextLabel_2.Position = UDim2.new(0.0314702317, 0, 0.191734269, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "Chest Fam "
TextLabel_2.TextColor3 = Color3.fromRGB(85, 0, 255)
TextLabel_2.TextSize = 20.000

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0311597139, 0, 0.672459662, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.GothamBold
TextLabel_3.Text = "✔✅"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 25.000
TextLabel_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(170, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 127))}
UIGradient.Parent = TextLabel_3

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.035128966, 0, 0.871259868, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.GothamBold
TextLabel_4.Text = "best scrip fam chest"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextSize = 14.000

TextLabel_5.Parent = Frame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0219735, 0, 0.762653291, 0)
TextLabel_5.Size = UDim2.new(0, 200, 0, 50)
TextLabel_5.Font = Enum.Font.GothamBold
TextLabel_5.Text = "by jacker"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextSize = 14.000

repeat wait() until game:IsLoaded()
_G.Setting = {
    ["Team"] = "Marines",
    ["SuicideAfterXChest"] = 5,
    ["SuperFpsBoost"] = true, --lesslag
    ["Stop If You Get The God's Chalice"] = true,
    ["Stop If You Get The Fist of Darkness"] = true,
    ["AutoRip"] = true,
    ["HopServer"] = {
        ["Enable"] = true,
        ["HopServerAfterXChest"] = 100, --math.huge is infinity
        ["HopIfThereIsNoChest"] = true
    },
    ["Discord:"] = "https://discord.gg/gCChPU3jBG"
}

if _G.Setting["Discord:"] ~= "https://discord.gg/gCChPU3jBG" then
    return;
end

_G.ChestFarm = true
local players = game:GetService("Players")
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Sun Hub";
    Text = "Welcome, " .. players.LocalPlayer.DisplayName;
    Icon = "rbxthumb://type=AvatarHeadShot&id=" .. players.LocalPlayer.UserId .. "&w=100&h=100 true";
    Duration = 5
})

function IsRipIndra()
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if string.lower(v.Name):find("rip") or string.lower(v.Name):find("indra") then
            return true
        end
    end

    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.lower(v.Name):find("rip") or string.lower(v.Name):find("indra") then
            return true
        end
    end
    return false
end

function IsDarkbeard()
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if string.lower(v.Name):find("Dark") or string.lower(v.Name):find("beard") then
            return true
        end
    end

    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.lower(v.Name):find("Dark") or string.lower(v.Name):find("beard") then
            return true
        end
    end
    return false
end

repeat wait(0.5)
    pcall(function()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.Setting.Team == "Pirates" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            elseif _G.Setting.Team == "Marines" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            end
        end
    end)
until game.Players.LocalPlayer.Team ~= nil

if _G.Setting.SuperFpsBoost then
    wait(2)
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        pcall(function()
            if v.Transparency and v.Parent ~= game.Players.LocalPlayer.Character then
                v.Transparency = 1
            end
        end)
    end
end

function HopServer()
    	local Player = game.Players.LocalPlayer    
		local Http = game:GetService("HttpService")
		local TPS = game:GetService("TeleportService")
		local Api = "https://games.roblox.com/v1/games/"
		local _place,_id = game.PlaceId, game.JobId
		local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
		function ListServers(cursor)
		   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
		   return Http:JSONDecode(Raw)
		end

		while true do 
		   local Servers = ListServers()
		   for i, server in ipairs(Servers.data) do
			  local args = {
				    [1] = "teleport",
				    [2] = server.id
				}
				game:GetService("ReplicatedStorage"):WaitForChild("__ServerBrowser"):InvokeServer(unpack(args))
			end
            wait(5)
		end
end
function IsChest()
    local workspace = game:GetService("Workspace")
    local chestsToCheck = {"Chest1", "Chest2", "Chest3"}
    local foundChest = false
    for _, chestName in ipairs(chestsToCheck) do
        local chest = workspace:FindFirstChild(chestName)
        if chest then
            foundChest = true
            return true
        end
    end

    if not foundChest then
        return false
    end
end
function IsGodChalice()
    if _G.Setting["Stop If You Get The God's Chalice"] then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fist Of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist Of Darkness") then
            return true
        else
            return false
        end
    else
        return false
    end
end
function IsFistofDarkness()
    if _G.Setting["Stop If You Get The Fist of Darkness"] then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
            return true
        else
            return false
        end
    else
        return false
    end
end
spawn(function()
    while true do wait()
        game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
            if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
                if not Hopping then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                    wait(50)
                end
            end
        end)
    end
end)

spawn(function()
    while true do wait()
        if _G.ChestFarm then
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        else
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end
end)
spawn(function()
    while true do wait()
        if _G.Setting.HopServer.HopIfThereIsNoChest then
            if not IsChest() then
                Hopping = true
                HopServer()
                wait(math.huge)
            end
        end
    end
end)
time = 0
collected = 0


spawn(function()
    while wait() do
        if IsFistofDarkness() then
            _G.ChestFarm = false
            _G.BossSpawn = true
        end
        if IsGodChalice() then
            _G.ChestFarm = false
            _G.BossSpawn = true
        end
    end
end)
spawn(function()
    while wait() do
        if _G.BossSpawn then
            _G.ChestFarm = false
        end
    end
end)
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Script" then
        v:Destroy()
    end
end
spawn(function()
    while wait() do
        if _G.ChestFarm and not _G.BossSpawn then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v:IsA("BasePart") and string.find(v.Name, "Chest") then
                        repeat task.wait()
                            pcall(function()
                                if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and not IsGodChalice() then
                                    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and not IsFistofDarkness() then
                                        if _G.ChestFarm then
                                            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.CFrame)
                                            delay(0.1,function()
                                                game:service("VirtualInputManager"):SendKeyEvent(true, "Q", false, game)
                                                task.wait()
                                                game:service("VirtualInputManager"):SendKeyEvent(false, "Q", false, game)
                                            end)
                                        end
                                    end
                                end
                            end)
                        until not v or not v.Parent or not _G.ChestFarm
                        if _G.ChestFarm then
                            time = time + 1
                            collected = collected + 1
                            print("Collected: " ..collected .. " chests" )
                        end
                        if time == _G.Setting.SuicideAfterXChest and not IsGodChalice() and _G.ChestFarm then                  
                            local check = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("SetTeam", _G.Setting.Team)
                            if check ~= 0 then
                                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
                            end
                            time = 0
                            wait()
                        end                   
                        if _G.Setting.HopServer.Enable and collected == _G.Setting.HopServer.HopServerAfterXChest and _G.ChestFarm then
                            Hopping = true
                            HopServer()
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Setting.AutoRip then
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat task.wait()
                                pcall(function()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                end)
                            until _G.Setting.AutoRip == false or v.Humanoid.Health <= 0
                        end
                    end
                else
                    topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                end
            end
        end
    end)
end)
ask.spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.Rauden["Auto Dark Coat"] then
                if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("Darkbeard [Lv. 1000] [Raid Boss]" or v.Name == "Darkbeard [Lv. 1000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat wait()
                                StartMagnet = true
                                FastAttack = true
                                if _G.Settings.Configs["Auto Haki"] then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
                                    wait()
                                    EquipWeapon(_G.Settings.Configs["Select Weapon"])
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not _G.Settings.Configs["Fast Attack"] then
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                if _G.Settings.Configs["Show Hitbox"] then
                                    v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
                                else
                                    v.HumanoidRootPart.Transparency = 1
                                end
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
                            until _G.Settings.Rauden["Auto Dark Coat"] == false or v.Humanoid.Health <= 0
                            StartMagnet = false
                            FastAttack = false
                        end
                    end
                else
                    toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if G.Settings.Fruits then
            game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("Cousin","Buy")
            wait(15)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Settings.Fruits then wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if string.find(v.Name,"Fruit") then
                    local FruitName = RemoveSpaces(v.Name)
                    if v.Name == "Bird: Falcon Fruit" then
                        NameFruit = "Bird-Bird: Falcon"
                    elseif v.Name == "Bird: Phoenix Fruit" then
                        NameFruit = "Bird-Bird: Phoenix"
                    elseif v.Name == "Human: Buddha Fruit" then
                        NameFruit = "Human-Human: Buddha"
                    else
                        NameFruit = FruitName.."-"..FruitName
                    end

                    local string_1 = "getInventoryFruits";
                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                    for i1,v1 in pairs(Target:InvokeServer(string_1)) do
                        if v1.Name == NameFruit then
                            HaveFruitInStore = true
                        end
                    end
                    if not HaveFruitInStore then
                        local string_1 = "StoreFruit";
                        local string_2 = NameFruit;
                        local string_3 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.Name);
                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                        Target:InvokeServer(string_1, string_2, string_3);
                    end
                    HaveFruitInStore = false
                end
            end
        end
    end
end)