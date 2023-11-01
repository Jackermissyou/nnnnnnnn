repeat wait() until game.Players.LocalPlayer
repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui

_G.Settings = {

	General = {
        ["Starting"] = false,
        ["Mob Aura"] = false,
		["Factory"] = false,
		["Ectoplasm"] = false,
		["Bartilo Quest"] = false,
		["Evo Race"] = false,
		["Bone"] = false,
		["Pirate Raid"] = false,
        ["Auto Travel Dressrosa"] = false,
		["Auto Travel Zou"] = false,
		["Select Material"] = {""},
		["Auto Material"] = false,
    },

    Setting = {
		["Select Team"] = {"Pirate"},
		["Select Weapon"] = {"Melee"},
		["Fast Attack"] = true,
		["Skip Level"] = true,
		["Auto Race"] = false,
		["Auto Haki"] = true,
		["Double Quest"] = true,
		["Mob"] = false,
		["Bypass TP"] = true,
		["Auto Rejoin"] = true,
        ["Auto Redeem Code"] = true,
		["White Screen"] = false,
		["Black Screen"] = false,
		["Mob Health (%)"] = 25,
		["Skill Z"] = true,
		["Skill X"] = false,
		["Skill C"] = false,
		["Skill V"] = false,
	},

	Boss = {
		["Select Boss"] = {""},
		["Auto Boss Select"] = false,
		["Auto All Boss"] = false,
		["Auto Quest"] = true,
	},

    Stats = {
		["Auto Stats Kaitun"] = true,
        ["Auto Stats Melee"] = false,
        ["Auto Stats Defense"] = false,
        ["Auto Stats Sword"] = false,
        ["Auto Stats Gun"] = false,
        ["Auto Stats Devil Fruit"] = false,
        ["Points"] = 3,
	},

	Melee = {
		["Auto Superhuman"] = false,
		["Auto Death Step"] = false,
		["Auto Sharkman Karate"] = false,
        ["Auto Electric Claw"] = false,
		["Auto Dragon Talon"] = false,
		["Auto God Human"] =  false,
	},

	Item = {
		["Saber"] = false,
		["Pole"] = false,
		["Rengoku"] = false,
		["Legendary Sword"] = false,
		["True Triple Katana"] = false,
		["Dark Coat"] = false,
	},

	Raid = {
		["Select Raid"] = false,
		["Auto Raid"] = false,
		["Kill Aura"] = false,
		["Auto Awakened"] = false,
		["Auto Next Place"] = false,
	},

	LawRaid = {
		["Auto Buy Chip Law"] = false,
		["Auto Start Law"] = false,
		["Auto Kill Law"] = false,
 	},
	
	DevilFruit = {
		["Auto Buy Fruit Cousin"] = false,
		["Auto Bring Fruit"] = false,
		["Auto Store Fruit"] = false,
		["Auto Buy Devil Fruit"] = false,
		["Select Devil Fruit"] = {}, -- {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon","Leopard-Leopard","Bizzard-Bizzard"}
	},

	Mastery = {
		["Auto Farm Fruit Mastery"] = false,
		["Auto Farm Gun Mastery"] = false,
	},
}

function LoadSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("Vy-Gaming") then
			makefolder("Vy-Gaming")
		end
		if not isfolder("Vy-Gaming/Blox Fruits/") then
			makefolder("Vy-Gaming/Blox Fruits/")
		end
		if not isfile("Vy-Gaming/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			writefile("Vy-Gaming/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Vy-Gaming/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			for i,v in pairs(Decode) do
				_G.Settings[i] = v
			end
		end
	else
		return warn("Status : Undetected Executor")
	end
end

function SaveSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfile("Vy-Gaming/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			LoadSettings()
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Vy-Gaming/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			local Array = {}
			for i,v in pairs(_G.Settings) do
				Array[i] = v
			end
			writefile("Vy-Gaming/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
		end
	else
		return warn("Status : Undetected Executor")
	end
end

LoadSettings()

local GameId = game.PlaceId
if GameId == 2753915549 then
	FirstSea = true
elseif GameId == 4442272183 then
	SecondSea = true
elseif GameId == 7449423635 then
	ThirdSea = true
else
	game:Shutdown()
end

repeat wait()
	if game.Players.LocalPlayer.Team == nil and game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
		if _G.Settings.Setting["Select Team"] == "Pirate" then
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
			wait(.5)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, true, game, 1)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, false, game, 1)
		elseif _G.Settings.Setting["Select Team"] == "Marine" then
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
			wait(.5)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, true, game, 1)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, false, game, 1)
		else
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
			wait(.5)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, true, game, 1)
			game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, false, game, 1)
		end
	end
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()

wait(1)

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

function EquipWeapon(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end

function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

getgenv().NoDieEffect = false 
if getgenv().NoDieEffect then
	if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
		game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
	end
	if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
		game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
	end
	if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("LevelUp") then
		game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy()
	end
	game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
end

if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
	game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
		pcall(function()
			if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
				game.Players.LocalPlayer.Character.Stun.Value = 0
			end
		end)
	end)
end

task.spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			if _G.Settings.General["Starting"] or _G.Settings.General["Auto Travel Dressrosa"] or
			_G.Settings.General["Auto Travel Zou"] or _G.Settings.General["Ectoplasm"] or 
			_G.Settings.General["Bone"] or _G.Settings.General["Auto Material"] or
			_G.Settings.General["Bartilo Quest"] or 
			_G.Settings.Melee["Auto Death Step"] or _G.Settings.Melee["Auto Sharkman Karate"] or
			_G.Settings.Melee["Auto God Human"] or
			_G.Settings.Item["Saber"] or _G.Settings.Item["Pole"] or
			_G.Settings.Item["Rengoku"] or _G.Settings.Item["True Triple Katana"] or
			_G.Settings.Item["Dark Coat"] or
			_G.Settings.Boss["Auto All Boss"] or _G.Settings.Boss["Auto Boss Select"] or
			_G.Settings.Raid["Auto Raid"] or _G.Settings.Raid["Auto Next Place"] or
			_G.Settings.LawRaid["Auto Kill Law"] or
			_G.Settings.Mastery["Auto Farm Fruit Mastery"] or _G.Settings.Mastery["Auto Farm Gun Mastery"] or
			_G.Settings.General["Mob Aura"] then
				if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
						game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
					end
					local BodyVelocity = Instance.new("BodyVelocity")
					BodyVelocity.Name = "BodyVelocity1"
					BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
					BodyVelocity.Velocity = Vector3.new(0, 0, 0)
					end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			else
				if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
					game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
				end
			end
		end)
	end)
end)

task.spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if StartMagnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							v.Humanoid:ChangeState(14)
							v.Humanoid:ChangeState(11)
						end
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while wait() do
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
			pcall(function()
				if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
					v:Destroy()
				end
			end)
		end
	end
end)

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end

function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(60)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.01, 0.01, 0.01)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				end
			end
		end
	end
end

function AttackPlayers()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHitsPlayers(60)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.01, 0.01, 0.01)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				end
			end
		end
	end
end

local gt = getrawmetatable(game)
local old = gt.__namecall
	setreadonly(gt, false)
	gt.__namecall = newcclosure(function(self, ...)
	local method = getnamecallmethod()
		if method == "Kick" or method == "kick" then
    		print(...)
			wait(9e9)
			return
		end
	return old(self,...)
end)

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
            pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/150, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
            tween:Play()
        if Distance <= 1000 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
        _G.Clip = false
    end
end

local function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
	end
end

function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	wait(1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end

local function toTarget(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end

	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end

	local tweenfunc = {}
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 1000 then
		Speed = 315
	elseif Distance >= 1000 then
		Speed = 300
	end

	if _G.Settings.Setting["Bypass TP"] then
		if Distance > 3000 and not (game.Players.LocalPlayer.Character:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") or game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) then
			pcall(function()
				tween:Cancel()
				fkwarp = false

				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then 
					wait(.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
				elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							game.Players.LocalPlayer.Character.Head:Destroy()
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
							wait(2)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					wait(.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
				end
				wait(0.2)

				return
			end)
		end
	end

	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		tween:Cancel()
	end 

	function tweenfunc:Wait()
		tween.Completed:Wait()
	end 

	return tweenfunc
end

function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

function FPSBooster()
    pcall(function()
        game:GetService("Lighting").FantasySky:Destroy()
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    --v.CanCollide = false
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
            elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                    
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
            end
        end
        for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
            if v.Name == ("Water;") then
                v.Transparency = 1
                v.Material = "Plastic"
            end
        end
    end)
end

function Hop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	function Teleport() 
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end

            function TelePBoss(p)
		pcall(function()
			if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				if NameQuest == "FishmanQuest" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					_G.Stop_Tween = nil
				elseif Ms == "God's Guard [Lv. 450]"  then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					_G.Stop_Tween = nil
				elseif NameQuest == "SkyExp1Quest" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					_G.Stop_Tween = nil
				elseif NameQuest == "ShipQuest1" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					_G.Stop_Tween = nil
				elseif NameQuest == "ShipQuest2" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					_G.Stop_Tween = nil
				elseif NameQuest == "FrostQuest" then
					_G.Stop_Tween = true
					TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					_G.Stop_Tween = nil
				else
					Mix_Farm = true
					_G.Stop_Tween = true
					repeat wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
						wait(.05)
						game.Players.LocalPlayer.Character.Head:Destroy()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
					wait()
					_G.Stop_Tween = nil
					Mix_Farm = nil
				end
			end
		end)
	end


function InfinitiesEnergy()
	game:GetService('Players').LocalPlayer.Character.Energy.Changed:connect(function()
		if _G.Settings.Misc["Infinities Energy"] then
			game:GetService('Players').LocalPlayer.Character.Energy.Value = game:GetService('Players').LocalPlayer.Character.Energy.MaxValue
		end 
	end)
end

function NoCooldown()
	for i,v in next, getgc() do
		if typeof(v) == "function" then
			if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Dodge") and _G.Settings.Misc["No Dash Cooldown"] then
				for i2,v2 in next, getupvalues(v) do
					if tostring(v2) == "0.4" then
						repeat wait(.1)
							setupvalue(v,i2,0)
						until not _G.Settings.Misc["No Dash Cooldown"]
					end
				end
			end
			if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Geppo") and _G.Settings.Misc["Infinities Geppo"] then
				for i2,v2 in next, getupvalues(v) do
					if tostring(v2) == "0" then
						repeat wait(.1)
							setupvalue(v,i2,0)
						until not _G.Settings.Misc["Infinities Geppo"]
					end
				end
			end
			if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") and _G.Settings.Misc["No Soru Cooldown"] then
				for i2,v2 in pairs(debug.getupvalues(v)) do
					if type(v2) == 'table' then
						if v2.LastUse then
							repeat wait()
								setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
							until not _G.Settings.Misc["No Soru Cooldown"]
						end
					end
				end
			end
		end
	end
end

function xray(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0.5
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end

function ClickCamera()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
end
function Click()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end

function comma_value(p1)
	local v1 = p1;
	while true do
		local v2, v3 = string.gsub(v1, "^(-?%d+)(%d%d%d)", "%1,%2");
		v1 = v2;
		if v3 ~= 0 then else
			break;
		end;	
	end;
	return v1;
end;

_G.CheckFruitLocal1M = false
function CheckFruit1M()
	for i,v in pairs(game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("getInventoryFruits")) do
		if v.Price >= 1000000 then 
			_G.CheckFruitLocal1M = true
		end
	end
end

function GetFightingStyle(Style)
	ReturnText = ""
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end

function CheckMasteryWeapon(NameWe,MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

function GetMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

local AllMaterial
if FirstSea then
	AllMaterial = {
		"Magma Ore",
		"Leather",
		"Scrap Metal",
		"Angel Wings",
		"Fish Tail"
	}
elseif SecondSea then
	AllMaterial = {
		"Magma Ore",
		"Scrap Metal",
		"Radioactive Material",
		"Vampire Fang",
		"Mystic Droplet",
	}
elseif ThirdSea then
	AllMaterial = {
		"Mini Tusk",
		"Fish Tail",
		"Scrap Metal",
		"Dragon Scale",
		"Conjured Cocoa",
		"Demonic Wisp",
		"Gunpowder",
	}
end

table.sort(AllMaterial)

local function CustomFindFirstChild(tablename)
	for i,v in pairs(tablename) do
		if game:GetService("Workspace").Enemies:FindFirstChild(v) then
			return true
		end
	end
	return false
end

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end


local Player = game:GetService('Players').LocalPlayer

local function CheckRig()
	if Player.Character then
		local Humanoid = Player.Character:WaitForChild('Humanoid')
		if Humanoid.RigType == Enum.HumanoidRigType.R15 then
			return 'R15'
		else
			return 'R6'
		end
	end
end

local function InitiateInvis()
	local Character = Player.Character
	local StoredCF = Character.PrimaryPart.CFrame

	if CheckRig() == 'R6' then
		local Clone = Character.HumanoidRootPart:Clone()
		Character.HumanoidRootPart:Destroy()
		Clone.Parent = Character
	else
		local Clone = Character.LowerTorso.Root:Clone()
		Character.LowerTorso.Root:Destroy()
		Clone.Parent = Character.LowerTorso
	end

end

local function CheckMaterial(v1)
	if FirstSea then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
			CFrameMon=CFrame.new( -5815,84,8820);
		elseif ((v1=="Leather") or (v1=="Scrap Metal")) then 
			MaterialMob={"Brute [Lv. 45]"};
			CFrameMon=CFrame.new( -1145,15,4350);
		elseif (v1=="Angel Wings") then 
			MaterialMob={"God's Guard [Lv. 450]"};
			CFrameMon=CFrame.new( -4698,845, -1912);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
			CFrameMon=CFrame.new(61123,19,1569);
		end 
	end 
	if SecondSea then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Magma Ninja [Lv. 1175]"};
			CFrameMon=CFrame.new( -5428,78, -5959);
		elseif (v1=="Scrap Metal") then
			MaterialMob={"Swan Pirate [Lv. 775]"};
			CFrameMon=CFrame.new(878,122,1235);
		elseif (v1=="Radioactive Material") then 
			MaterialMob={"Factory Staff [Lv. 800]"};
			CFrameMon=CFrame.new(295,73, -56);
		elseif (v1=="Vampire Fang") then 
			MaterialMob={"Vampire [Lv. 975]"};
			CFrameMon=CFrame.new( -6033,7, -1317);
		elseif (v1=="Mystic Droplet") then 
			MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
			CFrameMon=CFrame.new( -3385,239, -10542);
		end 
	end 
	if ThirdSea then 
		if (v1=="Mini Tusk") then 
			MaterialMob={"Mythological Pirate [Lv. 1850]"};
			CFrameMon=CFrame.new( -13545,470, -6917);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
			CFrameMon=CFrame.new( -10993,332, -8940);
		elseif (v1=="Scrap Metal") then 
			MaterialMob={"Jungle Pirate [Lv. 1900]"};
			CFrameMon=CFrame.new( -12107,332, -10549);
		elseif (v1=="Dragon Scale") then 
			MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
			CFrameMon=CFrame.new(6594,383,139);
		elseif (v1=="Conjured Cocoa") then 
			MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
			CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625);
		elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"};
			CFrameMon=CFrame.new( -9507,172,6158);
		elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"};
			CFrameMon=CFrame.new( -469,74,5904);
		end 
	end 
end

function CheckQuest()
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	if FirstSea then
		if MyLevel == 1 or MyLevel <= 9 then -- Bandit
			LevelFarm = 1

			Name = "Bandit [Lv. 5]"
			QuestName = "BanditQuest1"

			LevelQuest = 1
			NameMon = "Bandit"

			CFrameMon = CFrame.new(1145, 17, 1634)
			VectorMon = Vector3.new(1145, 17, 1634)

			CFrameQuest = CFrame.new(1060, 17, 1547)
			VectorQuest = Vector3.new(1060, 17, 1547)
		elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
			LevelFarm = 2

			Name = "Monkey [Lv. 14]"
			QuestName = "JungleQuest"

			LevelQuest = 1
			NameMon = "Monkey"

			CFrameMon = CFrame.new(-1496, 39, 35)
			VectorMon = Vector3.new(-1496, 39, 35)

			CFrameQuest = CFrame.new(-1602, 37, 152)
			VectorQuest = Vector3.new(-1602, 37, 152)
		elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
			LevelFarm = 3

			Name = "Gorilla [Lv. 20]"
			QuestName = "JungleQuest"

			LevelQuest = 2
			NameMon = "Gorilla"

			CFrameMon = CFrame.new(-1237, 6, -486)
			VectorMon = Vector3.new(-1237, 7, -486)

			CFrameQuest = CFrame.new(-1602, 37, 152)
			VectorQuest = Vector3.new(-1602, 37, 152)
		elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
			LevelFarm = 4

			Name = "Pirate [Lv. 35]"
			QuestName = "BuggyQuest1"

			LevelQuest = 1
			NameMon = "Pirate"

			CFrameMon = CFrame.new(-1115, 14, 3938)
			VectorMon = Vector3.new(-1115, 14, 3938)

			CFrameQuest = CFrame.new(-1140, 5, 3828)
			VectorQuest = Vector3.new(-1140, 5, 3828)
		elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
			LevelFarm = 5

			Name = "Brute [Lv. 45]"
			QuestName = "BuggyQuest1"

			LevelQuest = 2
			NameMon = "Brute"

			CFrameMon = CFrame.new(-1145, 15, 4350)
			VectorMon = Vector3.new(-1146, 15, 4350)

			CFrameQuest = CFrame.new(-1140, 5, 3828)
			VectorQuest = Vector3.new(-1140, 5, 3828)
		elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
			LevelFarm = 6

			Name = "Desert Bandit [Lv. 60]"
			QuestName = "DesertQuest"

			LevelQuest = 1
			NameMon = "Desert Bandit"

			CFrameMon = CFrame.new(932, 7, 4484)
			VectorMon = Vector3.new(932, 7, 4484)

			CFrameQuest = CFrame.new(897, 7, 4388)
			VectorQuest = Vector3.new(897, 7, 4388)
		elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
			LevelFarm = 7

			Name = "Desert Officer [Lv. 70]"
			QuestName = "DesertQuest"

			LevelQuest = 2
			NameMon = "Desert Officer"

			CFrameMon = CFrame.new(1572, 10, 4373)
			VectorMon = Vector3.new(1572, 10, 4373)

			CFrameQuest = CFrame.new(897, 7, 4388)
			VectorQuest = Vector3.new(897, 7, 4388)
		elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
			LevelFarm = 8

			Name = "Snow Bandit [Lv. 90]"
			QuestName = "SnowQuest"

			LevelQuest = 1
			NameMon = "Snow Bandits"

			CFrameMon = CFrame.new(1289, 150, -1442)
			VectorMon = Vector3.new(1289, 106, -1442)

			CFrameQuest = CFrame.new(1386, 87, -1297)
			VectorQuest = Vector3.new(1386, 87, -1297)
		elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
			LevelFarm = 9

			Name = "Snowman [Lv. 100]"
			QuestName = "SnowQuest"

			LevelQuest = 2
			NameMon = "Snowman"

			CFrameMon = CFrame.new(1289, 150, -1442)
			VectorMon = Vector3.new(1289, 106, -1442)

			CFrameQuest = CFrame.new(1386, 87, -1297)
			VectorQuest = Vector3.new(1386, 87, -1297)
		elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
			LevelFarm = 10

			Name = "Chief Petty Officer [Lv. 120]"
			QuestName = "MarineQuest2"

			LevelQuest = 1
			NameMon = "Chief Petty Officer"

			CFrameMon = CFrame.new(-4855, 23, 4308)
			VectorMon = Vector3.new(-4855, 23, 4308)

			CFrameQuest = CFrame.new(-5036, 29, 4325)
			VectorQuest = Vector3.new(-5036, 29, 4325)
		elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
			LevelFarm = 11

			Name = "Sky Bandit [Lv. 150]"
			QuestName = "SkyQuest"

			LevelQuest = 1
			NameMon = "Sky Bandit"

			CFrameMon = CFrame.new(-4981, 278, -2830)
			VectorMon = Vector3.new(-4981, 278, -2830)

			CFrameQuest = CFrame.new(-4842, 718, -2623)
			VectorQuest = Vector3.new(-4842, 718, -2623)
		elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
			LevelFarm = 12

			Name = "Dark Master [Lv. 175]"
			QuestName = "SkyQuest"

			LevelQuest = 2
			NameMon = "Dark Master"

			CFrameMon = CFrame.new(-5250, 389, -2272)
			VectorMon = Vector3.new(-5250, 389, -2272)

			CFrameQuest = CFrame.new(-4842, 718, -2623)
			VectorQuest = Vector3.new(-4842, 718, -2623)
		elseif MyLevel == 190 or MyLevel <= 209 then -- Dark Master
			LevelFarm = 13

			Name = "Prisoner [Lv. 190]"
			QuestName = "PrisonerQuest"

			LevelQuest = 1
			NameMon = "Prisoner"

			CFrameMon = CFrame.new(5411, 96, 690)
			VectorMon = Vector3.new(5411, 96, 690)

			CFrameQuest = CFrame.new(5308, 2, 474)
			VectorQuest = Vector3.new(5308, 2, 474)
		elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
			LevelFarm = 14

			Name = "Dangerous Prisoner [Lv. 210]"
			QuestName = "PrisonerQuest"

			LevelQuest = 2
			NameMon = "Dangerous Prisoner"

			CFrameMon = CFrame.new(5411, 96, 690)
			VectorMon = Vector3.new(5411, 96, 690)

			CFrameQuest = CFrame.new(5308, 2, 474)
			VectorQuest = Vector3.new(5308, 2, 474)
		elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
			LevelFarm = 15

			Name = "Toga Warrior [Lv. 250]"
			QuestName = "ColosseumQuest"

			LevelQuest = 1
			NameMon = "Toga Warrior"

			CFrameMon = CFrame.new(-1824, 50, -2743)
			VectorMon = Vector3.new(-1824, 50, -2743)

			CFrameQuest = CFrame.new(-1576, 8, -2985)
			VectorQuest = Vector3.new(-1576, 8, -2985)
		elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiator
			LevelFarm = 16

			Name = "Gladiator [Lv. 275]"
			QuestName = "ColosseumQuest"

			LevelQuest = 2
			NameMon = "Gladiator"

			CFrameMon = CFrame.new(-1525, 7, -3131)
			VectorMon = Vector3.new(-1525, 7, -3131)

			CFrameQuest = CFrame.new(-1578, 7, -2985)
			VectorQuest = Vector3.new(-1578, 7, -2985)
		elseif MyLevel == 300 or MyLevel <= 324 then -- Military Soldier
			LevelFarm = 17

			Name = "Military Soldier [Lv. 300]"
			QuestName = "MagmaQuest"

			LevelQuest = 1
			NameMon = "Military Soldier"

			CFrameMon = CFrame.new(-5408, 11, 8447)
			VectorMon = Vector3.new(-5408, 11, 8447)

			CFrameQuest = CFrame.new(-5316, 12, 8517)
			VectorQuest = Vector3.new(-5316, 12, 8517)
		elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy
			LevelFarm = 18

			Name = "Military Spy [Lv. 325]"
			QuestName = "MagmaQuest"

			LevelQuest = 2
			NameMon = "Military Spy"

			CFrameMon = CFrame.new(-5815, 84, 8820)
			VectorMon = Vector3.new(-5815, 84, 8820)

			CFrameQuest = CFrame.new(-5316, 12, 8517)
			VectorQuest = Vector3.new(-5316, 12, 8517)
		elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
			LevelFarm = 19

			Name = "Fishman Warrior [Lv. 375]"
			QuestName = "FishmanQuest"

			LevelQuest = 1
			NameMon = "Fishman Warrior"

			CFrameMon = CFrame.new(60859, 19, 1501)
			VectorMon = Vector3.new(60859, 19, 1501)

			CFrameQuest = CFrame.new(61123, 19, 1569)
			VectorQuest = Vector3.new(61123, 19, 1569)
		elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
			LevelFarm = 20

			Name = "Fishman Commando [Lv. 400]"
			QuestName = "FishmanQuest"

			LevelQuest = 2
			NameMon = "Fishman Commando"

			CFrameMon = CFrame.new(61891, 19, 1470)
			VectorMon = Vector3.new(61891, 19, 1470)

			CFrameQuest = CFrame.new(61123, 19, 1569)
			VectorQuest = Vector3.new(61123, 19, 1569)
		elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
			LevelFarm = 21

			Name = "God's Guard [Lv. 450]"
			QuestName = "SkyExp1Quest"

			LevelQuest = 1
			NameMon = "God's Guard"

			CFrameMon = CFrame.new(-4698, 845, -1912)
			VectorMon = Vector3.new(-4698, 845, -1912)

			CFrameQuest = CFrame.new(-4722, 845, -1954)
			VectorQuest = Vector3.new(-4722, 846, -1954)
		elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
			LevelFarm = 22

			Name = "Shanda [Lv. 475]"
			QuestName = "SkyExp1Quest"

			LevelQuest = 2
			NameMon = "Shanda"

			CFrameMon = CFrame.new(-7685, 5567, -502)
			VectorMon = Vector3.new(-7685, 5567, -502)

			CFrameQuest = CFrame.new(-7862, 5546, -380)
		elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
			LevelFarm = 23

			Name = "Royal Squad [Lv. 525]"
			QuestName = "SkyExp2Quest"

			LevelQuest = 1
			NameMon = "Royal Squad"

			CFrameMon = CFrame.new(-7670, 5607, -1460)
			VectorMon = Vector3.new(-7670, 5607, -1460)

			CFrameQuest = CFrame.new(-7904, 5636, -1412)
			VectorQuest = Vector3.new(-7904, 5636, -1412)
		elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
			LevelFarm = 24

			Name = "Royal Soldier [Lv. 550]"
			QuestName = "SkyExp2Quest"

			LevelQuest = 2
			NameMon = "Royal Soldier"

			CFrameMon = CFrame.new(-7828, 5607, -1744)
			VectorMon = Vector3.new(-7828, 5607, -1744)

			CFrameQuest = CFrame.new(-7904, 5636, -1412)
			VectorQuest = Vector3.new(-7904, 5636, -1412)
		elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
			LevelFarm = 25

			Name = "Galley Pirate [Lv. 625]"
			QuestName = "FountainQuest"

			LevelQuest = 1
			NameMon = "Galley Pirate"

			CFrameMon = CFrame.new(5589, 45, 3996)
			VectorMon = Vector3.new(5589, 45, 3996)

			CFrameQuest = CFrame.new(5256, 39, 4050)
			VectorQuest = Vector3.new(5256, 39, 4050)
		elseif MyLevel >= 650 then -- Galley Captain
			LevelFarm = 26

			Name = "Galley Captain [Lv. 650]"
			QuestName = "FountainQuest"

			LevelQuest = 2
			NameMon = "Galley Captain"

			CFrameMon = CFrame.new(5649, 39, 4936)
			VectorMon = Vector3.new(5649, 39, 4936)

			CFrameQuest = CFrame.new(5256, 39, 4050)
			VectorQuest = Vector3.new(5256, 39, 4050)
		end
	end
	if SecondSea then
		if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
			LevelFarm = 1

			Name = "Raider [Lv. 700]"
			QuestName = "Area1Quest"

			LevelQuest = 1
			NameMon = "Raider"

			CFrameQuest = CFrame.new(-425, 73, 1837)
			VectorQuest = Vector3.new(-425, 73, 1837)

			CFrameMon = CFrame.new(-746, 39, 2390)
			VectorMon = Vector3.new(-746, 39, 2389)
		elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
			LevelFarm = 2

			Name = "Mercenary [Lv. 725]"
			QuestName = "Area1Quest"

			LevelQuest = 2
			NameMon = "Mercenary"

			CFrameQuest = CFrame.new(-425, 73, 1837)
			VectorQuest = Vector3.new(-425, 73, 1837)

			CFrameMon = CFrame.new(-874, 141, 1312)
			VectorMon = Vector3.new(-874, 141, 1312)
		elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
			LevelFarm = 3

			Name = "Swan Pirate [Lv. 775]"
			QuestName = "Area2Quest"

			LevelQuest = 1
			NameMon = "Swan Pirate"

			CFrameQuest = CFrame.new(634, 73, 918)
			VectorQuest = Vector3.new(634, 73, 918)

			CFrameMon = CFrame.new(878, 122, 1235)
			VectorMon = Vector3.new(878, 122, 1235)
		elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
			LevelFarm = 4

			Name = "Factory Staff [Lv. 800]"
			QuestName = "Area2Quest"

			LevelQuest = 2
			NameMon = "Factory Staff"

			CFrameQuest = CFrame.new(634, 73, 918)
			VectorQuest = Vector3.new(634, 73, 918)

			CFrameMon = CFrame.new(295, 73, -56)
			VectorMon = Vector3.new(295, 73, -56)
		elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
			LevelFarm = 5

			Name = "Marine Lieutenant [Lv. 875]"
			QuestName = "MarineQuest3"

			LevelQuest = 1
			NameMon = "Marine Lieutenant"

			CFrameMon = CFrame.new(-2806, 73, -3038)
			VectorMon = Vector3.new(-2806, 73, -3038)

			CFrameQuest = CFrame.new(-2443, 73, -3219)
			VectorQuest = Vector3.new(-2443, 73, -3219)
		elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
			LevelFarm = 6

			Name = "Marine Captain [Lv. 900]"
			QuestName = "MarineQuest3"

			LevelQuest = 2
			NameMon = "Marine Captain"

			CFrameMon = CFrame.new(-1869, 73, -3320)
			VectorMon = Vector3.new(-1869, 73, -3320)

			CFrameQuest = CFrame.new(-2443, 73, -3219)
			VectorQuest = Vector3.new(-2443, 73, -3219)
		elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
			LevelFarm = 7

			Name = "Zombie [Lv. 950]"
			QuestName = "ZombieQuest"

			LevelQuest = 1
			NameMon = "Zombie"

			CFrameMon = CFrame.new(-5736, 126, -728)
			VectorMon = Vector3.new(-5736, 126, -728)

			CFrameQuest = CFrame.new(-5494, 49, -795)
			VectorQuest = Vector3.new(-5494, 49, -794)
		elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
			LevelFarm = 8

			Name = "Vampire [Lv. 975]"
			QuestName = "ZombieQuest"

			LevelQuest = 2
			NameMon = "Vampire"

			CFrameMon = CFrame.new(-6033, 7, -1317)
			VectorMon = Vector3.new(-6033, 7, -1317)

			CFrameQuest = CFrame.new(-5494, 49, -795)
			VectorQuest = Vector3.new(-5494, 49, -795)
		elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
			LevelFarm = 9

			Name = "Snow Trooper [Lv. 1000]"
			QuestName = "SnowMountainQuest"

			LevelQuest = 1
			NameMon = "Snow Trooper"

			CFrameMon = CFrame.new(478, 402, -5362)
			VectorMon = Vector3.new(478, 402, -5362)

			CFrameQuest = CFrame.new(605, 402, -5371)
			VectorQuest = Vector3.new(605, 402, -5371)
		elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
			LevelFarm = 10

			Name = "Winter Warrior [Lv. 1050]"
			QuestName = "SnowMountainQuest"

			LevelQuest = 2
			NameMon = "Winter Warrior"

			CFrameMon = CFrame.new(1157, 430, -5188)
			VectorMon = Vector3.new(1157, 430, -5188)

			CFrameQuest = CFrame.new(605, 402, -5371)
			VectorQuest = Vector3.new(605, 402, -5371)
		elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
			LevelFarm = 11

			Name = "Lab Subordinate [Lv. 1100]"
			QuestName = "IceSideQuest"

			LevelQuest = 1
			NameMon = "Lab Subordinate"

			CFrameMon = CFrame.new(-5782, 42, -4484)
			VectorMon = Vector3.new(-5782, 42, -4484)

			CFrameQuest = CFrame.new(-6060, 16, -4905)
			VectorQuest = Vector3.new(-6060, 16, -4905)
		elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
			LevelFarm = 12

			Name = "Horned Warrior [Lv. 1125]"
			QuestName = "IceSideQuest"

			LevelQuest = 2
			NameMon = "Horned Warrior"

			CFrameMon = CFrame.new(-6406, 24, -5805)
			VectorMon = Vector3.new(-6406, 24, -5805)

			CFrameQuest = CFrame.new(-6060, 16, -4905)
			VectorQuest = Vector3.new(-6060, 16, -4905)
		elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
			LevelFarm = 13

			Name = "Magma Ninja [Lv. 1175]"
			QuestName = "FireSideQuest"
			LevelQuest = 1
			NameMon = "Magma Ninja"

			CFrameMon = CFrame.new(-5428, 78, -5959)
			VectorMon = Vector3.new(-5428, 78, -5959)

			CFrameQuest = CFrame.new(-5430, 16, -5295)
			VectorQuest = Vector3.new(-5430, 16, -5296)
		elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
			LevelFarm = 14

			Name = "Lava Pirate [Lv. 1200]"
			QuestName = "FireSideQuest"

			LevelQuest = 2
			NameMon = "Lava Pirate"

			CFrameMon = CFrame.new(-5270, 42, -4800)
			VectorMon = Vector3.new(-5270, 42, -4800)

			CFrameQuest = CFrame.new(-5430, 16, -5295)
			VectorQuest = Vector3.new(-5430, 16, -5296)
		elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
			LevelFarm = 15

			Name = "Ship Deckhand [Lv. 1250]"
			QuestName = "ShipQuest1"

			LevelQuest = 1
			NameMon = "Ship Deckhand"

			CFrameMon = CFrame.new(1198, 126, 33031)
			VectorMon = Vector3.new(1198, 126, 33031)

			CFrameQuest = CFrame.new(1038, 125, 32913)
			VectorQuest = Vector3.new(1038, 125, 32913)
		elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
			LevelFarm = 16

			Name = "Ship Engineer [Lv. 1275]"
			QuestName = "ShipQuest1"

			LevelQuest = 2
			NameMon = "Ship Engineer"

			CFrameMon = CFrame.new(918, 44, 32787)
			VectorMon = Vector3.new(918, 44, 32787)

			CFrameQuest = CFrame.new(1038, 125, 32913)
			VectorQuest = Vector3.new(1038, 125, 32913)
		elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
			LevelFarm = 17

			Name = "Ship Steward [Lv. 1300]"
			QuestName = "ShipQuest2"

			LevelQuest = 1
			NameMon = "Ship Steward"

			CFrameMon = CFrame.new(915, 130, 33419)
			VectorMon = Vector3.new(915, 130, 33419)

			CFrameQuest = CFrame.new(969, 125, 33245)
			VectorQuest = Vector3.new(969, 125, 33245)
		elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
			LevelFarm = 18

			Name = "Ship Officer [Lv. 1325]"
			QuestName = "ShipQuest2"

			LevelQuest = 2
			NameMon = "Ship Officer"

			CFrameMon = CFrame.new(916, 181, 33335)
			VectorMon = Vector3.new(916, 181, 33335)

			CFrameQuest = CFrame.new(969, 125, 33245)
			VectorQuest = Vector3.new(969, 125, 33245)
		elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
			LevelFarm = 19

			Name = "Arctic Warrior [Lv. 1350]"
			QuestName = "FrostQuest"

			LevelQuest = 1
			NameMon = "Arctic Warrior"

			CFrameMon = CFrame.new(6038, 29, -6231)
			VectorMon = Vector3.new(6038, 29, -6231)

			VectorQuest = Vector3.new(5669, 28, -6482)
			CFrameQuest = CFrame.new(5669, 28, -6482)
		elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
			LevelFarm = 20

			Name = "Snow Lurker [Lv. 1375]"
			QuestName = "FrostQuest"

			LevelQuest = 2
			NameMon = "Snow Lurker"

			CFrameMon = CFrame.new(5560, 42, -6826)
			VectorMon = Vector3.new(5560, 42, -6826)

			VectorQuest = Vector3.new(5669, 28, -6482)
			CFrameQuest = CFrame.new(5669, 28, -6482)
		elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
			LevelFarm = 21
			Name = "Sea Soldier [Lv. 1425]"
			QuestName = "ForgottenQuest"

			LevelQuest = 1
			NameMon = "Sea Soldier"

			CFrameMon = CFrame.new(-3022, 16, -9722)
			VectorMon = Vector3.new(-3022, 16, -9722)

			CFrameQuest = CFrame.new(-3054, 237, -10148)
			VectorQuest = Vector3.new(-3054, 237, -10148)
		elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
			LevelFarm = 22
			Name = "Water Fighter [Lv. 1450]"
			QuestName = "ForgottenQuest"

			LevelQuest = 2
			NameMon = "Water Fighter"

			CFrameMon = CFrame.new(-3385, 239, -10542)
			VectorMon = Vector3.new(-3385, 239, -10542)

			CFrameQuest = CFrame.new(-3054, 237, -10148)
			VectorQuest = Vector3.new(-3054, 237, -10148)
		end
	end
	if ThirdSea then
		if MyLevel == 1500 or MyLevel <= 1524 then
			LevelFarm = 1

			Name = "Pirate Millionaire [Lv. 1500]"
			QuestName = "PiratePortQuest"

			LevelQuest = 1
			NameMon = "Pirate Millionaire"

			CFrameMon = CFrame.new(-373, 75, 5550)
			VectorMon = Vector3.new(-373, 75, 5550)

			CFrameQuest = CFrame.new(-288, 44, 5576)
			VectorQuest = Vector3.new(-288, 44, 5576)
		elseif MyLevel == 1525 or MyLevel <= 1574 then
			LevelFarm = 2

			Name = "Pistol Billionaire [Lv. 1525]"
			QuestName = "PiratePortQuest"

			LevelQuest = 2
			NameMon = "Pistol Billionaire"

			CFrameMon = CFrame.new(-469, 74, 5904)
			VectorMon = Vector3.new(-469, 74, 5904)

			CFrameQuest = CFrame.new(-288, 44, 5576)
			VectorQuest = Vector3.new(-288, 44, 5576)
		elseif MyLevel == 1575 or MyLevel <= 1599 then
			LevelFarm = 3

			Name = "Dragon Crew Warrior [Lv. 1575]"
			QuestName = "AmazonQuest"

			LevelQuest = 1
			NameMon = "Dragon Crew Warrior"

			CFrameMon = CFrame.new(6339, 52, -1213)
			VectorMon = Vector3.new(6338, 52, -1213)

			CFrameQuest = CFrame.new(5835, 52, -1105)
			VectorQuest = Vector3.new(5835, 52, -1105)
		elseif MyLevel == 1600 or MyLevel <= 1624 then
			LevelFarm = 4

			Name = "Dragon Crew Archer [Lv. 1600]"
			QuestName = "AmazonQuest"

			LevelQuest = 2
			NameMon = "Dragon Crew Archer"

			CFrameMon = CFrame.new(6594, 383, 139)
			VectorMon = Vector3.new(6594, 383, 139)

			CFrameQuest = CFrame.new(5835, 52, -1105)
			VectorQuest = Vector3.new(5835, 52, -1105)
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			LevelFarm = 5

			Name = "Female Islander [Lv. 1625]"
			QuestName = "AmazonQuest2"

			LevelQuest = 1
			NameMon = "Female Islander"

			CFrameMon = CFrame.new(5308, 819, 1047)
			VectorMon = Vector3.new(5308, 819, 1047)

			CFrameQuest = CFrame.new(5443, 602, 751)
			VectorQuest = Vector3.new(5443, 602, 751)
		elseif MyLevel == 1650 or MyLevel <= 1699 then
			LevelFarm = 6

			Name = "Giant Islander [Lv. 1650]"
			QuestName = "AmazonQuest2"

			LevelQuest = 2
			NameMon = "Giant Islanders"

			CFrameMon = CFrame.new(4951, 602, -68)
			VectorMon = Vector3.new(4951, 602, -68)

			CFrameQuest = CFrame.new(5443, 602, 751)
			VectorQuest = Vector3.new(5443, 602, 751)
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			LevelFarm = 7

			Name = "Marine Commodore [Lv. 1700]"
			QuestName = "MarineTreeIsland"

			LevelQuest = 1
			NameMon = "Marine Commodore"

			CFrameMon = CFrame.new(2447, 73, -7470)
			VectorMon = Vector3.new(2447, 73, -7470)

			CFrameQuest = CFrame.new(2180, 29, -6737)
			VectorQuest = Vector3.new(2180, 29, -6737)
		elseif MyLevel == 1725 or MyLevel <= 1774 then
			LevelFarm = 8

			Name = "Marine Rear Admiral [Lv. 1725]"
			QuestName = "MarineTreeIsland"

			LevelQuest = 2
			NameMon = "Marine Rear Admiral"

			CFrameMon = CFrame.new(3671, 161, -6932)
			VectorMon = Vector3.new(3671, 161, -6932)

			CFrameQuest = CFrame.new(2180, 29, -6737)
			VectorQuest = Vector3.new(2180, 29, -6737)
		elseif MyLevel == 1775 or MyLevel <= 1800 then
			LevelFarm = 9

			Name = "Fishman Raider [Lv. 1775]"
			QuestName = "DeepForestIsland3"

			LevelQuest = 1
			NameMon = "Fishman Raider"

			CFrameMon = CFrame.new(-10560, 332, -8466)
			VectorMon = Vector3.new(-10560, 332, -8466)

			CFrameQuest = CFrame.new(-10584, 332, -8758)
			VectorQuest = Vector3.new(-10584, 332, -8758)
		elseif MyLevel == 1800 or MyLevel <= 1824 then
			LevelFarm = 10

			Name = "Fishman Captain [Lv. 1800]"
			QuestName = "DeepForestIsland3"

			LevelQuest = 2
			NameMon = "Fishman Captain"

			CFrameMon = CFrame.new(-10993, 332, -8940)
			VectorMon = Vector3.new(-10993, 332, -8940)

			CFrameQuest = CFrame.new(-10584, 332, -8758)
			VectorQuest = Vector3.new(-10584, 332, -8758)
		elseif MyLevel == 1825 or MyLevel <= 1849 then
			LevelFarm = 11

			Name = "Forest Pirate [Lv. 1825]"
			QuestName = "DeepForestIsland"

			LevelQuest = 1
			NameMon = "Forest Pirate"

			CFrameMon = CFrame.new(-13479, 333, -7905)
			VectorMon = Vector3.new(-13479, 333, -7905)

			CFrameQuest = CFrame.new(-13232, 333, -7627)
			VectorQuest = Vector3.new(-13232, 333, -7627)
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			LevelFarm = 12

			Name = "Mythological Pirate [Lv. 1850]"
			QuestName = "DeepForestIsland"

			LevelQuest = 2
			NameMon = "Mythological Pirate"

			CFrameMon = CFrame.new(-13545, 470, -6917)
			VectorMon = Vector3.new(-13545, 470, -6917)

			CFrameQuest = CFrame.new(-13232, 333, -7627)
			VectorQuest = Vector3.new(-13232, 333, -7627)
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			LevelFarm = 13

			Name = "Jungle Pirate [Lv. 1900]"
			QuestName = "DeepForestIsland2"

			LevelQuest = 1
			NameMon = "Jungle Pirate"

			CFrameMon = CFrame.new(-12107, 332, -10549)
			VectorMon = Vector3.new(-12106, 332, -10549)

			CFrameQuest = CFrame.new(-12684, 391, -9902)
			VectorQuest = Vector3.new(-12684, 391, -9902)
		elseif MyLevel == 1925 or MyLevel <= 1974 then
			LevelFarm = 14

			Name = "Musketeer Pirate [Lv. 1925]"
			QuestName = "DeepForestIsland2"

			LevelQuest = 2
			NameMon = "Musketeer Pirate"

			CFrameMon = CFrame.new(-13286, 392, -9769)
			VectorMon = Vector3.new(-13286, 392, -9768)

			CFrameQuest = CFrame.new(-12684, 391, -9902)
			VectorQuest = Vector3.new(-12684, 391, -9902)
		elseif MyLevel == 1975 or MyLevel <= 1999 then
			LevelFarm = 15
			Name = "Reborn Skeleton [Lv. 1975]"
			QuestName = "HauntedQuest1"

			LevelQuest = 1
			NameMon = "Reborn Skeleton"

			CFrameMon = CFrame.new(-8760, 142, 6039)
			VectorMon = Vector3.new(-8760, 142, 6039)

			CFrameQuest = CFrame.new(-9482, 142, 5567)
			VectorQuest = Vector3.new(-9482, 142, 5567)
		elseif MyLevel == 2000 or MyLevel <= 2024 then
			LevelFarm = 16

			Name = "Living Zombie [Lv. 2000]"
			QuestName = "HauntedQuest1"

			LevelQuest = 2
			NameMon = "Living Zombie"

			CFrameMon = CFrame.new(-10144, 140, 5932)
			VectorMon = Vector3.new(-10144, 140, 5932)

			CFrameQuest = CFrame.new(-9482, 142, 5567)
			VectorQuest = Vector3.new(-9482, 142, 5567)
		elseif MyLevel == 2025 or MyLevel <= 2049 then
			LevelFarm = 17

			Name = "Demonic Soul [Lv. 2025]"
			QuestName = "HauntedQuest2"

			LevelQuest = 1
			NameMon = "Demonic Soul"

			CFrameMon = CFrame.new(-9507, 172, 6158)
			VectorMon = Vector3.new(-9506, 172, 6158)

			CFrameQuest = CFrame.new(-9513, 172, 6079)
			VectorQuest = Vector3.new(-9513, 172, 6079)
		elseif MyLevel == 2050 or MyLevel <= 2074 then
			LevelFarm = 18

			Name = "Posessed Mummy [Lv. 2050]"
			QuestName = "HauntedQuest2"

			LevelQuest = 2
			NameMon = "Posessed Mummy"

			CFrameMon = CFrame.new(-9577, 6, 6223)
			VectorMon = Vector3.new(-9577, 6, 6223)

			CFrameQuest = CFrame.new(-9513, 172, 6079)
			VectorQuest = Vector3.new(-9513, 172, 6079)

		elseif MyLevel == 2075 or MyLevel <= 2099 then
			LevelFarm = 19

			Name = "Peanut Scout [Lv. 2075]"
			QuestName = "NutsIslandQuest"

			LevelQuest = 1
			NameMon = "Peanut Scout"

			CFrameMon = CFrame.new(-2124, 123, -10435)
			VectorMon = Vector3.new(-2124, 123, -10435)

			CFrameQuest = CFrame.new(-2104, 38, -10192)
			VectorQuest = Vector3.new(-2104, 38, -10192)
		elseif MyLevel == 2100 or MyLevel <= 2124 then
			LevelFarm = 20

			Name = "Peanut President [Lv. 2100]"
			QuestName = "NutsIslandQuest"

			LevelQuest = 2
			NameMon = "Peanut President"

			CFrameMon = CFrame.new(-2124, 123, -10435)
			VectorMon = Vector3.new(-2124, 123, -10435)

			CFrameQuest = CFrame.new(-2104, 38, -10192)
			VectorQuest = Vector3.new(-2104, 38, -10192)
		elseif MyLevel == 2125 or MyLevel <= 2149 then
			LevelFarm = 21

			Name = "Ice Cream Chef [Lv. 2125]"
			QuestName = "IceCreamIslandQuest"

			LevelQuest = 1
			NameMon = "Ice Cream Chef"

			CFrameMon = CFrame.new(-641, 127, -11062)
			VectorMon = Vector3.new(-641, 127, -11062)

			CFrameQuest = CFrame.new(-822, 66, -10965)
			VectorQuest = Vector3.new(-822, 66, -10965)
		elseif MyLevel == 2150 or MyLevel <= 2199 then
			LevelFarm = 22

			Name = "Ice Cream Commander [Lv. 2150]"
			QuestName = "IceCreamIslandQuest"

			LevelQuest = 2
			NameMon = "Ice Cream Commander"

			CFrameMon = CFrame.new(-641, 127, -11062)
			VectorMon = Vector3.new(-641, 127, -11062)

			CFrameQuest = CFrame.new(-822, 66, -10965)
			VectorQuest = Vector3.new(-822, 66, -10965)
		elseif MyLevel == 2200 or MyLevel <= 2224 then
			LevelFarm = 23

			Name = "Cookie Crafter [Lv. 2200]"
			QuestName = "CakeQuest1"

			LevelQuest = 1
			NameMon = "Cookie Crafter"

			CFrameMon = CFrame.new(-2365, 38, -12099)
			VectorMon = Vector3.new(-2365, 38, -12099)

			CFrameQuest = CFrame.new(-2020, 38, -12025)
			VectorQuest = Vector3.new(-2020, 38, -12025)
		elseif MyLevel == 2225 or MyLevel <= 2249 then
			LevelFarm = 24

			Name = "Cake Guard [Lv. 2225]"
			QuestName = "CakeQuest1"

			LevelQuest = 2
			NameMon = "Cake Guard"

			CFrameMon = CFrame.new(-1651, 38, -12308)
			VectorMon = Vector3.new(-1651, 38, -12308)

			CFrameQuest = CFrame.new(-2020, 38, -12025)
			VectorQuest = Vector3.new(-2020, 38, -12025)
		elseif MyLevel == 2250 or MyLevel <= 2274 then
			LevelFarm = 25

			Name = "Baking Staff [Lv. 2250]"
			QuestName = "CakeQuest2"

			LevelQuest = 1
			NameMon = "Baking Staff"

			CFrameMon = CFrame.new(-1870, 38, -12938)
			VectorMon = Vector3.new(-1870, 38, -12938)

			CFrameQuest = CFrame.new(-1926, 38, -12850)
			VectorQuest = Vector3.new(-1926, 38, -12850)
		elseif MyLevel == 2275 or MyLevel <= 2299 then
			LevelFarm = 26

			Name = "Head Baker [Lv. 2275]"
			QuestName = "CakeQuest2"

			LevelQuest = 2
			NameMon = "Head Baker"

			CFrameMon = CFrame.new(-1926, 88, -12850)
			VectorMon = CFrame.new(-1870, 38, -12938)

			CFrameQuest = CFrame.new(-1926, 38, -12850)
			VectorQuest = Vector3.new(-1926, 38, -12850)
		elseif MyLevel == 2300 or MyLevel <= 2324 then
			LevelFarm = 27

			Name = "Cocoa Warrior [Lv. 2300]"
			QuestName = "ChocQuest1"

			LevelQuest = 1
			NameMon = "Cocoa Warrior"

			CFrameMon = CFrame.new(231, 23, -12194)
			VectorMon = CFrame.new(231, 23, -12194)

			CFrameQuest = CFrame.new(231, 23, -12194)
			VectorQuest = Vector3.new(231, 23, -12194)
		elseif MyLevel == 2325 or MyLevel <= 2349 then
			LevelFarm = 28

			Name = "Chocolate Bar Battler [Lv. 2325]"
			QuestName = "ChocQuest1"

			LevelQuest = 2
			NameMon = "Chocolate Bar Battler"

			CFrameMon = CFrame.new(231, 23, -12194)
			VectorMon = CFrame.new(231, 23, -12194)

			CFrameQuest = CFrame.new(231, 23, -12194)
			VectorQuest = Vector3.new(231, 23, -12194)
		elseif MyLevel == 2350 or MyLevel <= 2374 then
			LevelFarm = 29

			Name = "Sweet Thief [Lv. 2350]"
			QuestName = "ChocQuest2"

			LevelQuest = 1
			NameMon = "Sweet Thief"

			CFrameMon = CFrame.new(71, 77, -12632)
			VectorMon = CFrame.new(71, 77, -12632)

			CFrameQuest = CFrame.new(151, 23, -12774)
			VectorQuest = Vector3.new(151, 23, -12774)
		elseif MyLevel == 2375 or MyLevel <= 2399 then
			LevelFarm = 30

			Name = "Candy Rebel [Lv. 2375]"
			QuestName = "ChocQuest2"

			LevelQuest = 2
			NameMon = "Candy Rebel"

			CFrameMon = CFrame.new(134, 77, -12882)
			VectorMon = CFrame.new(134, 77, -12882)

			CFrameQuest = CFrame.new(151, 23, -12774)
			VectorQuest = Vector3.new(151, 23, -12774)
		elseif MyLevel == 2400 or MyLevel <= 2424 then
			LevelFarm = 31

			Name = "Candy Pirate [Lv. 2400]"
			QuestName = "CandyQuest1"

			LevelQuest = 1
			NameMon = "Candy Pirate"

			CFrameMon = CFrame.new(-1347, 48, -14320)
			VectorMon = CFrame.new(-1347, 48, -14320.)

			CFrameQuest = CFrame.new(-1149, 13, -14445)
			VectorQuest = Vector3.new(-1149, 13, -14445)
		elseif MyLevel >= 2425 then
			LevelFarm = 32

			Name = "Snow Demon [Lv. 2425]"
			QuestName = "CandyQuest1"

			LevelQuest = 2
			NameMon = "Snow Demon"

			CFrameMon = CFrame.new(-928, 16, -14501)
			VectorMon = CFrame.new(-928, 16, -14501)

			CFrameQuest = CFrame.new(-1149, 13, -14445)
			VectorQuest = Vector3.new(-1149, 13, -14445)
		end
	end
end

function CheckOldQuest(LevelFarm)
	if FirstSea then
		if LevelFarm == 1 then -- Bandit
			Name = "Bandit [Lv. 5]"
			QuestName = "BanditQuest1"

			LevelQuest = 1
			NameMon = "Bandit"

			CFrameMon = CFrame.new(1145, 17, 1634)
			VectorMon = Vector3.new(1145, 17, 1634)

			CFrameQuest = CFrame.new(1060, 17, 1547)
			VectorQuest = Vector3.new(1060, 17, 1547)
		elseif LevelFarm == 2 then -- Monkey
			Name = "Monkey [Lv. 14]"
			QuestName = "JungleQuest"

			LevelQuest = 1
			NameMon = "Monkey"

			CFrameMon = CFrame.new(-1496, 39, 35)
			VectorMon = Vector3.new(-1496, 39, 35)

			CFrameQuest = CFrame.new(-1602, 37, 152)
			VectorQuest = Vector3.new(-1602, 37, 152)
		elseif LevelFarm == 3 then -- Gorilla
			Name = "Gorilla [Lv. 20]"
			QuestName = "JungleQuest"

			LevelQuest = 2
			NameMon = "Gorilla"

			CFrameMon = CFrame.new(-1237, 6, -486)
			VectorMon = Vector3.new(-1237, 7, -486)

			CFrameQuest = CFrame.new(-1602, 37, 152)
			VectorQuest = Vector3.new(-1602, 37, 152)
		elseif LevelFarm == 4 then -- Pirate
			Name = "Pirate [Lv. 35]"
			QuestName = "BuggyQuest1"

			LevelQuest = 1
			NameMon = "Pirate"

			CFrameMon = CFrame.new(-1115, 14, 3938)
			VectorMon = Vector3.new(-1115, 14, 3938)

			CFrameQuest = CFrame.new(-1140, 5, 3828)
			VectorQuest = Vector3.new(-1140, 5, 3828)
		elseif LevelFarm == 5 then -- Brute
			Name = "Brute [Lv. 45]"
			QuestName = "BuggyQuest1"

			LevelQuest = 2
			NameMon = "Brute"

			CFrameMon = CFrame.new(-1145, 15, 4350)
			VectorMon = Vector3.new(-1146, 15, 4350)

			CFrameQuest = CFrame.new(-1140, 5, 3828)
			VectorQuest = Vector3.new(-1140, 5, 3828)
		elseif LevelFarm == 6 then -- Desert Bandit
			Name = "Desert Bandit [Lv. 60]"
			QuestName = "DesertQuest"

			LevelQuest = 1
			NameMon = "Desert Bandit"

			CFrameMon = CFrame.new(932, 7, 4484)
			VectorMon = Vector3.new(932, 7, 4484)

			CFrameQuest = CFrame.new(897, 7, 4388)
			VectorQuest = Vector3.new(897, 7, 4388)
		elseif LevelFarm == 7 then -- Desert Officre
			Name = "Desert Officer [Lv. 70]"
			QuestName = "DesertQuest"

			LevelQuest = 2
			NameMon = "Desert Officer"

			CFrameMon = CFrame.new(1572, 10, 4373)
			VectorMon = Vector3.new(1572, 10, 4373)

			CFrameQuest = CFrame.new(897, 7, 4388)
			VectorQuest = Vector3.new(897, 7, 4388)
		elseif LevelFarm == 8 then -- Snow Bandits
			Name = "Snow Bandit [Lv. 90]"
			QuestName = "SnowQuest"

			LevelQuest = 1
			NameMon = "Snow Bandits"

			CFrameMon = CFrame.new(1289, 150, -1442)
			VectorMon = Vector3.new(1289, 106, -1442)

			CFrameQuest = CFrame.new(1386, 87, -1297)
			VectorQuest = Vector3.new(1386, 87, -1297)
		elseif LevelFarm == 9 then -- Snowman
			Name = "Snowman [Lv. 100]"
			QuestName = "SnowQuest"

			LevelQuest = 2
			NameMon = "Snowman"

			CFrameMon = CFrame.new(1289, 150, -1442)
			VectorMon = Vector3.new(1289, 106, -1442)

			CFrameQuest = CFrame.new(1386, 87, -1297)
			VectorQuest = Vector3.new(1386, 87, -1297)
		elseif LevelFarm == 10 then -- Chief Petty Officer
			Name = "Chief Petty Officer [Lv. 120]"
			QuestName = "MarineQuest2"

			LevelQuest = 1
			NameMon = "Chief Petty Officer"

			CFrameMon = CFrame.new(-4855, 23, 4308)
			VectorMon = Vector3.new(-4855, 23, 4308)

			CFrameQuest = CFrame.new(-5036, 29, 4325)
			VectorQuest = Vector3.new(-5036, 29, 4325)
		elseif LevelFarm == 11 then -- Sky Bandit
			Name = "Sky Bandit [Lv. 150]"
			QuestName = "SkyQuest"

			LevelQuest = 1
			NameMon = "Sky Bandit"

			CFrameMon = CFrame.new(-4981, 278, -2830)
			VectorMon = Vector3.new(-4981, 278, -2830)

			CFrameQuest = CFrame.new(-4842, 718, -2623)
			VectorQuest = Vector3.new(-4842, 718, -2623)
		elseif LevelFarm == 12 then -- Dark Master
			Name = "Dark Master [Lv. 175]"
			QuestName = "SkyQuest"

			LevelQuest = 2
			NameMon = "Dark Master"

			CFrameMon = CFrame.new(-5250, 389, -2272)
			VectorMon = Vector3.new(-5250, 389, -2272)

			CFrameQuest = CFrame.new(-4842, 718, -2623)
			VectorQuest = Vector3.new(-4842, 718, -2623)
		elseif LevelFarm == 13 then -- Dark Master
			Name = "Prisoner [Lv. 190]"
			QuestName = "PrisonerQuest"

			LevelQuest = 1
			NameMon = "Prisoner"

			CFrameMon = CFrame.new(5411, 96, 690)
			VectorMon = Vector3.new(5411, 96, 690)

			CFrameQuest = CFrame.new(5308, 2, 474)
			VectorQuest = Vector3.new(5308, 2, 474)
		elseif LevelFarm == 14 then -- Dark Master
			Name = "Dangerous Prisoner [Lv. 210]"
			QuestName = "PrisonerQuest"

			LevelQuest = 2
			NameMon = "Dangerous Prisoner"

			CFrameMon = CFrame.new(5411, 96, 690)
			VectorMon = Vector3.new(5411, 96, 690)

			CFrameQuest = CFrame.new(5308, 2, 474)
			VectorQuest = Vector3.new(5308, 2, 474)
		elseif LevelFarm == 15 then -- Toga Warrior
			Name = "Toga Warrior [Lv. 250]"
			QuestName = "ColosseumQuest"

			LevelQuest = 1
			NameMon = "Toga Warrior"

			CFrameMon = CFrame.new(-1770, 8, -2777)
			VectorMon = Vector3.new(-1770, 8, -2777)

			CFrameQuest = CFrame.new(-1576, 8, -2985)
			VectorQuest = Vector3.new(-1576, 8, -2985)
		elseif LevelFarm == 16 then -- Gladiator
			Name = "Gladiator [Lv. 275]"
			QuestName = "ColosseumQuest"

			LevelQuest = 2
			NameMon = "Gladiator"

			CFrameMon = CFrame.new(-1525, 7, -3131)
			VectorMon = Vector3.new(-1525, 7, -3131)

			CFrameQuest = CFrame.new(-1578, 7, -2985)
			VectorQuest = Vector3.new(-1578, 7, -2985)
		elseif LevelFarm == 17 then -- Military Soldier
			Name = "Military Soldier [Lv. 300]"
			QuestName = "MagmaQuest"

			LevelQuest = 1
			NameMon = "Military Soldier"

			CFrameMon = CFrame.new(-5408, 11, 8447)
			VectorMon = Vector3.new(-5408, 11, 8447)

			CFrameQuest = CFrame.new(-5316, 12, 8517)
			VectorQuest = Vector3.new(-5316, 12, 8517)
		elseif LevelFarm == 18 then -- Military Spy
			Name = "Military Spy [Lv. 325]"
			QuestName = "MagmaQuest"

			LevelQuest = 2
			NameMon = "Military Spy"

			CFrameMon = CFrame.new(-5815, 84, 8820)
			VectorMon = Vector3.new(-5815, 84, 8820)

			CFrameQuest = CFrame.new(-5316, 12, 8517)
			VectorQuest = Vector3.new(-5316, 12, 8517)
		elseif LevelFarm == 19 then -- Fishman Warrior
			Name = "Fishman Warrior [Lv. 375]"
			QuestName = "FishmanQuest"

			LevelQuest = 1
			NameMon = "Fishman Warrior"

			CFrameMon = CFrame.new(60859, 19, 1501)
			VectorMon = Vector3.new(60859, 19, 1501)

			CFrameQuest = CFrame.new(61123, 19, 1569)
			VectorQuest = Vector3.new(61123, 19, 1569)
		elseif LevelFarm == 20 then -- Fishman Commando
			Name = "Fishman Commando [Lv. 400]"
			QuestName = "FishmanQuest"

			LevelQuest = 2
			NameMon = "Fishman Commando"

			CFrameMon = CFrame.new(61891, 19, 1470)
			VectorMon = Vector3.new(61891, 19, 1470)

			CFrameQuest = CFrame.new(61123, 19, 1569)
			VectorQuest = Vector3.new(61123, 19, 1569)
		elseif LevelFarm == 21 then -- God's Guards
			Name = "God's Guard [Lv. 450]"
			QuestName = "SkyExp1Quest"

			LevelQuest = 1
			NameMon = "God's Guard"

			CFrameMon = CFrame.new(-4698, 845, -1912)
			VectorMon = Vector3.new(-4698, 845, -1912)

			CFrameQuest = CFrame.new(-4722, 845, -1954)
			VectorQuest = Vector3.new(-4722, 846, -1954)
		elseif LevelFarm == 22 then -- Shandas
			Name = "Shanda [Lv. 475]"
			QuestName = "SkyExp1Quest"

			LevelQuest = 2
			NameMon = "Shanda"

			CFrameMon = CFrame.new(-7685, 5567, -502)
			VectorMon = Vector3.new(-7685, 5567, -502)

			CFrameQuest = CFrame.new(-7862, 5546, -380)
			VectorQuest = Vector3.new(-7862, 5546, -380)
		elseif LevelFarm == 23 then -- Royal Squad
			Name = "Royal Squad [Lv. 525]"
			QuestName = "SkyExp2Quest"

			LevelQuest = 1
			NameMon = "Royal Squad"

			CFrameMon = CFrame.new(-7670, 5607, -1460)
			VectorMon = Vector3.new(-7670, 5607, -1460)

			CFrameQuest = CFrame.new(-7904, 5636, -1412)
			VectorQuest = Vector3.new(-7904, 5636, -1412)
		elseif LevelFarm == 24 then -- Royal Soldier
			Name = "Royal Soldier [Lv. 550]"
			QuestName = "SkyExp2Quest"

			LevelQuest = 2
			NameMon = "Royal Soldier"

			CFrameMon = CFrame.new(-7828, 5607, -1744)
			VectorMon = Vector3.new(-7828, 5607, -1744)

			CFrameQuest = CFrame.new(-7904, 5636, -1412)
			VectorQuest = Vector3.new(-7904, 5636, -1412)
		elseif LevelFarm == 25 then -- Galley Pirate
			Name = "Galley Pirate [Lv. 625]"
			QuestName = "FountainQuest"

			LevelQuest = 1
			NameMon = "Galley Pirate"

			CFrameMon = CFrame.new(5589, 45, 3996)
			VectorMon = Vector3.new(5589, 45, 3996)

			CFrameQuest = CFrame.new(5256, 39, 4050)
			VectorQuest = Vector3.new(5256, 39, 4050)
		elseif LevelFarm == 26 then -- Galley Captain
			Name = "Galley Captain [Lv. 650]"
			QuestName = "FountainQuest"

			LevelQuest = 2
			NameMon = "Galley Captain"

			CFrameMon = CFrame.new(5649, 39, 4936)
			VectorMon = Vector3.new(5649, 39, 4936)

			CFrameQuest = CFrame.new(5256, 39, 4050)
			VectorQuest = Vector3.new(5256, 39, 4050)
		end
	end
	if SecondSea then
		if LevelFarm == 1 then -- Raider [Lv. 700]
			Name = "Raider [Lv. 700]"
			QuestName = "Area1Quest"

			LevelQuest = 1
			NameMon = "Raider"

			CFrameQuest = CFrame.new(-425, 73, 1837)
			VectorQuest = Vector3.new(-425, 73, 1837)

			CFrameMon = CFrame.new(-746, 39, 2390)
			VectorMon = Vector3.new(-746, 39, 2389)
		elseif LevelFarm == 2 then -- Mercenary [Lv. 725]
			Name = "Mercenary [Lv. 725]"
			QuestName = "Area1Quest"

			LevelQuest = 2
			NameMon = "Mercenary"

			CFrameQuest = CFrame.new(-425, 73, 1837)
			VectorQuest = Vector3.new(-425, 73, 1837)

			CFrameMon = CFrame.new(-874, 141, 1312)
			VectorMon = Vector3.new(-874, 141, 1312)
		elseif LevelFarm == 3 then -- Swan Pirate [Lv. 775]
			Name = "Swan Pirate [Lv. 775]"
			QuestName = "Area2Quest"

			LevelQuest = 1
			NameMon = "Swan Pirate"

			CFrameQuest = CFrame.new(634, 73, 918)
			VectorQuest = Vector3.new(634, 73, 918)

			CFrameMon = CFrame.new(878, 122, 1235)
			VectorMon = Vector3.new(878, 122, 1235)
		elseif LevelFarm == 4 then -- Factory Staff [Lv. 800]
			Name = "Factory Staff [Lv. 800]"
			QuestName = "Area2Quest"

			LevelQuest = 2
			NameMon = "Factory Staff"

			CFrameQuest = CFrame.new(634, 73, 918)
			VectorQuest = Vector3.new(634, 73, 918)

			CFrameMon = CFrame.new(295, 73, -56)
			VectorMon = Vector3.new(295, 73, -56)
		elseif LevelFarm == 5 then -- Marine Lieutenant [Lv. 875]
			Name = "Marine Lieutenant [Lv. 875]"
			QuestName = "MarineQuest3"

			LevelQuest = 1
			NameMon = "Marine Lieutenant"

			CFrameMon = CFrame.new(-2806, 73, -3038)
			VectorMon = Vector3.new(-2806, 73, -3038)

			CFrameQuest = CFrame.new(-2443, 73, -3219)
			VectorQuest = Vector3.new(-2443, 73, -3219)
		elseif LevelFarm == 6 then -- Marine Captain [Lv. 900]
			Name = "Marine Captain [Lv. 900]"
			QuestName = "MarineQuest3"

			LevelQuest = 2
			NameMon = "Marine Captain"

			CFrameMon = CFrame.new(-1869, 73, -3320)
			VectorMon = Vector3.new(-1869, 73, -3320)

			CFrameQuest = CFrame.new(-2443, 73, -3219)
			VectorQuest = Vector3.new(-2443, 73, -3219)
		elseif LevelFarm == 7 then -- Zombie [Lv. 950]
			Name = "Zombie [Lv. 950]"
			QuestName = "ZombieQuest"

			LevelQuest = 1
			NameMon = "Zombie"

			CFrameMon = CFrame.new(-5736, 126, -728)
			VectorMon = Vector3.new(-5736, 126, -728)

			CFrameQuest = CFrame.new(-5494, 49, -795)
			VectorQuest = Vector3.new(-5494, 49, -794)
		elseif LevelFarm == 8 then -- Vampire [Lv. 975]
			Name = "Vampire [Lv. 975]"
			QuestName = "ZombieQuest"

			LevelQuest = 2
			NameMon = "Vampire"

			CFrameMon = CFrame.new(-6033, 7, -1317)
			VectorMon = Vector3.new(-6033, 7, -1317)

			CFrameQuest = CFrame.new(-5494, 49, -795)
			VectorQuest = Vector3.new(-5494, 49, -795)
		elseif LevelFarm == 9 then -- Snow Trooper [Lv. 1000] **
			Name = "Snow Trooper [Lv. 1000]"
			QuestName = "SnowMountainQuest"

			LevelQuest = 1
			NameMon = "Snow Trooper"

			CFrameMon = CFrame.new(478, 402, -5362)
			VectorMon = Vector3.new(478, 402, -5362)

			CFrameQuest = CFrame.new(605, 402, -5371)
			VectorQuest = Vector3.new(605, 402, -5371)
		elseif LevelFarm == 10 then -- Winter Warrior [Lv. 1050]
			Name = "Winter Warrior [Lv. 1050]"
			QuestName = "SnowMountainQuest"

			LevelQuest = 2
			NameMon = "Winter Warrior"

			CFrameMon = CFrame.new(1157, 430, -5188)
			VectorMon = Vector3.new(1157, 430, -5188)

			CFrameQuest = CFrame.new(605, 402, -5371)
			VectorQuest = Vector3.new(605, 402, -5371)
		elseif LevelFarm == 11 then -- Lab Subordinate [Lv. 1100]
			Name = "Lab Subordinate [Lv. 1100]"
			QuestName = "IceSideQuest"

			LevelQuest = 1
			NameMon = "Lab Subordinate"

			CFrameMon = CFrame.new(-5782, 42, -4484)
			VectorMon = Vector3.new(-5782, 42, -4484)

			CFrameQuest = CFrame.new(-6060, 16, -4905)
			VectorQuest = Vector3.new(-6060, 16, -4905)
		elseif LevelFarm == 12 then -- Horned Warrior [Lv. 1125]
			Name = "Horned Warrior [Lv. 1125]"
			QuestName = "IceSideQuest"

			LevelQuest = 2
			NameMon = "Horned Warrior"

			CFrameMon = CFrame.new(-6406, 24, -5805)
			VectorMon = Vector3.new(-6406, 24, -5805)

			CFrameQuest = CFrame.new(-6060, 16, -4905)
			VectorQuest = Vector3.new(-6060, 16, -4905)
		elseif LevelFarm == 13 then -- Magma Ninja [Lv. 1175]
			Name = "Magma Ninja [Lv. 1175]"
			QuestName = "FireSideQuest"
			LevelQuest = 1
			NameMon = "Magma Ninja"

			CFrameMon = CFrame.new(-5428, 78, -5959)
			VectorMon = Vector3.new(-5428, 78, -5959)

			CFrameQuest = CFrame.new(-5430, 16, -5295)
			VectorQuest = Vector3.new(-5430, 16, -5296)
		elseif LevelFarm == 14 then -- Lava Pirate [Lv. 1200]
			Name = "Lava Pirate [Lv. 1200]"
			QuestName = "FireSideQuest"

			LevelQuest = 2
			NameMon = "Lava Pirate"

			CFrameMon = CFrame.new(-5270, 42, -4800)
			VectorMon = Vector3.new(-5270, 42, -4800)

			CFrameQuest = CFrame.new(-5430, 16, -5295)
			VectorQuest = Vector3.new(-5430, 16, -5296)
		elseif LevelFarm == 15 then -- Ship Deckhand [Lv. 1250]
			Name = "Ship Deckhand [Lv. 1250]"
			QuestName = "ShipQuest1"

			LevelQuest = 1
			NameMon = "Ship Deckhand"

			CFrameMon = CFrame.new(1198, 126, 33031)
			VectorMon = Vector3.new(1198, 126, 33031)

			CFrameQuest = CFrame.new(1038, 125, 32913)
			VectorQuest = Vector3.new(1038, 125, 32913)
		elseif LevelFarm == 16 then -- Ship Engineer [Lv. 1275]
			Name = "Ship Engineer [Lv. 1275]"
			QuestName = "ShipQuest1"

			LevelQuest = 2
			NameMon = "Ship Engineer"

			CFrameMon = CFrame.new(918, 44, 32787)
			VectorMon = Vector3.new(918, 44, 32787)

			CFrameQuest = CFrame.new(1038, 125, 32913)
			VectorQuest = Vector3.new(1038, 125, 32913)
		elseif LevelFarm == 17 then -- Ship Steward [Lv. 1300]
			Name = "Ship Steward [Lv. 1300]"
			QuestName = "ShipQuest2"

			LevelQuest = 1
			NameMon = "Ship Steward"

			CFrameMon = CFrame.new(915, 130, 33419)
			VectorMon = Vector3.new(915, 130, 33419)

			CFrameQuest = CFrame.new(969, 125, 33245)
			VectorQuest = Vector3.new(969, 125, 33245)
		elseif LevelFarm == 18 then -- Ship Officer [Lv. 1325]
			Name = "Ship Officer [Lv. 1325]"
			QuestName = "ShipQuest2"

			LevelQuest = 2
			NameMon = "Ship Officer"

			CFrameMon = CFrame.new(916, 181, 33335)
			VectorMon = Vector3.new(916, 181, 33335)

			CFrameQuest = CFrame.new(969, 125, 33245)
			VectorQuest = Vector3.new(969, 125, 33245)
		elseif LevelFarm == 19 then -- Arctic Warrior [Lv. 1350]
			Name = "Arctic Warrior [Lv. 1350]"
			QuestName = "FrostQuest"

			LevelQuest = 1
			NameMon = "Arctic Warrior"

			CFrameMon = CFrame.new(6038, 29, -6231)
			VectorMon = Vector3.new(6038, 29, -6231)

			VectorQuest = Vector3.new(5669, 28, -6482)
			CFrameQuest = CFrame.new(5669, 28, -6482)
		elseif LevelFarm == 20 then -- Snow Lurker [Lv. 1375]
			Name = "Snow Lurker [Lv. 1375]"
			QuestName = "FrostQuest"

			LevelQuest = 2
			NameMon = "Snow Lurker"

			CFrameMon = CFrame.new(5560, 42, -6826)
			VectorMon = Vector3.new(5560, 42, -6826)

			VectorQuest = Vector3.new(5669, 28, -6482)
			CFrameQuest = CFrame.new(5669, 28, -6482)
		elseif LevelFarm == 21 then -- Sea Soldier [Lv. 1425]
			Name = "Sea Soldier [Lv. 1425]"
			QuestName = "ForgottenQuest"

			LevelQuest = 1
			NameMon = "Sea Soldier"

			CFrameMon = CFrame.new(-3022, 16, -9722)
			VectorMon = Vector3.new(-3022, 16, -9722)

			CFrameQuest = CFrame.new(-3054, 237, -10148)
			VectorQuest = Vector3.new(-3054, 237, -10148)
		elseif LevelFarm == 22 then -- Water Fighter [Lv. 1450]
			Name = "Water Fighter [Lv. 1450]"
			QuestName = "ForgottenQuest"

			LevelQuest = 2
			NameMon = "Water Fighter"

			CFrameMon = CFrame.new(-3385, 239, -10542)
			VectorMon = Vector3.new(-3385, 239, -10542)

			CFrameQuest = CFrame.new(-3054, 237, -10148)
			VectorQuest = Vector3.new(-3054, 237, -10148)
		end
	end
	if ThirdSea then
		if LevelFarm == 1 then
			Name = "Pirate Millionaire [Lv. 1500]"
			QuestName = "PiratePortQuest"

			LevelQuest = 1
			NameMon = "Pirate Millionaire"

			CFrameMon = CFrame.new(-373, 75, 5550)
			VectorMon = Vector3.new(-373, 75, 5550)

			CFrameQuest = CFrame.new(-288, 44, 5576)
			VectorQuest = Vector3.new(-288, 44, 5576)
		elseif LevelFarm == 2 then
			Name = "Pistol Billionaire [Lv. 1525]"
			QuestName = "PiratePortQuest"

			LevelQuest = 2
			NameMon = "Pistol Billionaire"

			CFrameMon = CFrame.new(-469, 74, 5904)
			VectorMon = Vector3.new(-469, 74, 5904)

			CFrameQuest = CFrame.new(-288, 44, 5576)
			VectorQuest = Vector3.new(-288, 44, 5576)
		elseif LevelFarm == 3 then
			Name = "Dragon Crew Warrior [Lv. 1575]"
			QuestName = "AmazonQuest"

			LevelQuest = 1
			NameMon = "Dragon Crew Warrior"

			CFrameMon = CFrame.new(6339, 52, -1213)
			VectorMon = Vector3.new(6338, 52, -1213)

			CFrameQuest = CFrame.new(5835, 52, -1105)
			VectorQuest = Vector3.new(5835, 52, -1105)
		elseif LevelFarm == 4 then
			Name = "Dragon Crew Archer [Lv. 1600]"
			QuestName = "AmazonQuest"

			LevelQuest = 2
			NameMon = "Dragon Crew Archer"

			CFrameMon = CFrame.new(6594, 383, 139)
			VectorMon = Vector3.new(6594, 383, 139)

			CFrameQuest = CFrame.new(5835, 52, -1105)
			VectorQuest = Vector3.new(5835, 52, -1105)
		elseif LevelFarm == 5 then
			Name = "Female Islander [Lv. 1625]"
			QuestName = "AmazonQuest2"

			LevelQuest = 1
			NameMon = "Female Islander"

			CFrameMon = CFrame.new(5308, 819, 1047)
			VectorMon = Vector3.new(5308, 819, 1047)

			CFrameQuest = CFrame.new(5443, 602, 751)
			VectorQuest = Vector3.new(5443, 602, 751)
		elseif LevelFarm == 6 then
			Name = "Giant Islander [Lv. 1650]"
			QuestName = "AmazonQuest2"

			LevelQuest = 2
			NameMon = "Giant Islander"

			CFrameMon = CFrame.new(4951, 602, -68)
			VectorMon = Vector3.new(4951, 602, -68)

			CFrameQuest = CFrame.new(5443, 602, 751)
			VectorQuest = Vector3.new(5443, 602, 751)
		elseif LevelFarm == 7 then
			Name = "Marine Commodore [Lv. 1700]"
			QuestName = "MarineTreeIsland"

			LevelQuest = 1
			NameMon = "Marine Commodore"

			CFrameMon = CFrame.new(2447, 73, -7470)
			VectorMon = Vector3.new(2447, 73, -7470)

			CFrameQuest = CFrame.new(2180, 29, -6737)
			VectorQuest = Vector3.new(2180, 29, -6737)
		elseif LevelFarm == 8 then
			Name = "Marine Rear Admiral [Lv. 1725]"
			QuestName = "MarineTreeIsland"

			LevelQuest = 2
			NameMon = "Marine Rear Admiral"

			CFrameMon = CFrame.new(3671, 161, -6932)
			VectorMon = Vector3.new(3671, 161, -6932)

			CFrameQuest = CFrame.new(2180, 29, -6737)
			VectorQuest = Vector3.new(2180, 29, -6737)
		elseif LevelFarm == 9 then
			Name = "Fishman Raider [Lv. 1775]"
			QuestName = "DeepForestIsland3"

			LevelQuest = 1
			NameMon = "Fishman Raider"

			CFrameMon = CFrame.new(-10560, 332, -8466)
			VectorMon = Vector3.new(-10560, 332, -8466)

			CFrameQuest = CFrame.new(-10584, 332, -8758)
			VectorQuest = Vector3.new(-10584, 332, -8758)
		elseif LevelFarm == 10 then
			Name = "Fishman Captain [Lv. 1800]"
			QuestName = "DeepForestIsland3"

			LevelQuest = 2
			NameMon = "Fishman Captain"

			CFrameMon = CFrame.new(-10993, 332, -8940)
			VectorMon = Vector3.new(-10993, 332, -8940)

			CFrameQuest = CFrame.new(-10584, 332, -8758)
			VectorQuest = Vector3.new(-10584, 332, -8758)
		elseif LevelFarm == 11 then
			Name = "Forest Pirate [Lv. 1825]"
			QuestName = "DeepForestIsland"

			LevelQuest = 1
			NameMon = "Forest Pirate"

			CFrameMon = CFrame.new(-13479, 333, -7905)
			VectorMon = Vector3.new(-13479, 333, -7905)

			CFrameQuest = CFrame.new(-13232, 333, -7627)
			VectorQuest = Vector3.new(-13232, 333, -7627)
		elseif LevelFarm == 12 then
			Name = "Mythological Pirate [Lv. 1850]"
			QuestName = "DeepForestIsland"

			LevelQuest = 2
			NameMon = "Mythological Pirate"

			CFrameMon = CFrame.new(-13545, 470, -6917)
			VectorMon = Vector3.new(-13545, 470, -6917)

			CFrameQuest = CFrame.new(-13232, 333, -7627)
			VectorQuest = Vector3.new(-13232, 333, -7627)
		elseif LevelFarm == 13 then
			Name = "Jungle Pirate [Lv. 1900]"
			QuestName = "DeepForestIsland2"

			LevelQuest = 1
			NameMon = "Jungle Pirate"

			CFrameMon = CFrame.new(-12107, 332, -10549)
			VectorMon = Vector3.new(-12106, 332, -10549)

			CFrameQuest = CFrame.new(-12684, 391, -9902)
			VectorQuest = Vector3.new(-12684, 391, -9902)
		elseif LevelFarm == 14 then
			Name = "Musketeer Pirate [Lv. 1925]"
			QuestName = "DeepForestIsland2"

			LevelQuest = 2
			NameMon = "Musketeer Pirate"

			CFrameMon = CFrame.new(-13286, 392, -9769)
			VectorMon = Vector3.new(-13286, 392, -9768)

			CFrameQuest = CFrame.new(-12684, 391, -9902)
			VectorQuest = Vector3.new(-12684, 391, -9902)
		elseif LevelFarm == 15 then
			Name = "Reborn Skeleton [Lv. 1975]"
			QuestName = "HauntedQuest1"

			LevelQuest = 1
			NameMon = "Reborn Skeleton"

			CFrameMon = CFrame.new(-8760, 142, 6039)
			VectorMon = Vector3.new(-8760, 142, 6039)

			CFrameQuest = CFrame.new(-9482, 142, 5567)
			VectorQuest = Vector3.new(-9482, 142, 5567)
		elseif LevelFarm == 16 then
			Name = "Living Zombie [Lv. 2000]"
			QuestName = "HauntedQuest1"

			LevelQuest = 2
			NameMon = "Living Zombie"

			CFrameMon = CFrame.new(-10144, 140, 5932)
			VectorMon = Vector3.new(-10144, 140, 5932)

			CFrameQuest = CFrame.new(-9482, 142, 5567)
			VectorQuest = Vector3.new(-9482, 142, 5567)
		elseif LevelFarm == 17 then
			Name = "Demonic Soul [Lv. 2025]"
			QuestName = "HauntedQuest2"

			LevelQuest = 1
			NameMon = "Demonic Soul"

			CFrameMon = CFrame.new(-9507, 172, 6158)
			VectorMon = Vector3.new(-9506, 172, 6158)

			CFrameQuest = CFrame.new(-9513, 172, 6079)
			VectorQuest = Vector3.new(-9513, 172, 6079)
		elseif LevelFarm == 18 then
			Name = "Posessed Mummy [Lv. 2050]"
			QuestName = "HauntedQuest2"

			LevelQuest = 2
			NameMon = "Posessed Mummy"

			CFrameMon = CFrame.new(-9577, 6, 6223)
			VectorMon = Vector3.new(-9577, 6, 6223)

			CFrameQuest = CFrame.new(-9513, 172, 6079)
			VectorQuest = Vector3.new(-9513, 172, 6079)

		elseif LevelFarm == 19 then
			Name = "Peanut Scout [Lv. 2075]"
			QuestName = "NutsIslandQuest"

			LevelQuest = 1
			NameMon = "Peanut Scout"

			CFrameMon = CFrame.new(-2124, 123, -10435)
			VectorMon = Vector3.new(-2124, 123, -10435)

			CFrameQuest = CFrame.new(-2104, 38, -10192)
			VectorQuest = Vector3.new(-2104, 38, -10192)
		elseif LevelFarm == 20 then
			Name = "Peanut President [Lv. 2100]"
			QuestName = "NutsIslandQuest"

			LevelQuest = 2
			NameMon = "Peanut President"

			CFrameMon = CFrame.new(-2124, 123, -10435)
			VectorMon = Vector3.new(-2124, 123, -10435)

			CFrameQuest = CFrame.new(-2104, 38, -10192)
			VectorQuest = Vector3.new(-2104, 38, -10192)
		elseif LevelFarm == 21 then
			Name = "Ice Cream Chef [Lv. 2125]"
			QuestName = "IceCreamIslandQuest"

			LevelQuest = 1
			NameMon = "Ice Cream Chef"

			CFrameMon = CFrame.new(-641, 127, -11062)
			VectorMon = Vector3.new(-641, 127, -11062)

			CFrameQuest = CFrame.new(-822, 66, -10965)
			VectorQuest = Vector3.new(-822, 66, -10965)
		elseif LevelFarm == 22 then
			Name = "Ice Cream Commander [Lv. 2150]"
			QuestName = "IceCreamIslandQuest"

			LevelQuest = 2
			NameMon = "Ice Cream Commander"

			CFrameMon = CFrame.new(-641, 127, -11062)
			VectorMon = Vector3.new(-641, 127, -11062)

			CFrameQuest = CFrame.new(-822, 66, -10965)
			VectorQuest = Vector3.new(-822, 66, -10965)
		elseif LevelFarm == 23 then
			Name = "Cookie Crafter [Lv. 2200]"
			QuestName = "CakeQuest1"

			LevelQuest = 1
			NameMon = "Cookie Crafter"

			CFrameMon = CFrame.new(-2365, 38, -12099)
			VectorMon = Vector3.new(-2365, 38, -12099)

			CFrameQuest = CFrame.new(-2020, 38, -12025)
			VectorQuest = Vector3.new(-2020, 38, -12025)
		elseif LevelFarm == 24 then
			Name = "Cake Guard [Lv. 2225]"
			QuestName = "CakeQuest1"

			LevelQuest = 2
			NameMon = "Cake Guard"

			CFrameMon = CFrame.new(-1651, 38, -12308)
			VectorMon = Vector3.new(-1651, 38, -12308)

			CFrameQuest = CFrame.new(-2020, 38, -12025)
			VectorQuest = Vector3.new(-2020, 38, -12025)
		elseif LevelFarm == 25 then
			Name = "Baking Staff [Lv. 2250]"
			QuestName = "CakeQuest2"

			LevelQuest = 1
			NameMon = "Baking Staff"

			CFrameMon = CFrame.new(-1870, 38, -12938)
			VectorMon = Vector3.new(-1870, 38, -12938)

			CFrameQuest = CFrame.new(-1926, 38, -12850)
			VectorQuest = Vector3.new(-1926, 38, -12850)
		elseif LevelFarm == 26 then
			Name = "Head Baker [Lv. 2275]"
			QuestName = "CakeQuest2"

			LevelQuest = 2
			NameMon = "Head Baker"

			CFrameMon = CFrame.new(-1926, 88, -12850)
			VectorMon = CFrame.new(-1870, 38, -12938)

			CFrameQuest = CFrame.new(-1926, 38, -12850)
			VectorQuest = Vector3.new(-1926, 38, -12850)
		elseif LevelFarm == 27 then
			Name = "Cocoa Warrior [Lv. 2300]"
			QuestName = "ChocQuest1"

			LevelQuest = 1
			NameMon = "Cocoa Warrior"

			CFrameMon = CFrame.new(231, 23, -12194)
			VectorMon = CFrame.new(231, 23, -12194)

			CFrameQuest = CFrame.new(231, 23, -12194)
			VectorQuest = Vector3.new(231, 23, -12194)
		elseif LevelFarm == 28 then				
			Name = "Chocolate Bar Battler [Lv. 2325]"
			QuestName = "ChocQuest1"

			LevelQuest = 2
			NameMon = "Chocolate Bar Battler"

			CFrameMon = CFrame.new(231, 23, -12194)
			VectorMon = CFrame.new(231, 23, -12194)

			CFrameQuest = CFrame.new(231, 23, -12194)
			VectorQuest = Vector3.new(231, 23, -12194)
		elseif LevelFarm == 29 then				
			Name = "Sweet Thief [Lv. 2350]"
			QuestName = "ChocQuest2"

			LevelQuest = 1
			NameMon = "Sweet Thief"

			CFrameMon = CFrame.new(71, 77, -12632)
			VectorMon = CFrame.new(71, 77, -12632)

			CFrameQuest = CFrame.new(151, 23, -12774)
			VectorQuest = Vector3.new(151, 23, -12774)
		elseif LevelFarm == 30 then				
			Name = "Candy Rebel [Lv. 2375]"
			QuestName = "ChocQuest2"

			LevelQuest = 2
			NameMon = "Candy Rebel"

			CFrameMon = CFrame.new(134, 77, -12882)
			VectorMon = CFrame.new(134, 77, -12882)

			CFrameQuest = CFrame.new(151, 23, -12774)
			VectorQuest = Vector3.new(151, 23, -12774)
        elseif LevelFarm == 31 then
			Name = "Candy Pirate [Lv. 2400]"
			QuestName = "CandyQuest1"

			LevelQuest = 1
			NameMon = "Candy Pirate"

			CFrameMon = CFrame.new(-1347, 48, -14320)
			VectorMon = CFrame.new(-1347, 48, -14320)

			CFrameQuest = CFrame.new(-1149, 13, -14445)
			VectorQuest = Vector3.new(-1149, 13, -14445)
		elseif LevelFarm == 32 then
			Name = "Snow Demon [Lv. 2425]"
			QuestName = "CandyQuest1"

			LevelQuest = 2
			NameMon = "Snow Demon"

			CFrameMon = CFrame.new(-928, 16, -14501)
			VectorMon = CFrame.new(-928, 16, -14501)

			CFrameQuest = CFrame.new(-1149, 13, -14445)
			VectorQuest = Vector3.new(-1149, 13, -14445)
		end
	end
end

function CheckBossQuest()
	if _G.Settings.Boss["Select Boss"] == "Saber Expert [Lv. 200] [Boss]" then
		MsBoss = "Saber Expert [Lv. 200] [Boss]"
		NameBoss = "Saber Expert"
		CFrameBoss = CFrame.new(-1484.5423583984375, 23.852006912231445, -87.94239044189453)
	elseif _G.Settings.Boss["Select Boss"] == "The Saw [Lv. 100] [Boss]" then
		MsBoss = "The Saw [Lv. 100] [Boss]"
		NameBoss = "The Saw"
		CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
	elseif _G.Settings.Boss["Select Boss"] == "Greybeard [Lv. 750] [Raid Boss]" then
		MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
		NameBoss = "Greybeard"
		CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
	elseif _G.Settings.Boss["Select Boss"] == "The Gorilla King [Lv. 25] [Boss]" then
		MsBoss = "The Gorilla King [Lv. 25] [Boss]"
		NameBoss = "The Gorilla King"
		NameQuestBoss = "JungleQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
	elseif _G.Settings.Boss["Select Boss"] == "Bobby [Lv. 55] [Boss]" then
		MsBoss = "Bobby [Lv. 55] [Boss]"
		NameBoss = "Bobby"
		NameQuestBoss = "BuggyQuest1"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
	elseif _G.Settings.Boss["Select Boss"] == "Yeti [Lv. 110] [Boss]" then
		MsBoss = "Yeti [Lv. 110] [Boss]"
		NameBoss = "Yeti"
		NameQuestBoss = "SnowQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
		CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
	elseif _G.Settings.Boss["Select Boss"] == "Mob Leader [Lv. 120] [Boss]" then
		MsBoss = "Mob Leader [Lv. 120] [Boss]"
		NameBoss = "Mob Leader"
		CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
	elseif _G.Settings.Boss["Select Boss"] == "Vice Admiral [Lv. 130] [Boss]" then
		MsBoss = "Vice Admiral [Lv. 130] [Boss]"
		NameBoss = "Vice Admiral"
		NameQuestBoss = "MarineQuest2"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
		CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
	elseif _G.Settings.Boss["Select Boss"] == "Warden [Lv. 220] [Boss]" then
		MsBoss = "Warden [Lv. 220] [Boss]"
		NameBoss = "Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 1
		CFrameQuestBoss = CFrame.new(5190.8173828125, 3.537222146987915, 687.6902465820312)
		CFrameBoss = CFrame.new(5248.3037109375, 3.5421788692474365, 935.4749755859375)
	elseif _G.Settings.Boss["Select Boss"] == "Chief Warden [Lv. 230] [Boss]" then
		MsBoss = "Chief Warden [Lv. 230] [Boss]"
		NameBoss = "Chief Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(5190.8173828125, 3.537222146987915, 687.6902465820312)
		CFrameBoss = CFrame.new(5198.11181640625, 3.5383265018463135, 809.4231567382812)
	elseif _G.Settings.Boss["Select Boss"] == "Swan [Lv. 240] [Boss]" then
		MsBoss = "Swan [Lv. 240] [Boss]"
		NameBoss = "Swan"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5190.8173828125, 3.537222146987915, 687.6902465820312)
		CFrameBoss = CFrame.new(5304.3583984375, 7.787471771240234, 723.2423095703125)
	elseif _G.Settings.Boss["Select Boss"] == "Magma Admiral [Lv. 350] [Boss]" then
		MsBoss = "Magma Admiral [Lv. 350] [Boss]"
		NameBoss = "Magma Admiral"
		NameQuestBoss = "MagmaQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
		CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
	elseif _G.Settings.Boss["Select Boss"] == "Fishman Lord [Lv. 425] [Boss]" then
		MsBoss = "Fishman Lord [Lv. 425] [Boss]"
		NameBoss = "Fishman Lord"
		NameQuestBoss = "FishmanQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
		CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
	elseif _G.Settings.Boss["Select Boss"] == "Wysper [Lv. 500] [Boss]" then
		MsBoss = "Wysper [Lv. 500] [Boss]"
		NameBoss = "Wysper"
		NameQuestBoss = "SkyExp1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
		CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
	elseif _G.Settings.Boss["Select Boss"] == "Thunder God [Lv. 575] [Boss]" then
		MsBoss = "Thunder God [Lv. 575] [Boss]"
		NameBoss = "Thunder God"
		NameQuestBoss = "SkyExp2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
		CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
	elseif _G.Settings.Boss["Select Boss"] == "Cyborg [Lv. 675] [Boss]" then
		MsBoss = "Cyborg [Lv. 675] [Boss]"
		NameBoss = "Cyborg"
		NameQuestBoss = "FountainQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
		CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
		-- New World
	elseif _G.Settings.Boss["Select Boss"] == "Diamond [Lv. 750] [Boss]" then
		MsBoss = "Diamond [Lv. 750] [Boss]"
		NameBoss = "Diamond"
		NameQuestBoss = "Area1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
	elseif _G.Settings.Boss["Select Boss"] == "Jeremy [Lv. 850] [Boss]" then
		MsBoss = "Jeremy [Lv. 850] [Boss]"
		NameBoss = "Jeremy"
		NameQuestBoss = "Area2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
	elseif _G.Settings.Boss["Select Boss"] == "Fajita [Lv. 925] [Boss]" then
		MsBoss = "Fajita [Lv. 925] [Boss]"
		NameBoss = "Fajita"
		NameQuestBoss = "MarineQuest3"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
	elseif _G.Settings.Boss["Select Boss"] == "Don Swan [Lv. 1000] [Boss]" then
		MsBoss = "Don Swan [Lv. 1000] [Boss]"
		NameBoss = "Don Swan"
		CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
	elseif _G.Settings.Boss["Select Boss"] == "Smoke Admiral [Lv. 1150] [Boss]" then
		MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
		NameBoss = "Smoke Admiral"
		NameQuestBoss = "IceSideQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
		CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
	elseif _G.Settings.Boss["Select Boss"] == "Cursed Captain [Lv. 1325] [Raid Boss]" then
		MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
		NameBoss = "Cursed Captain"
		CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
	elseif _G.Settings.Boss["Select Boss"] == "Darkbeard [Lv. 1000] [Raid Boss]" then
		MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
		NameBoss = "Darkbeard"
		CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
	elseif _G.Settings.Boss["Select Boss"] == "Order [Lv. 1250] [Raid Boss]" then
		MsBoss = "Order [Lv. 1250] [Raid Boss]"
		NameBoss = "Order"
		CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
	elseif _G.Settings.Boss["Select Boss"] == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
		MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
		NameBoss = "Awakened Ice Admiral"
		NameQuestBoss = "FrostQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
		CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
	elseif _G.Settings.Boss["Select Boss"] == "Tide Keeper [Lv. 1475] [Boss]" then
		MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
		NameBoss = "Tide Keeper"
		NameQuestBoss = "ForgottenQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
		CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
		-- Thire World
	elseif _G.Settings.Boss["Select Boss"] == "Stone [Lv. 1550] [Boss]" then
		MsBoss = "Stone [Lv. 1550] [Boss]"
		NameBoss = "Stone"
		NameQuestBoss = "PiratePortQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-290, 44, 5577)
		CFrameBoss = CFrame.new(-1085, 40, 6779)
	elseif _G.Settings.Boss["Select Boss"] == "Island Empress [Lv. 1675] [Boss]" then
		MsBoss = "Island Empress [Lv. 1675] [Boss]"
		NameBoss = "Island Empress"
		NameQuestBoss = "AmazonQuest2"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5443, 602, 752)
		CFrameBoss = CFrame.new(5659, 602, 244)
	elseif _G.Settings.Boss["Select Boss"] == "Kilo Admiral [Lv. 1750] [Boss]" then
		MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
		NameBoss = "Kilo Admiral"
		NameQuestBoss = "MarineTreeIsland"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(2178, 29, -6737)
		CFrameBoss =CFrame.new(2846, 433, -7100)
	elseif _G.Settings.Boss["Select Boss"] == "Captain Elephant [Lv. 1875] [Boss]" then
		MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
		NameBoss = "Captain Elephant"
		NameQuestBoss = "DeepForestIsland"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
		CFrameBoss = CFrame.new(-13221, 325, -8405)
	elseif _G.Settings.Boss["Select Boss"] == "Beautiful Pirate [Lv. 1950] [Boss]" then
		MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
		NameBoss = "Beautiful Pirate"
		NameQuestBoss = "DeepForestIsland2"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
		CFrameBoss = CFrame.new(5182, 23, -20)
	elseif _G.Settings.Boss["Select Boss"] == "Cake Queen [Lv. 2175] [Boss]" then
		MsBoss = "Cake Queen [Lv. 2175] [Boss]"
		NameBoss = "Cake Queen"
		NameQuestBoss = "IceCreamIslandQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-716, 382, -11010)
		CFrameBoss = CFrame.new(-821, 66, -10965)
	elseif _G.Settings.Boss["Select Boss"] == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
		MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
		NameBoss = "rip_indra True Form"
		CFrameBoss = CFrame.new(-5359, 424, -2735)
	elseif _G.Settings.Boss["Select Boss"] == "Longma [Lv. 2000] [Boss]" then
		MsBoss = "Longma [Lv. 2000] [Boss]"
		NameBoss = "Longma"
		CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
	elseif _G.Settings.Boss["Select Boss"] == "Soul Reaper [Lv. 2100] [Raid Boss]" then
		MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
		NameBoss = "Soul Reaper"
		CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
	end
end

_G.GetBoss = false
function GetBossName()
	for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
		if not _G.GetBoss then
            -- World1
			if v.Name == "The Gorilla King [Lv. 25] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 20  then
				_G.Settings.Boss["Select Boss"] = "The Gorilla King [Lv. 25] [Boss]"
			elseif v.Name == "Bobby [Lv. 55] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 55  then
				_G.Settings.Boss["Select Boss"] = "Bobby [Lv. 55] [Boss]" 
			elseif v.Name == "Yeti [Lv. 110] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 105  then
				_G.Settings.Boss["Select Boss"] = "Yeti [Lv. 110] [Boss]"
			elseif v.Name == "Mob Leader [Lv. 120] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 120 then
				_G.Settings.Boss["Select Boss"] = "Mob Leader [Lv. 120] [Boss]"
			elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 130 then
				_G.Settings.Boss["Select Boss"] = "Vice Admiral [Lv. 130] [Boss]"
			elseif v.Name == "Warden [Lv. 220] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 220 then
				_G.Settings.Boss["Select Boss"] = "Warden [Lv. 220] [Boss]"
			elseif v.Name == "Saber Expert [Lv. 200] [Boss]" and game.Workspace.Map.Jungle.Final.Part.Transparency == 1 then
				_G.Settings.Boss["Select Boss"] = "Saber Expert [Lv. 200] [Boss]"
			elseif v.Name == "Chief Warden [Lv. 230] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 230 then
				_G.Settings.Boss["Select Boss"] = "Chief Warden [Lv. 230] [Boss]"
			elseif v.Name == "Swan [Lv. 240] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 240 then
				_G.Settings.Boss["Select Boss"] = "Swan [Lv. 240] [Boss]"
			elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 350  then
				_G.Settings.Boss["Select Boss"] = "Magma Admiral [Lv. 350] [Boss]"
			elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 425  then
				_G.Settings.Boss["Select Boss"] = "Fishman Lord [Lv. 425] [Boss]"
			elseif v.Name == "Wysper [Lv. 500] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 500 then
				_G.Settings.Boss["Select Boss"] = "Wysper [Lv. 500] [Boss]"
			elseif v.Name == "Thunder God [Lv. 575] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 575 then
				_G.Settings.Boss["Select Boss"] = "Thunder God [Lv. 575] [Boss]"
			elseif v.Name == "Cyborg [Lv. 675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 675 then
				_G.Settings.Boss["Select Boss"] = "Cyborg [Lv. 675] [Boss]"
                -- World2
			elseif v.Name == "Diamond [Lv. 750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 750 then
				_G.Settings.Boss["Select Boss"] = "Diamond [Lv. 750] [Boss]"
			elseif v.Name == "Jeremy [Lv. 850] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 850 then
				_G.Settings.Boss["Select Boss"] = "Jeremy [Lv. 850] [Boss]"
			elseif v.Name == "Fajita [Lv. 925] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 925  then
				_G.Settings.Boss["Select Boss"] = "Fajita [Lv. 925] [Boss]"
			elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1000 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
				_G.Settings.Boss["Select Boss"] = "Don Swan [Lv. 1000] [Boss]" 
			elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1150 then
				_G.Settings.Boss["Select Boss"] = "Smoke Admiral [Lv. 1150] [Boss]"
			elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]" and game.Players.localPlayer.Data.Level.Value >= 1325 then
				_G.Settings.Boss["Select Boss"] = "Cursed Captain [Lv. 1325] [Raid Boss]"
			elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1400  then
				_G.Settings.Boss["Select Boss"] = "Awakened Ice Admiral [Lv. 1400] [Boss]"
			elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1475  then
				_G.Settings.Boss["Select Boss"] = "Tide Keeper [Lv. 1475] [Boss]"
                -- World3
			elseif v.Name == "Stone [Lv. 1550] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1550 then
				_G.Settings.Boss["Select Boss"] = "Stone [Lv. 1550] [Boss]"
			elseif v.Name == "Island Empress [Lv. 1675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1675 then
				_G.Settings.Boss["Select Boss"] = "Island Empress [Lv. 1675] [Boss]"
			elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1750 then
				_G.Settings.Boss["Select Boss"] = "Kilo Admiral [Lv. 1750] [Boss]"
			elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1875 then
				_G.Settings.Boss["Select Boss"] = "Captain Elephant [Lv. 1875] [Boss]"
			elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1950 then
				_G.Settings.Boss["Select Boss"] = "Beautiful Pirate [Lv. 1950] [Boss]"
			elseif v.Name == "Cake Queen [Lv. 2175] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 2175 then
				_G.Settings.Boss["Select Boss"] = "Cake Queen [Lv. 2175] [Boss]"
			end 
		end 
	end
end

local MainUi = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Color = 'https://raw.githubusercontent.com/DeletedUserCode/AlphawaterUi/main/'

local Library = loadstring(game:HttpGet(MainUi .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(Color .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(MainUi .. 'addons/SaveManager.lua'))()
Library.ToggleKeybind = Options.RightControl
Date = os.date("%B %d, %Y")
function setwatermarktime()
    local dgt = math.floor(workspace.DistributedGameTime+0.27322)
    local hr = math.floor(dgt/(60^2))%24
    local min = math.floor(dgt/(60^1))%60
    local sec = math.floor(dgt/(60^0))%60
    Library:SetWatermark("Server Time : "..hr.." Hr(s), "..min.." Min(s), "..sec.." Sec(s)")
end

spawn(function()
    while task.wait() do 
        pcall(function() setwatermarktime() 
        end) 
    end 
end)

local Window = Library:CreateWindow({
    Title = 'VyGaming Premium - Series: Start - '..Date,
    Center = true,
    AutoShow = true,
})

local Tabs = {
    Main_Tab = Window:AddTab('General'),
	Teleport_Tab = Window:AddTab('Teleport'),
	Shop_Tab = Window:AddTab('Shop'),
    ['Setting'] = Window:AddTab('Setting'),
}

local General = Tabs.Main_Tab:AddLeftTabbox('')
local Main = General:AddTab('Main')

Main:AddToggle('Starting', {
    Text = 'Starting',
    Default = _G.Settings.General["Starting"],
    Tooltip = 'Auto Farm Level 1 - Max',
})

Toggles.Starting:OnChanged(function( Value )
	_G.Settings.General["Starting"] = Value
	if Value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	SaveSettings()
end)

AttackRandomType = 1
spawn(function()
	while wait() do 
		AttackRandomType = math.random(1,5)
		wait(0.1)
	end
end)

function AutoFarmLevel()
	GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
	GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value

	if _G.Settings.Setting["Skip Level"] and (MyLevel >= 30 and MyLevel <= 200 or MyLevel >= 340 and MyLevel <= 350 or MyLevel >= 430 and MyLevel <= 440 or MyLevel >= 490 and MyLevel <= 500 or MyLevel >= 550 and MyLevel <= 560 or MyLevel >= 590 and MyLevel <= 600 or MyLevel >= 640 and MyLevel <= 650 or MyLevel >= 680 and MyLevel <= 690) then
		if MyLevel >= 30 and MyLevel <= 49 then
			local CFrameMon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4658.3388671875, 872.5684814453125, -1767.7735595703125))
			if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Settings.Setting["Skip Level"] and v.Name == "God's Guard [Lv. 450]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						repeat wait()
							FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if FarmtoTarget then FarmtoTarget:Stop() end
								for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
									if _G.Settings.Setting["Skip Level"] and v2.Name == "God's Guard [Lv. 450]" and v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 then
										if InMyNetWork(v2.HumanoidRootPart) then
											v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v2.Humanoid.JumpPower = 0
											v2.Humanoid.WalkSpeed = 0
											v2.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v2.HumanoidRootPart.Transparency = 1
											v2.HumanoidRootPart.CanCollide = false
											v2.Head.CanCollide = false
											if v2.Humanoid:FindFirstChild("Animator") then
												v2.Humanoid.Animator:Destroy()
											end
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											v2.Humanoid:ChangeState(14)
											v2.Humanoid:ChangeState(11)
										end
									end
								end
								if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
									game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
									game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
								FastAttack = true
								EquipWeapon(_G.Settings.Setting["Select Weapon"])
							end
						until not (game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]")) or not (_G.Settings.Setting["Skip Level"] or _G.Settings.General["Starting"]) or v.Humanoid.Health <= 0 or not v.Parent
						FastAttack = false
					end
				end
			else
				Modstween = toTarget(CFrameMon)
				if FirstSea and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
					if Modstween then Modstween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4658.3388671875, 872.5684814453125, -1767.7735595703125))
				elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
					if Modstween then Modstween:Stop() end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
				end
			end
		elseif MyLevel >= 30 and MyLevel <= 200 or MyLevel >= 340 and MyLevel <= 350 or MyLevel >= 430 and MyLevel <= 440 or MyLevel >= 490 and MyLevel <= 500 or MyLevel >= 550 and MyLevel <= 560 or MyLevel >= 590 and MyLevel <= 600 or MyLevel >= 640 and MyLevel <= 650 or MyLevel >= 680 and MyLevel <= 690 then
			if GetQuest.Visible == false then
				if not tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")):find("We heard some") then 
					local CFrameMon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4658.3388671875, 872.5684814453125, -1767.7735595703125))
					if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if _G.Settings.Setting["Skip Level"] and v.Name == "God's Guard [Lv. 450]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat wait()
									FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if FarmtoTarget then FarmtoTarget:Stop() end
										for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
											if _G.Settings.Setting["Skip Level"] and v2.Name == "God's Guard [Lv. 450]" and v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 then
												if InMyNetWork(v2.HumanoidRootPart) then
													v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
													v2.Humanoid.JumpPower = 0
													v2.Humanoid.WalkSpeed = 0
													v2.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v2.HumanoidRootPart.Transparency = 1
													v2.HumanoidRootPart.CanCollide = false
													v2.Head.CanCollide = false
													if v2.Humanoid:FindFirstChild("Animator") then
														v2.Humanoid.Animator:Destroy()
													end
													sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
													v2.Humanoid:ChangeState(14)
													v2.Humanoid:ChangeState(11)
												end
											end
										end
										if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
											game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
										FastAttack = true
										EquipWeapon(_G.Settings.Setting["Select Weapon"])
									end
								until not (game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]")) or not (_G.Settings.Setting["Skip Level"] or _G.Settings.General["Starting"]) or v.Humanoid.Health <= 0 or not v.Parent
								FastAttack = false
							end
						end
					else
						Modstween = toTarget(CFrameMon)
						if FirstSea and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 300 then
							if Modstween then Modstween:Stop() end wait(.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4658.3388671875, 872.5684814453125, -1767.7735595703125))
						elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if Modstween then Modstween:Stop() end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
						end 
					end
				end
			elseif GetQuest.Visible == true then
				local AllPlayersTableSkipFarm = {}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
				for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
					table.insert(AllPlayersTableSkipFarm,v.Name)
				end
				if table.find(AllPlayersTableSkipFarm,GetQuestTitle.Text:split(" ")[2]) then
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
							if _G.Settings.General["Starting"] and _G.Settings.Setting["Skip Level"] and v.Name == GetQuestTitle.Text:split(" ")[2] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
										FarmtoTarget = toTargetP(v.HumanoidRootPart.CFrame)
									elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if FarmtoTarget then FarmtoTarget:Stop() end
										if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
											local args = {
												[1] = "EnablePvp"
											}

											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
											game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
										end
										if AttackRandomType == 1 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 30)
										elseif AttackRandomType == 2 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 0, 0)
										elseif AttackRandomType == 3 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30)
										elseif AttackRandomType == 4 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 0, 0)
										elseif AttackRandomType == 5 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
										else
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
										end
										EquipWeapon(_G.Settings.Setting["Select Weapon"])
										AttackPlayers()
									end
								until not _G.Settings.General["Starting"] or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
							end
						end
					end
				else
					if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if _G.Settings.General["Starting"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if string.find(GetQuestTitle.Text, QuestName) then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											StartMagnet = true
											PosMon = v.HumanoidRootPart.CFrame
											HealthMin = v.Humanoid.MaxHealth * 40/100
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
											FastAttack = true
											EquipWeapon(_G.Settings.Setting["Select Weapon"])
										end
									until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.General["Starting"] or not string.find(GetQuestTitle.Text, QuestName) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
									FastAttack = false
									StartMagnet = false
								else
									Com("F_","AbandonQuest");
								end
							end
						end
					else
						StartMagnet = false
						FastAttack = false
						if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
						Modstween = toTarget(CFrameMon.Position,CFrameMon)
						if FirstSea and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
							if Modstween then Modstween:Stop() end wait(.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
						elseif FirstSea and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
							if Modstween then Modstween:Stop() end wait(.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
						elseif SecondSea and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
							if Modstween then Modstween:Stop() end wait(.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
						elseif SecondSea and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
							if Modstween then Modstween:Stop() end wait(.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
						elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
							if Modstween then Modstween:Stop() end
							for i ,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
								if v.Name == NameMon then
									wait(.3)
									topos(v.CFrame * CFrame.new(0, 10, 0))
								end
							end
						end 
					end
				end
			end
		end
	else
		if not string.find(GetQuestTitle.Text, NameMon) then game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest"); end
		if GetQuest.Visible == false then
			StartMagnet = false
			FastAttack = false
			Questtween = toTarget(CFrameMon.Position,CFrameMon)
			if FirstSea and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Questtween then Questtween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			elseif FirstSea and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Questtween then Questtween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
			elseif SecondSea and string.find(Name, "Ship") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Questtween then Questtween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			elseif SecondSea and not string.find(Name, "Ship") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Questtween then Questtween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
				if Questtween then Questtween:Stop() end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
				Com("F_","StartQuest", QuestName, LevelQuest)
			end
		elseif GetQuest.Visible == true then
			if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Settings.General["Starting"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if string.find(GetQuestTitle.Text, NameMon) then
							repeat wait()
								FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if FarmtoTarget then FarmtoTarget:Stop() end
									if _G.Settings.Setting["Auto Haki"] then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
										wait()
										EquipWeapon(_G.Settings.Setting["Select Weapon"])
									end
									StartMagnet = true
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									v.Humanoid:ChangeState(14)
									PosMon = v.HumanoidRootPart.CFrame
									if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
										game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									end
									FastAttack = true
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
								end
							until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.General["Starting"] or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
							StartMagnet = false
							FastAttack = false
						else
							Com("F_","AbandonQuest");
						end
					end
				end
			else
				StartMagnet = false
				FastAttack = false
				if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
				Modstween = toTarget(CFrameMon.Position,CFrameMon)
				if FirstSea and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
					if Modstween then Modstween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif FirstSea and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
					if Modstween then Modstween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
				elseif SecondSea and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
					if Modstween then Modstween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif SecondSea and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
					if Modstween then Modstween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
					if Modstween then Modstween:Stop() end
					for i ,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
						if v.Name == NameMon then
							wait(.3)
							topos(v.CFrame * CFrame.new(0, 10, 0))
						end
					end
				end
			end
		end
	end
end

function CheckNotifyComplete()
	for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
		if v.Name == "NotificationTemplate" then
			if string.lower(v.Text):find("quest completed") then
				pcall(function()
					v:Destroy()
				end)
				return true
			end
		end
	end
	return false
end

local NoLoopDuplicate = false
local SubQuest = false
local oldmob = Name
local oldcheckquest = NameMon

task.spawn(function()
	while wait() do
		pcall(function()
			if _G.Settings.General["Starting"] then
				if _G.Settings.Setting["Double Quest"] then 
					if SubQuest == true then 
						if LevelFarm then 
							if tonumber(LevelFarm-1) ~= 0 then 
								CheckOldQuest(tonumber(LevelFarm-1))
							end
						end
					else
						CheckQuest()
						oldmob = Name
						oldcheckquest = NameMon
						spawn(function()
							pcall(function()
								if NoLoopDuplicate == false then 
									if CheckNotifyComplete() and _G.Settings.General["Starting"] then
										NoLoopDuplicate = true 
										while wait() do
											SubQuest = true
											if CheckNotifyComplete() or _G.Settings.General["Starting"] == false then
												break;
											end
										end
										SubQuest = false
										NoLoopDuplicate = false
									end
								end
							end)
						end)
						if SubQuest == true then  
							if LevelFarm then 
								if tonumber(LevelFarm-1) ~= 0 then 
									CheckOldQuest(tonumber(LevelFarm-1))
								end
							end
						end
					end
				else
					CheckQuest()
				end
				AutoFarmLevel()
			end
		end)
	end
end)

if FirstSea then
	Main:AddToggle('Travel_Dressrosa', {
		Text = 'Travel Dressrosa',
		Default = _G.Settings.General["Travel Dressrosa"],
		Tooltip = 'Auto Second Sea',
	})
	
	Toggles.Travel_Dressrosa:OnChanged(function( Value )
		_G.Settings.General["Travel Dressrosa"] = Value
		if Value == false then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.General["Travel Dressrosa"] and FirstSea then
						if game.Players.LocalPlayer.Data.Level.Value >= 700 then
							if _G.Settings.General["Starting"] then
								_G.Settings.General["Starting"] = false
							end
							if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
								EquipWeapon("Key")
								repeat wait() toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488)) until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.General["Auto Travel Dressrosa"]
								wait(3)
							elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
											repeat wait()
												if _G.Settings.Setting["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Setting["Select Weapon"])
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
												FastAttack = true
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.HumanoidRootPart.Transparency = 1
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
											until v.Humanoid.Health <= 0 or not v.Parent
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
										end
									end
								else
									toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
								end
							end
						end
					end
				end)
			end
		end)
	end)
end

if SecondSea then

	Main:AddToggle('Auto_Factory', {
		Text = 'Auto Factory',
		Default = _G.Settings.General["Factory"],
		Tooltip = 'Auto Factory',
	})
	
	Toggles.Auto_Factory:OnChanged(function( Value )
		_G.Settings.General["Factory"] = Value
		if Value == false then
			wait()
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait()
		end
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.General["Factory"] then
						if game.Workspace.Enemies:FindFirstChild("Core") then
							_G.FactoryCore = true
							if _G.Settings.General["Starting"] then
								_G.Settings.General["Starting"] = false
							end
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
									repeat wait()
										FastAttack = true
										if _G.Settings.Setting["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Setting["Select Weapon"])
										end
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
									until not _G.FactoryCore or v.Humanoid.Health <= 0 or _G.Settings.General["Factory"] == false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
							_G.FactoryCore = true
							if _G.Settings.General["Starting"] then
								_G.Settings.General["Starting"] = false
							end
							toTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
						elseif not game.ReplicatedStorage:FindFirstChild("Core") then
							if _G.Settings.General["Auto Factory Hop"] then
								ServerHop:Teleport()
							else
								if _G.Settings.General["Starting"] then
									_G.FactoryCore = false
									_G.Settings.General["Starting"] = true
								end
							end
						end
					end
				end)
			end
		end)
	end)

	Main:AddToggle('Auto_Ectoplasm', {
		Text = 'Auto Ectoplasm',
		Default = _G.Settings.General["Ectoplasm"],
		Tooltip = 'Auto Ectoplasm',
	})
	
	Toggles.Auto_Ectoplasm:OnChanged(function( Value )
		_G.Settings.General["Ectoplasm"] = Value
		if Value == false then
			wait()
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait()
		end
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.General["Ectoplasm"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name == "Arctic Warrior [Lv. 1350]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											StartMagnet = true
											FastAttack = true
											if _G.Settings.Setting["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Setting["Select Weapon"])
											end
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
											PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										until not _G.Settings.General["Ectoplasm"] or not v.Parent or v.Humanoid.Health <= 0
										StartMagnet = false
										FastAttack = false
									end
								end
							end
						else
							StartMagnet = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
						end
					end
				end)
			end
		end)
	end)
end

if SecondSea then
	Main:AddToggle('Travel_Zou', {
		Text = 'Travel Zou',
		Default = _G.Settings.General["Travel Zou"],
		Tooltip = 'Auto Third Sea',
	})
	
	Toggles.Travel_Zou:OnChanged(function( Value )
		_G.Settings.General["Travel Zou"] = Value
		if Value == false then
			wait()
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait()
		end
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.General["Travel Zou"] then
						if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
							if _G.Settings.General["Starting"] then
								_G.Settings.General["Starting"] = false
							end
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
									Com("F_","TravelZou")
									if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
										if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then 	
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															FastAttack = true
															if _G.Settings.Setting["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Setting["Select Weapon"])
															end
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
															PosMon = v.HumanoidRootPart.CFrame
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
														end
													until not _G.Settings.General["Auto Travel Zou"] or not v.Parent or v.Humanoid.Health <= 0 
													wait(.5)
													Check = 2
													repeat wait() Com("F_","TravelZou") until Check == 1
													FastAttack = false
												end
											end
										else
											Com("F_","ZQuestProgress","Check")
											Com("F_","ZQuestProgress","Begin")
										end
									elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
										Com("F_","TravelZou")
									else
										if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															FastAttack = true
															if _G.Settings.Setting["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Setting["Select Weapon"])
															end
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
															PosMon = v.HumanoidRootPart.CFrame
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
														end
													until not _G.Settings.Main["Auto Third Sea"] or not v.Parent or v.Humanoid.Health <= 0 
													FastAttack = false
												end
											end
										else
											TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
											if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if TweenDonSwanthireworld then
													TweenDonSwanthireworld:Stop()
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
												end
											end
										end
									end
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
										TabelDevilFruitStore = {}
										TabelDevilFruitOpen = {}
	
										for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
											for i1,v1 in pairs(v) do
												if i1 == "Name" then 
													table.insert(TabelDevilFruitStore,v1)
												end
											end
										end
	
										for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
											if v.Price >= 1000000 then  
												table.insert(TabelDevilFruitOpen,v.Name)
											end
										end
	
										for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
											for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
												if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
													if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
														Com("F_","LoadFruit",DevilFruitStore)
													else
														Com("F_","TalkTrevor","1")
														Com("F_","TalkTrevor","2")
														Com("F_","TalkTrevor","3")
													end
												end
											end
										end
	
										Com("F_","TalkTrevor","1")
										Com("F_","TalkTrevor","2")
										Com("F_","TalkTrevor","3")	
									end
								end
							end
						end
					end
				end)
			end
		end)
	end)
end

if ThirdSea then

	Main:AddToggle('Auto_Bone', {
		Text = 'Auto Bone',
		Default = _G.Settings.General["Bone"],
		Tooltip = 'Auto Bone',
	})
	
	Toggles.Auto_Bone:OnChanged(function( Value )
		_G.Settings.General["Bone"] = Value
		if Value == false then
			wait()
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait()
		end
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.General["Bone"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											StartMagnet = true
											FastAttack = true
											if _G.Settings.Setting["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Setting["Select Weapon"])
											end
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
											PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										until not _G.Settings.General["Bone"] or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
										StartMagnet = false
										FastAttack = false
									end
								end
							end
						else
							toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
						end
					end
				end)
			end
		end)
	end)

	Main:AddToggle('Auto_Pirate_Raid', {
		Text = 'Auto Pirate Raid',
		Default = _G.Settings.General["Pirate Raid"],
		Tooltip = 'Auto Pirate Raid',
	})
	
	Toggles.Auto_Pirate_Raid:OnChanged(function( Value )
		_G.Settings.General["Pirate Raid"] = Value
		SaveSettings()

spawn(function()
	while wait() do
		if _G.Settings.General["Pirate Raid"] then
			pcall(function()
				local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
				if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.Settings.General["Pirate Raid"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
								repeat wait()
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                        EquipWeapon(_G.Settings.Setting["Select Weapon"])
									Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                                        wait()
									Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,-10,0))
								until v.Humanoid.Health <= 0 or not v.Parent or _G.Settings.General["Pirate Raid"] == false
							end
						end
					end
				else
					if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						TP(CFrameBoss)
					else
						TelePBoss(CFrameBoss)
					end
				end
			end)
		end
	end
end)
	end)
end


Main:AddToggle('Mob_Aura', {
    Text = 'Mob Aura',
    Default = _G.Settings.General["Mob Aura"],
    Tooltip = 'Farm All Mob In Island',
})

Toggles.Mob_Aura:OnChanged(function( Value )
	_G.Settings.General["Mob Aura"] = Value
	if Value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	SaveSettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.General["Mob Aura"] then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Settings.General["Mob Aura"] and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
							repeat wait()
								StartMagnet = true
								FastAttack = true
								if _G.Settings.Setting["Auto Haki"] then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
									wait()
									EquipWeapon(_G.Settings.Setting["Select Weapon"])
								end
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
								MagnetMobAura = true
								if delay then
									delay(1,function()
										MagnetMobAura = true
									end)
								end
							until not _G.Settings.General["Mob Aura"] or not v.Parent or v.Humanoid.Health <= 0
							MagnetMobAura = false
							FastAttack = false
							StartMagnet = false
						end
					end
				end
			end)
		end
	end)
end)

Main:AddToggle('Chest_Nhanh', {
	Text = 'Chest Nhanh',
	Default = TPChest,
	Tooltip = 'Auto Farm Chest Nhanh',
})

Toggles.Chest_Nhanh:OnChanged(function( Value )
	TPChest = Value
	SaveSettings()
	spawn(function()
		while true do
			if TPChest then
				if game.Players.LocalPlayer.Character then
					local hasChar = game.Players.LocalPlayer:FindFirstChild("Character")
					if not game.Players.LocalPlayer.Character then
			
					else
						local hasCrewTag = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG",true)
						if hasCrewTag then hasCrewTag:Destroy() end
						local hasHumanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
						if hasHumanoid then
							local Chest = game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or game.Workspace:FindFirstChild("Chest2") or game.Workspace:FindFirstChild("Chest1") or game.Workspace:FindFirstChild("Chest")
							
							if Chest then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Chest.CFrame
								firesignal(Chest.Touched,game.Players.LocalPlayer.Character.HumanoidRootPart)
							elseif TPChestHop then
								Hop()
								break
							end
						end
					end 
				end
			end
			task.wait()
		end
	end)
end)

local Boss = General:AddTab('Boss')

local BossTable = {}   
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	if string.find(v.Name, "Boss") then
		if v.Name == "Ice Admiral [Lv. 700] [Boss]" then

		else
			table.insert(BossTable, v.Name)
		end
	end
end

game:GetService("ReplicatedStorage").ChildAdded:Connect(
    function(boss)
        local bossName = boss.Name
        if string.find(bossName, "Boss") then
            table.insert(BossTable, bossName)
        end
        Options.Select_Boss:SetValues()
    end
)
game:GetService("ReplicatedStorage").ChildRemoved:Connect(
    function(boss)
        local bossName = boss.Name
        if string.find(bossName, "Boss") then
            for i,v in pairs(BossTable) do
                if v == bossName and not game:GetService("ReplicatedStorage"):FindFirstChild(bossName) then
                    table.remove(BossTable, i)
                end
            end
            Options.Select_Boss:SetValues()
        end
    end
)

Boss:AddDropdown('Select_Boss', {
    Values = BossTable,
    Default = _G.Settings.Boss["Select Boss"],
    Multi = false,

    Text = 'Select Boss',
    Tooltip = 'Select Boss',
})

Options.Select_Boss:OnChanged(function( Value )
	_G.Settings.Boss["Select Boss"] = Value
end)

Boss:AddToggle('Auto_Boss', {
    Text = 'Auto Boss',
    Default = _G.Settings.Boss["Auto Boss Select"],
    Tooltip = 'Auto Boss',
})

Toggles.Auto_Boss:OnChanged(function( Value )
	_G.Settings.Boss["Auto Boss Select"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			if _G.Settings.Boss["Auto Boss Select"] then
				pcall(function()
					CheckBossQuest()
					if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										if _G.Settings.Setting["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Setting["Select Weapon"])
										end
										StartMagnet = true
										FastAttack = true
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
									until _G.Settings.Boss["Auto Boss Select"] == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							toTarget(CFrameBoss)
						end
					else
						if _G.Settings.Boss["Auto Quest"] then
							CheckBossQuest()
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								_G.GetBoss = true
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == MsBoss then
											repeat wait()
												if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
													if _G.Settings.Setting["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Setting["Select Weapon"])
													end
													StartMagnet = true
													FastAttack = true
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)								
												else
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
												end
											until _G.Settings.Boss["Auto Boss Select"] == false or not v.Parent or v.Humanoid.Health <= 0
										end
									end
								else
									toTarget(CFrameBoss)
								end
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											if _G.Settings.Setting["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Setting["Select Weapon"])
											end
											StartMagnet = true
											FastAttack = true
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
											PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)								
										until _G.Settings.Boss["Auto Boss Select"] == false or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								toTarget(CFrameBoss)
							end
						end
					end
				end)
			end
		end
	end)
end)

Boss:AddToggle('Auto_All_Boss', {
    Text = 'Auto All Boss',
    Default = _G.Settings.Boss["Auto All Boss"],
    Tooltip = 'Auto All Boss',
})

Toggles.Auto_All_Boss:OnChanged(function( Value )
	_G.Settings.Boss["Auto All Boss"] = Value
	_G.GetBoss = false
	MsBoss = ""
	SaveSettings()
	task.spawn(function()
	while wait() do
			if _G.Settings.Boss["Auto All Boss"] then
				GetBossName()
			end
		end
	end)
	task.spawn(function()
		while wait() do
			if _G.Settings.Boss["Auto All Boss"] then
				pcall(function()
					CheckBossQuest()
					if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
						if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											_G.GetBoss = true
											if _G.Settings.Setting["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Setting["Select Weapon"])
											end
											StartMagnet = true
											FastAttack = true
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
											PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
										until _G.Settings.Boss["Auto All Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
										_G.GetBoss = false
									end
								end
							else
								_G.GetBoss = true
								toTarget(CFrameBoss)
							end
						else
							_G.GetBoss = false
						end
					else
						if _G.Settings.Boss["Auto Quest"] then
							CheckBossQuest()
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								_G.GetBoss = true
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == MsBoss then
												repeat wait()
													_G.GetBoss = true
													if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
														if _G.Settings.Setting["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Setting["Select Weapon"])
														end
														StartMagnet = true
														FastAttack = true
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
														PosMon = v.HumanoidRootPart.CFrame
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)								
													else
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
													end
												until _G.Settings.Boss["Auto All Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
												_G.GetBoss = false
											end
										end
									else
										_G.GetBoss = true
										toTarget(CFrameBoss)
									end
								else
									_G.GetBoss = false
								end
							end
						else
							if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == MsBoss then
											repeat wait()
												_G.GetBoss = true
												if _G.Settings.Setting["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Setting["Select Weapon"])
												end
												StartMagnet = true
												FastAttack = true
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
												PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)								
											until _G.Settings.Boss["Auto All Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
											_G.GetBoss = false
										end
									end
								else
									_G.GetBoss = true
									toTarget(CFrameBoss)
								end
							else
								_G.GetBoss = false
							end
						end
					end
				end)
			end
		end
	end)
end)

Boss:AddToggle('Auto_Quest', {
    Text = 'Auto Quest',
    Default = _G.Settings.Boss["Auto Quest"],
    Tooltip = 'Auto Quest Boss',
})

Toggles.Auto_Quest:OnChanged(function( Value )
	_G.Settings.Boss["Auto Quest"] = Value
	SaveSettings()
end)

local Main_Stats = General:AddTab('Stats')

Main_Stats:AddToggle('Kaitun', {
    Text = 'Kaitun',
    Default = _G.Settings.Stats["Auto Stats Kaitun"],
    Tooltip = 'Auto Stats Melee + Defense',
})

Toggles.Kaitun:OnChanged(function( Value )
	_G.Settings.Stats["Auto Stats Kaitun"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Stats["Auto Stats Kaitun"] then
					if FirstSea then
						local args = {
							[1] = "AddPoint",
							[2] = "Melee",
							[3] = _G.Settings.Stats["Points"]
							}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif SecondSea then
						local args = {
							[1] = "AddPoint",
							[2] = "Melee",
							[3] = _G.Settings.Stats["Points"]
							}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "AddPoint",
							[2] = "Defense",
							[3] = _G.Settings.Stats["Points"]
							}	
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif ThirdSea then
						local args = {
							[1] = "AddPoint",
							[2] = "Defense",
							[3] = _G.Settings.Stats["Points"]
							}	
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "AddPoint",
							[2] = "Demon Fruit",
							[3] = _G.Settings.Stats["Points"]
							}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
			end)
		end
	end)
end)

Main_Stats:AddToggle('Melee', {
    Text = 'Melee',
    Default = _G.Settings.Stats["Auto Stats Melee"],
    Tooltip = 'Auto Stats Melee',
})

Toggles.Melee:OnChanged(function( Value )
	_G.Settings.Stats["Auto Stats Melee"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			if _G.Settings.Stats["Auto Stats Melee"] then
				if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", _G.Settings.Stats["Points"])
				end
			end
		end
	end)
end)

Main_Stats:AddToggle('Defense', {
    Text = 'Defense',
    Default = _G.Settings.Stats["Auto Stats Defense"],
    Tooltip = 'Auto Stats Defense',
})

Toggles.Defense:OnChanged(function( Value )
	_G.Settings.Stats["Auto Stats Defense"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			if _G.Settings.Stats["Auto Stats Defense"] then
				if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", _G.Settings.Stats["Points"])
				end
			end
		end
	end)
end)

Main_Stats:AddToggle('Sword', {
    Text = 'Sword',
    Default = _G.Settings.Stats["Auto Stats Sword"],
    Tooltip = 'Auto Stats Sword',
})

Toggles.Sword:OnChanged(function( Value )
	_G.Settings.Stats["Auto Stats Sword"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			if _G.Settings.Stats["Auto Stats Sword"] then
				if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", _G.Settings.Stats["Points"])
				end
			end
		end
	end)
end)

Main_Stats:AddToggle('Gun', {
    Text = 'Gun',
    Default = _G.Settings.Stats["Auto Stats Gun"],
    Tooltip = 'Auto Stats Gun',
})

Toggles.Gun:OnChanged(function( Value )
	_G.Settings.Stats["Auto Stats Gun"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			if _G.Settings.Stats["Auto Stats Gun"] then
				if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", _G.Settings.Stats["Points"])
				end
			end
		end
	end)
end)

Main_Stats:AddToggle('Devil_Fruit', {
    Text = 'Devil Fruit',
    Default = _G.Settings.Stats["Auto Stats Devil Fruit"],
    Tooltip = 'Auto Stats Devil Fruit',
})

Toggles.Devil_Fruit:OnChanged(function( Value )
	_G.Settings.Stats["Auto Stats Devil Fruit"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			if _G.Settings.Stats["Auto Stats Devil Fruit"] then
				if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", _G.Settings.Stats["Points"])
				end
			end
		end
	end)
end)

Main_Stats:AddSlider('Point', {
    Text = 'Select Point',

    Default = _G.Settings.Stats["Points"],
    Min = 1,
    Max = 100,
    Rounding = 0,

    Compact = false,
})

Options.Point:OnChanged(function( Value )
	_G.Settings.Stats["Points"] = Value
	SaveSettings()
end)

local General_Setting = Tabs.Main_Tab:AddRightTabbox('')
local Main_Setting = General_Setting:AddTab('Setting')

Main_Setting:AddDropdown('Select_Weapon', {
    Values = { 'Melee', 'Sword', 'Blox Fruit'},
    Default = _G.Settings.Setting["Select Weapon"],
    Multi = false,

    Text = 'Select Weapon',
    Tooltip = 'Select Weapon Melee, Sword and Blox Fruit',
})

Options.Select_Weapon:OnChanged(function( Value )
	_G.Settings.Setting["Select Weapon"] = Value
	_G.Select_Weapon = Value
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Select_Weapon == "Melee" then
					for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Settings.Setting["Select Weapon"] = tostring(v.Name)
							end
						end
					end
				elseif _G.Select_Weapon == "Sword" then
					for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Sword" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Settings.Setting["Select Weapon"] = tostring(v.Name)
							end
						end
					end
				elseif _G.Select_Weapon == "Blox Fruit" then
					for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Blox Fruit" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Settings.Setting["Select Weapon"] = tostring(v.Name)
							end
						end
					end
				end
			end)
		end
	end)
end)

Main_Setting:AddToggle('Attack', {
    Text = 'Attack',
    Default = _G.Settings.Setting["Fast Attack"],
    Tooltip = 'Attack',
})

Toggles.Attack:OnChanged(function( Value )
	_G.Settings.Setting["Fast Attack"] = Value
	SaveSettings()
	coroutine.wrap(function()
		while task.wait() do
			local ac = CombatFrameworkR.activeController
			if ac and ac.equipped then
				if FastAttack and _G.Settings.Setting["Fast Attack"] then
					AttackFunction()
					if tick() - cooldownfastattack > .1 then wait(.3) cooldownfastattack = tick() end
				elseif FastAttack and _G.Settings.Setting["Fast Attack"] == false then
					if ac.hitboxMagnitude ~= 55 then
						ac.hitboxMagnitude = 55
					end
					ac:attack()
				end
			end
		end
	end)()
end)

if FirstSea then
	Main_Setting:AddToggle('Skip_Level', {
    	Text = 'Skip Level',
    	Default = _G.Settings.Setting["Skip Level"],
    	Tooltip = 'Skip Level',
	})

	Toggles.Skip_Level:OnChanged(function( Value )
		_G.Settings.Setting["Skip Level"] = Value
		SaveSettings()
	end)
end

Main_Setting:AddToggle('Bypass_TP', {
    Text = 'Bypass TP',
    Default = _G.Settings.Setting["Bypass TP"],
    Tooltip = 'Bypass TP',
})

Toggles.Bypass_TP:OnChanged(function( Value )
	_G.Settings.Setting["Bypass TP"] = Value
	SaveSettings()
end)

Main_Setting:AddToggle('Double_Quest', {
    Text = 'Double Quest',
    Default = _G.Settings.Setting["Double Quest"],
    Tooltip = 'Double Quest',
})

Toggles.Double_Quest:OnChanged(function( Value )
	_G.Settings.Setting["Double Quest"] = Value
	SaveSettings()
end)

Main_Setting:AddToggle('Auto_Race', {
    Text = 'Auto Race',
    Default = _G.Settings.Setting["Auto Race"],
    Tooltip = 'Auto Race',
})

Toggles.Auto_Race:OnChanged(function( Value )
	_G.Settings.Setting["Auto Race"] = Value
	SaveSettings()
	task.spawn(function()
		while wait(10) do
			pcall(function()
				if _G.Settings.Setting["Auto Race"] then
					game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
					game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
					game:service('VirtualInputManager'):SendKeyEvent(true, "Y", false, game)
					game:service('VirtualInputManager'):SendKeyEvent(false, "Y", false, game)
				end
			end)
		end
	end)
end)

Main_Setting:AddToggle('Auto_Haki', {
    Text = 'Auto Haki',
    Default = _G.Settings.Setting["Auto Haki"],
    Tooltip = 'Auto Haki',
})

Toggles.Auto_Haki:OnChanged(function( Value )
	_G.Settings.Setting["Auto Haki"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Setting["Auto Haki"] then
					if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
					end
				end
			end)
		end
	end)
end)

local RunService = game:GetService("RunService")
Main_Setting:AddToggle('White_Screen', {
    Text = 'White Screen',
    Default = _G.Settings.Setting["White Screen"],
    Tooltip = 'White Screen',
})

Toggles.White_Screen:OnChanged(function( Value )
	_G.Settings.Setting["White Screen"] = Value
	if Value == true then
		RunService:Set3dRenderingEnabled(false)
		setfpscap(30)
	else
		RunService:Set3dRenderingEnabled(true)
		setfpscap(120)
	end
	SaveSettings()
end)

Main_Setting:AddToggle('Black_Screen', {
    Text = 'Black Screen',
    Default = _G.Settings.Setting["Black Screen"],
    Tooltip = 'Black Screen',
})

Toggles.Black_Screen:OnChanged(function( Value )
	_G.Settings.Setting["Black Screen"] = Value
	if Value == true then
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
		setfpscap(30)
	else
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(0, 0, 0, 0)
		setfpscap(120)
	end
	SaveSettings()
end)

Main_Setting:AddToggle('Camera_Shaker', {
    Text = 'Camera Shaker',
    Default = _G.Settings.Setting["Camera Shaker"],
    Tooltip = 'Camera Shaker',
})

Toggles.Camera_Shaker:OnChanged(function( Value )
	_G.Settings.Setting["Camera Shaker"] = Value
	SaveSettings()
	task.spawn(function()
		local Camera = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
		while wait() do
			pcall(function()
				if _G.Settings.Setting["Camera Shaker"] then
					Camera.CameraShakeInstance.CameraShakeState.Inactive = 0
				else
					Camera.CameraShakeInstance.CameraShakeState.Inactive = 3
				end
			end)
		end
	end)
end)

Main_Setting:AddToggle('Auto_Rejoin', {
    Text = 'Auto Rejoin',
    Default = _G.Settings.Setting["Auto Rejoin"],
    Tooltip = 'Auto Rejoin',
})

Toggles.Auto_Rejoin:OnChanged(function( Value )
	_G.Settings.Setting["Auto Rejoin"] = Value
	_G.Auto_Rejoin = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Setting['Auto Rejoin'] then
					_G.Auto_Rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
						if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
							print("Rejoin Server For Kick/Disconnect!")
							game:GetService("TeleportService"):Teleport(game.PlaceId)
						end
					end)
				end
			end)
		end
	end)
end)

EXPCode =  {
    'kittgaming' 
    ,'Sub2Fer999' 
    ,'Enyu_is_Pro' 
    ,'Magicbus' 
    ,'JCWK'
	,'SUB2GAMERROBOT_RESET1'
	,'NOOB_REFUND'
    ,'Starcodeheo' 
    ,'Bluxxy' 
    ,'fudd10_v2'
    ,'SUB2GAMERROBOT_EXP1' 
    ,'Sub2NoobMaster123' 
    ,'Sub2Daigrock' 
    ,'Axiore' 
    ,'TantaiGaming' 
    ,'StrawHatMaine' 
    ,'Sub2OfficialNoobie' 
	,'Sub2UncleKizaru'
    ,'Fudd10'
    ,'Bignews'
    ,"TheGreatAce"
}

Main_Setting:AddToggle('Auto_Redeem_Code', {
    Text = 'Auto Redeem Code',
    Default = _G.Settings.Setting["Auto Redeem Code"],
    Tooltip = 'Auto Redeem Code In Level 1',
})

Toggles.Auto_Redeem_Code:OnChanged(function( Value )
	_G.Settings.Setting["Auto Redeem Code"] = Value
	SaveSettings()
	task.spawn(function()
		while wait(5) do
			pcall(function()
				local MyLevel = game.Players.LocalPlayer.Data.Level.Value
				if _G.Settings.Setting["Auto Redeem Code"] then
					if MyLevel >= 1 then
						function Redeem(Value)
							game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Value)
						end
						for i,v in pairs(EXPCode) do
							Redeem(v)
						end
						wait(3)
						_G.Settings.Setting["Auto Redeem Code"] = false
					end
				end
			end)
		end
	end)
end)

local Mastery = General_Setting:AddTab('Mastery')

Mastery:AddToggle('Auto_Farm_Fruit_Mastery',{
	Text = 'Auto Farm Fruit Mastery ',
    Default = _G.Settings.Mastery["Auto Farm Fruit Mastery"],
    Tooltip = 'Auto Farm Fruit Mastery',
})

Toggles.Auto_Farm_Fruit_Mastery:OnChanged(function( Value )
	_G.Settings.Mastery["Auto Farm Fruit Mastery"] = Value
	SaveSettings()
	function AutoFarmMasteryDevilFruit()
		if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Settings.Mastery["Auto Farm Fruit Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
					repeat wait()
						FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
					if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if FarmtoTarget then FarmtoTarget:Stop() end
						StartMagnet = true
						FastAttack = true
						PosMon = v.HumanoidRootPart.CFrame
						HealthMin = v.Humanoid.MaxHealth*_G.Settings.Setting["Mob Health (%)"]/100
						if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
							if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
								PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
								UseSkillMasteryDevilFruit = true
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
									DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
								elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
									DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
								end
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
									if _G.Settings.Setting["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end   
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
									if _G.Settings.Setting["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
									else
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if _G.Settings.Setting["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if _G.Settings.Setting["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end  
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
									if _G.Settings.Setting["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(4)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if _G.Settings.Setting["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if _G.Settings.Setting["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
									if _G.Settings.Setting["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if _G.Settings.Setting["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if _G.Settings.Setting["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end
									if _G.Settings.Setting["Skill V"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
										game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									end
								end
							end
						else
							UseSkillMasteryDevilFruit = false
							EquipWeapon(_G.Settings.Setting["Select Weapon"])
							toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						end
					end
				until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Mastery["Auto Farm Fruit Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
				StartMagnet = false
				FastAttack = false
			end
		end
	else
		StartMagnet = false
		FastAttack = false
		Modstween = toTarget(CFrameMon.Position,CFrameMon)
		if FirstSea and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		elseif FirstSea and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
		elseif FirstSea and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
		elseif FirstSea and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		elseif SecondSea and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		elseif SecondSea and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
			if Modstween then Modstween:Stop() end wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
		end 
	end
end
end)

spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if UseSkillMasteryDevilFruit and _G.Settings.Mastery["Auto Farm Fruit Mastery"] then
						if type(args[2]) == "vector" then 
							args[2] = PositionSkillMasteryDevilFruit
						else
							args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
						end
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)

spawn(function()
	while wait() do
		if _G.Settings.Mastery["Auto Farm Fruit Mastery"] then
			CheckQuest()
			AutoFarmMasteryDevilFruit()
		end
	end
end)

task.spawn(function()
	while wait() do
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectWeaponGun = v.Name
				end
			end
		end
	end
end)

spawn(function()
	while wait() do
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectToolWeaponGun = v.Name
				end
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectToolWeaponGun = v.Name
				end
			end
		end
	end
end)

Mastery:AddToggle('Auto_Farm_Gun_Mastery',{
	Text = 'Auto Farm Gun Mastery ',
    Default = _G.Settings.Mastery["Auto Farm Gun Mastery"],
    Tooltip = 'Auto Farm Gun Mastery',
})

Toggles.Auto_Farm_Gun_Mastery:OnChanged(function( Value )
	_G.Settings.Mastery["Auto Farm Gun Mastery"] = Value
	SaveSettings()
	function AutoFarmMasteryGun()
		if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Settings.Mastery["Auto Farm Gun Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
					repeat wait()
						FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
						if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if FarmtoTarget then FarmtoTarget:Stop() end
							StartMagnet = true
							FastAttack = true
							PosMon = v.HumanoidRootPart.CFrame
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
								game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
								game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
							end
							HealthMin = v.Humanoid.MaxHealth*_G.Settings.Setting["Mob Health (%)"]/100
							PositionSkillMasteryGun = v.HumanoidRootPart.Position
							if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								EquipWeapon(SelectWeaponGun)
								UseSkillMasteryGun = true
								-- v.HumanoidRootPart.CanCollide = false
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun):FindFirstChild("RemoteFunctionShoot") then
									Click()
									local args = {
										[1] = v.HumanoidRootPart.Position,
										[2] = v.HumanoidRootPart
									}
									game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
								end 
							else
								UseSkillMasteryGun = false
								Click()
								EquipWeapon(_G.Settings.Setting["Select Weapon"])
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
							end
						end
					until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Mastery["Auto Farm Gun Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
					UseSkillMasteryGun = false
					StartMagnet = false
					FastAttack = false
				end
			end
		else
			StartMagnet = false
			FastAttack = false
			Modstween = toTarget(CFrameMon)
			if FirstSea and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			elseif FirstSea and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
			elseif FirstSea and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
			elseif FirstSea and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			elseif SecondSea and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			elseif SecondSea and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
				if Modstween then Modstween:Stop() end wait(.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			end 
		end
	end
end)

spawn(function()
	while wait() do
		if _G.Settings.Mastery["Auto Farm Gun Mastery"] then
			CheckQuest()
			AutoFarmMasteryGun()
		end
	end
end)

Mastery:AddToggle('Skill_Z',{
	Text = 'Skill Z',
	Default = _G.Settings.Setting["Skill Z"],
	Tooltip = 'Skill Z',
})

Toggles.Skill_Z:OnChanged(function( Value )
	_G.Settings.Setting["Skill Z"] = Value
	SaveSettings()
end)

Mastery:AddToggle('Skill_X',{
	Text = 'Skill X',
	Default = _G.Settings.Setting["Skill X"],
	Tooltip = 'Skill X',
})

Toggles.Skill_X:OnChanged(function( Value )
	_G.Settings.Setting["Skill X"] = Value
	SaveSettings()
end)

Mastery:AddToggle('Skill_C',{
	Text = 'Skill C',
	Default = _G.Settings.Setting["Skill C"],
	Tooltip = 'Skill C',
})

Toggles.Skill_C:OnChanged(function( Value )
	_G.Settings.Setting["Skill C"] = Value
	SaveSettings()
end)

Mastery:AddToggle('Skill_V',{
	Text = 'Skill V',
	Default = _G.Settings.Setting["Skill V"],
	Tooltip = 'Skill V',
})

Toggles.Skill_V:OnChanged(function( Value )
	_G.Settings.Setting["Skill V"] = Value
	SaveSettings()
end)

Mastery:AddSlider('Mob_Health', {
    Text = 'Mob Health (%)',

    Default = _G.Settings.Setting["Mob Health (%)"],
    Min = 1,
    Max = 100,
    Rounding = 0,

    Compact = false,
})

Options.Mob_Health:OnChanged(function( Value )
	_G.Settings.Setting["Mob Health (%)"] = Value
	SaveSettings()
end)

local Raid_Tab = Tabs.Main_Tab:AddRightTabbox('')
local Raid = Raid_Tab:AddTab('Raid')

Raid:AddDropdown('Select_Raid', {
    Values = {"Flame", "Ice", "Sand", "Dark", "Light", "Magma", "Quake", "String", "Rumble", "Human: Buddha", "Bird: Phoenix", "Dough"},
    Default = _G.Settings.Raid["Select Raid"],
    Multi = false,

    Text = 'Select Raid',
    Tooltip = 'Select Raid Flame, Ice, Sand, Dark,...',
})

Options.Select_Raid:OnChanged(function( Value )
	_G.Settings.Raid["Select Raid"] = Value
end)

Raid:AddToggle('Auto_Raid', {
    Text = 'Auto Raid',
    Default = _G.Settings.Raid["Auto Raid"],
    Tooltip = 'Auto Buy Chip + Start Raid',
})

Toggles.Auto_Raid:OnChanged(function( Value )
	_G.Settings.Raid["Auto Raid"] = Value
	if Value == false then
		toTargetP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	SaveSettings()
	task.spawn(function()
		while wait() do
			if _G.Settings.Raid["Auto Raid"] and not _G.Settings.General["Starting"]  then 
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
						if SecondSea then
							fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						elseif ThirdSea then
							fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
						wait(17)
					elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then				
						pcall(function()
							repeat wait()
								if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
	
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame * CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame * CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame * CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame * CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame * CFrame.new(4,65,10))
									end
								end
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.Settings.Raid["Auto Raid"] and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
										repeat wait()
											v.Humanoid.Health = 0
											v:BreakJoints()
										until not _G.Settings.Raid["Auto Raid"] or v.Humanoid.Health <= 0 or not v.Parent
									end
								end
								if _G.Settings.Raid["Auto Awakened"] then	
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
								end
							until not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") or game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
							if _G.Settings.Raid["Auto Awakened"] then	
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
							end
						end)
					end           
				else
					if _G.Settings.Raid["Auto Awakened"] then	
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
					end
					local args = {
						[1] = "RaidsNpc",
						[2] = "Select",
						[3] = tostring(_G.Settings.Raid["Select Raid"])
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)
end)

Raid:AddToggle('Kill_Aura', {
    Text = 'Kill Aura',
    Default = _G.Settings.Raid["Kill Aura"],
    Tooltip = 'Kill Aura',
})

Toggles.Kill_Aura:OnChanged(function( Value )
	_G.Settings.Raid["Kill Aura"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			if _G.Settings.Raid["Kill Aura"] then
				for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						pcall(function()
							repeat wait()
								v.Humanoid.Health = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.HumanoidRootPart.Transparency = 1
							until not _G.Settings.Raid["Kill Aura"] or not _G.Settings.Raid["Auto Raid"] or not RaidSuperhuman or not v.Parent or v.Humanoid.Health <= 0
						end)
					end
				end
			end
		end
	end)
end)

Raid:AddToggle('Auto_Awakened', {
    Text = 'Auto Awakened',
    Default = _G.Settings.Raid["Auto Awakened"],
    Tooltip = 'Auto Awakened',
})

Toggles.Auto_Awakened:OnChanged(function( Value )
	_G.Settings.Raid["Auto Awakened"] = Value
	SaveSettings()
end)

Raid:AddToggle('Auto_Next_Place', {
    Text = 'Auto Next Island',
    Default = _G.Settings.Raid["Auto Next Place"],
    Tooltip = 'Auto Next Island',
})

Toggles.Auto_Next_Place:OnChanged(function( Value )
	_G.Settings.Raid["Auto Next Place"] = Value
	if Value == false then
		toTargetP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	SaveSettings()
	task.spawn(function()
		pcall(function()
			while wait() do
				if _G.Settings.Raid["Auto Next Place"] then
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
							toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame * CFrame.new(4,65,10))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
							toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame * CFrame.new(4,65,10))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
							toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame * CFrame.new(4,65,10))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
							toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame * CFrame.new(4,65,10))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							toTargetP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame * CFrame.new(4,65,10))
						end
					elseif SecondSea then
						toTargetP(CFrame.new(-6438.73535, 250.645355, -4501.50684))
					elseif ThirdSea then
						toTargetP(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
					end
				end
			end
		end)
	end)
end)

local LawRaid = Raid_Tab:AddTab('LawRaid')

if FirstSea then
	LawRaid:Label('Not Work')
end

if SecondSea then
	LawRaid:AddToggle('Auto_Buy_Chip_Law',{
		Text = 'Auto Buy Chip Law',
    	Default = _G.Settings.LawRaid["Auto Buy Chip Law"],
    	Tooltip = 'Auto Buy Chip Law',
	})

	Toggles.Auto_Buy_Chip_Law:OnChanged(function( Value )
		_G.Settings.LawRaid["Auto Buy Chip Law"] = Value
		SaveSettings()
		spawn(function()
			while wait() do
				if _G.Settings.LawRaid["Auto Buy Chip Law"] then
					pcall(function()
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
						
						else
							local args = {
								[1] = "BlackbeardReward",
								[2] = "Microchip",
								[3] = "2"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
					end)
				end
			end
		end)
	end)

	LawRaid:AddToggle('Auto_Start_Law',{
		Text = 'Auto Start Law',
    	Default = _G.Settings.LawRaid["Auto Start Law"],
    	Tooltip = 'Auto Start Law',
	})

	Toggles.Auto_Start_Law:OnChanged(function( Value )
		_G.Settings.LawRaid["Auto Start Law"] = Value
		SaveSettings()
		spawn(function()
			while wait() do
				if _G.Settings.LawRaid["Auto Start Law"] then
					pcall(function()
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
						end
					end)
				end
			end
		end)
	end)

	LawRaid:AddToggle('Auto_Kill_Law',{
		Text = 'Auto Kill Law',
    	Default = _G.Settings.LawRaid["Auto Kill Law"],
    	Tooltip = 'Auto Kill Law',
	})

	Toggles.Auto_Kill_Law:OnChanged(function( Value )
		_G.Settings.LawRaid["Auto Kill Law"] = Value
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.LawRaid["Auto Kill Law"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == ("Order [Lv. 1250] [Raid Boss]" or v.Name == "Order [Lv. 1250] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										StartMagnet = true
										FastAttack = true
										if _G.Settings.Setting["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Setting["Select Weapon"])
										end
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
									until _G.Settings.LawRaid["Auto Kill Law"] == false or v.Humanoid.Health <= 0
									StartMagnet = false
									FastAttack = false
								end
							end
						else
							toTarget(CFrame.new(-6352.37744140625, 17.029876708984375, -4977.16015625))
						end
					end
				end)
			end
		end)
	end)
end

if ThirdSea then
	LawRaid:AddLabel('Not Work')
end

local Melee_Item = Tabs.Main_Tab:AddLeftTabbox('')
local Melee = Melee_Item:AddTab('Melee')

Melee:AddToggle('Auto_Superhuman', {
    Text = 'Auto Superhuman',
    Default = _G.Settings.Melee["Auto Superhuman"],
    Tooltip = 'Auto And Buy Superhuman',
})

Toggles.Auto_Superhuman:OnChanged(function( Value )
	_G.Settings.Melee["Auto Superhuman"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Melee["Auto Superhuman"] then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
												local args = {
													[1] = "BuyBlackLeg"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
										end
									end
								end
							end
						end

						_G.Settings.Setting["Select Weapon"] = GetFightingStyle("Melee")

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
							local args = {
								[1] = "BuyBlackLeg"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
							local args = {
								[1] = "BuyElectro"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
							local args = {
								[1] = "BuyElectro"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400  then
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if _G.Settings.Melee["Auto Superhuman"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
								if game.Players.LocalPlayer.Data.Level.Value > 1100 then
									_G.Settings.Raid["Select Raid"] = "Flame"
									_G.Settings.Raid["Auto Raid"] = true
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = false end
								end
							else
								_G.Settings.Raid["Auto Raid"] = false
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								_G.Settings.Raid["Auto Raid"] = false
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400  then
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if _G.Settings.Melee["Auto Superhuman"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
								if game.Players.LocalPlayer.Data.Level.Value > 1100 then
									_G.Settings.Raid["Select Raid"] = "Flame"
									_G.Settings.Raid["Auto Raid"] = true
									if _G.Settings.General["Starting"] then _G.Settings.Main["Auto Farm Level"] = false end
								end
							else
								_G.Settings.Raid["Auto Raid"] = false
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								_G.Settings.Raid["Auto Raid"] = false
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
							end
						end

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end 
					end
				end
			end)
		end
	end)
end)

Melee:AddToggle('Auto_Death_Step', {
    Text = 'Auto Death Step',
    Default = _G.Settings.Melee["Auto Death Step"],
    Tooltip = 'Auto And Buy Death Step',
})

Toggles.Auto_Death_Step:OnChanged(function( Value )
	_G.Settings.Melee["Auto Death Step"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Melee["Auto Death Step"] and SecondSea then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 100 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 100 then   
						if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
							toTarget(CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559))
							if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then 
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then    
										repeat wait()
											if game.Workspace.Enemies:FindFirstChild(v.Name) then
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
													if Farmtween then Farmtween:Stop() end
													FastAttack = true
													if _G.Settings.Setting["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Setting["Select Weapon"])
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end
												end
											end
										until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Melee["Auto Death Step"] == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
										FastAttack = false
									end
								end
							end
						else
							if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
									EquipWeapon("Library Key")
									repeat wait() toTarget(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
										wait(1.2)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
										wait(0.5)
									end
								end
							end
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
					end
				end
			end)
		end
	end)
end)

Melee:AddToggle('Auto_Sharkman_Karate', {
    Text = 'Auto Sharkman Karate',
    Default = _G.Settings.Melee["Auto Sharkman Karate"],
    Tooltip = 'Auto And Buy Sharkman Karate',
})

Toggles.Auto_Sharkman_Karate:OnChanged(function( Value )
	_G.Settings.Melee["Auto Sharkman Karate"] = Value
	SaveSettings()
	if _G.Settings.Melee["Auto Sharkman Karate"] then
		Com("F_","BuySharkmanKarate")
	end
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Melee["Auto Sharkman Karate"] and SecondSea then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 100 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 100 then   
						if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
							toTarget(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
							if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then 	
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then    
										repeat wait()
											if game.Workspace.Enemies:FindFirstChild(v.Name) then
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
													if Farmtween then Farmtween:Stop() end
													FastAttack = true
													if _G.Settings.Setting["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Setting["Select Weapon"])
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end
												end
											end
										until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Melee["Auto Sharkman Karate"] == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
										FastAttack = false
									end
								end
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						end
					end
				end
			end)
		end
	end)
end)

Melee:AddToggle('Auto_Electric_Claw', {
    Text = 'Auto Electric Claw',      	
    Default = _G.Settings.Melee["Auto Electric Claw"],
    Tooltip = 'Auto And Buy Electric Claw',
})

Toggles.Auto_Electric_Claw:OnChanged(function( Value )
	_G.Settings.Melee["Auto Electric Claw"] = Value
	SaveSettings()
	if _G.Settings.Melee["Auto Electric Claw"] then
		Com("F_","BuyElectro")
	end
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Melee["Auto Electric Claw"] then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value < 400 then
							_G.Settings.Setting["Select Weapon"] = "Electro"
						end  
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
							_G.Settings.Setting["Select Weapon"] = "Electro"
						end  
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					end
				end
			end)
		end
	end)
end)

Melee:AddToggle('Auto_Dragon_Talon', {
    Text = 'Auto Dragon Talon',      	
    Default = _G.Settings.Melee["Auto Dragon Talon"],
    Tooltip = 'Auto And Buy Dragon Talon',
})

Toggles.Auto_Dragon_Talon:OnChanged(function( Value )
	_G.Settings.Melee["Auto Dragon Talon"] = Value
	SaveSettings()
	if _G.Settings.Melee["Auto Dragon Talon"] then
		Com("F_","BlackbeardReward","DragonClaw","2")
	end
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Melee["Auto Dragon Talon"] then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Settings.Setting["Select Weapon"] = "Dragon Claw"
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Settings.Setting["Select Weapon"] = "Dragon Claw"
						end
	
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Settings.Setting["Select Weapon"] = "Dragon Claw"
							if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);
	
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
								local string_1 = "BuyDragonTalon";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end 
						end
	
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Settings.Setting["Select Weapon"] = "Dragon Claw"
							if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);
	
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
								local string_1 = "BuyDragonTalon";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end 
						end
					end
				end
			end)
		end
	end)
end)

local SupComplete = false
local EClawComplete = false
local TalComplete = false
local SharkComplete = false
local DeathComplete = false
local GodComplete = false

function GetAllMeleeFarm()
	if SupComplete == false then
		local args = {
			[1] = "BuySuperhuman"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		if CheckMasteryWeapon("Superhuman",400) == "true UpTo" then
			SupComplete = true
		end
	end
	wait(.5)
	if EClawComplete == false then
		local string_1 = "BuyElectricClaw";
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1);

		if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" then
			EClawComplete = true
		end
	end
	wait(.5)
	if TalComplete == false then
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")

		if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" then
			TalComplete = true
		end
	end
	wait(.5)
	if SharkComplete == false then
		local args = {
			[1] = "BuySharkmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" then
			SharkComplete = true
		end
	end
	wait(.5)
	if DeathComplete == false then
		local args = {
			[1] = "BuyDeathStep"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		if CheckMasteryWeapon("Death Step",400) == "true UpTo" then
			DeathComplete = true
		end
	end
	if GodComplete == false then
		local args = {
			[1] = "BuyGodhuman"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		if CheckMasteryWeapon("Godhuman",350) == "true UpTo" then
			GodComplete = true
		end
	end
end

Melee:AddToggle('Auto_God_Human', {
    Text = 'Auto God Human',      	
    Default = _G.Settings.Melee["Auto God Human"],
    Tooltip = 'Auto And Buy God Human',
})

Toggles.Auto_God_Human:OnChanged(function( Value )
	_G.Settings.Melee["Auto God Human"] = Value
	BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
	if BuyGodhuman then
		if BuyGodhuman ~= 1 then
			GetAllMeleeFarm()
		end
	end
	SaveSettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Melee["Auto God Human"] then
					BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
					if BuyGodhuman then
						if BuyGodhuman == 1 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
							_G.Settings.Melee["Auto God Human"] = false
						end
					end
					if not HasTalon then
						BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
	
						if BuyDragonTalon then
							if BuyDragonTalon == 1 then
								HasTalon = true
							end
						end
					end
					if not HasSuperhuman then
						BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
	
						if BuySuperhuman then
							if BuySuperhuman == 1 then
								HasSuperhuman = true
							end
						end
					end
					if not HasKarate then
						BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
	
						if BuySharkmanKarate then
							if BuySharkmanKarate == 1 then
								HasKarate = true
							end
						end
					end
					if not HasDeathStep then
						BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "BuyDeathStep",true))
	
						if BuyDeathStep then
							if BuyDeathStep == 1 then
								HasDeathStep = true
							end
						end
					end
					if not HasElectricClaw then
						BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
						if BuyElectricClaw then
							if BuyElectricClaw == 1 then
								HasElectricClaw = true
							end
						end
					end
	
					if not HasSuperhuman then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
												if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
													local args = {
														[1] = "BuyElectro"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
											end
										end
									end
								end
							end
							_G.Settings.Setting["Select Weapon"] = GetFightingStyle("Melee")
	
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								local args = {
									[1] = "BuyElectro"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
								local args = {
									[1] = "BuyBlackLeg"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
								local args = {
									[1] = "BuyBlackLeg"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								if _G.Settings.Melee["Auto God Human"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = false end
									end
								else
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
									local args = {
										[1] = "BlackbeardReward",
										[2] = "DragonClaw",
										[3] = "2"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								if _G.Settings.Melee["Auto God Human"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = false end
									end
								else
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
									local args = {
										[1] = "BlackbeardReward",
										[2] = "DragonClaw",
										[3] = "2"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								end
							end
	
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								local args = {
									[1] = "BuySuperhuman"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								local args = {
									[1] = "BuySuperhuman"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end 
						end
					end
				elseif not HasKarate then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
								if SecondSea then
									KillSharkMan = true
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = false end
								else
									KillSharkMan = false
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								end
							elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
								KillSharkMan = false
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
								KillSharkMan = false
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end

						if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
								if SecondSea then
									KillSharkMan = true
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = false end
								else
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
									KillSharkMan = false
								end
							elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
								KillSharkMan = false
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
								KillSharkMan = false
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
						_G.Settings.Setting["Select Weapon"] = GetFightingStyle("Melee")
					end
				elseif not HasDeathStep then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

						end  
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

						end  
						_G.Settings.Setting["Select Weapon"] = GetFightingStyle("Melee")
					end
				elseif not HasTalon then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						_G.Settings.Setting["Select Weapon"] = GetFightingStyle("Melee")

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);

								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);
							end 
						end

						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);

								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);
							end 
						end
					end
				elseif not HasElectricClaw then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						_G.Settings.Setting["Select Weapon"] = GetFightingStyle("Melee")
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end

						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					end
				end
				if BuyGodhuman ~= 1 and HasSuperhuman and HasTalon and HasKarate and HasDeathStep and HasElectricClaw then
					if HasSuperhuman and not SupComplete then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Superhuman",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SupComplete == false then
							SupComplete = true
						end
					elseif HasTalon and not TalComplete then
						local args = {
							[1] = "BuyDragonTalon"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and TalComplete == false then
							TalComplete = true
						end
					elseif HasKarate and not SharkComplete then
						local args = {
							[1] = "BuySharkmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SharkComplete == false then
							SharkComplete = true
						end
					elseif HasDeathStep and not DeathComplete then
						local args = {
							[1] = "BuyDeathStep"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Death Step",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and DeathComplete == false then
							DeathComplete = true
						end
					elseif HasElectricClaw and not EClawComplete then
						local args = {
							[1] = "BuyElectricClaw"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and EClawComplete == false then
							EClawComplete = true
						end
					end
				end

				if BuyGodhuman ~= 1 and SupComplete and EClawComplete and TalComplete and SharkComplete and DeathComplete and (not game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or not game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
					if GetMaterial("Fish Tail") >= 20 then
						if GetMaterial("Magma Ore") >= 20 then
							if GetMaterial("Dragon Scale") >= 10 then
								if GetMaterial("Mystic Droplet") >= 10 then
									Com("F_","BuyGodhuman")
									BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))

									if BuyGodhuman then
										if BuyGodhuman == 1 then
											_G.Settings.Melee["Auto God Human"] = false
										end
									end
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = true end
								elseif not SecondSea then
									Com("F_","TravelDressrosa")
								elseif SecondSea then
									if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = false end
									CheckMaterial("Mystic Droplet")
									if CustomFindFirstChild(MaterialMob) then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if _G.Settings.Melee["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
												repeat wait()
													FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
													if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														if FarmtoTarget then FarmtoTarget:Stop() end
														FastAttack = true
														EquipWeapon(_G.Settings.Setting["Select Weapon"])
														spawn(function()
															for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																if v2.Name == v.Name then
																	spawn(function()
																		if InMyNetWork(v2.HumanoidRootPart) then
																			v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																			v2.Humanoid.JumpPower = 0
																			v2.Humanoid.WalkSpeed = 0
																			v2.HumanoidRootPart.CanCollide = false
																			v2.Humanoid:ChangeState(11)
																			v2.HumanoidRootPart.Size = Vector3.new(60,60,60)
																			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
																		end
																	end)
																end
															end
														end)
														if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
															game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
															game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
														end
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
													end
												until not CustomFindFirstChild(MaterialMob) or not _G.Settings.Melee["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
												FastAttack = false
											end
										end
									else
										FastAttack = false
										Modstween = toTarget(CFrameMon.Position,CFrameMon)
										if FirstSea and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
										elseif FirstSea and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
										elseif FirstSea and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
										elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Modstween then Modstween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
										end 
									end
								end
							elseif not ThirdSea then
								Com("F_","TravelZou")
							elseif ThirdSea then
								if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = false end
								CheckMaterial("Dragon Scale")
								if CustomFindFirstChild(MaterialMob) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if _G.Settings.Melee["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
												FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
												if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if FarmtoTarget then FarmtoTarget:Stop() end
													FastAttack = true
													EquipWeapon(_G.Settings.Setting["Select Weapon"])
													spawn(function()
														for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
															if v2.Name == v.Name then
																spawn(function()
																	if InMyNetWork(v2.HumanoidRootPart) then
																		v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																		v2.Humanoid.JumpPower = 0
																		v2.Humanoid.WalkSpeed = 0
																		v2.HumanoidRootPart.CanCollide = false
																		v2.Humanoid:ChangeState(11)
																		v2.HumanoidRootPart.Size = Vector3.new(60,60,60)
																		sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
																	end
																end)
															end
														end
													end)
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
												end
											until not CustomFindFirstChild(MaterialMob) or not _G.Settings.Melee["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
											FastAttack = false
										end
									end
								else
									FastAttack = false
									Modstween = toTarget(CFrameMon.Position,CFrameMon)
									if FirstSea and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
									elseif FirstSea and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
									elseif FirstSea and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
									elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if Modstween then Modstween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
									end 
								end
							end
						elseif not FirstSea then
							Com("F_","TravelMain")
						elseif FirstSea then
							if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = false end
							CheckMaterial("Magma Ore")
							if CustomFindFirstChild(MaterialMob) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if _G.Settings.Melee["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if FarmtoTarget then FarmtoTarget:Stop() end
												FastAttack = true
												EquipWeapon(_G.Settings.Setting["Select Weapon"])
												spawn(function()
													for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
														if v2.Name == v.Name then
															spawn(function()
																if InMyNetWork(v2.HumanoidRootPart) then
																	v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																	v2.Humanoid.JumpPower = 0
																	v2.Humanoid.WalkSpeed = 0
																	v2.HumanoidRootPart.CanCollide = false
																	v2.Humanoid:ChangeState(11)
																	v2.HumanoidRootPart.Size = Vector3.new(60,60,60)
																	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
																end
															end)
														end
													end
												end)
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
											end
										until not CustomFindFirstChild(MaterialMob) or not _G.Settings.Melee["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
										FastAttack = false
									end
								end
							else
								FastAttack = false
								Modstween = toTarget(CFrameMon.Position,CFrameMon)
								if FirstSea and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
								elseif FirstSea and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
								elseif FirstSea and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
								elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if Modstween then Modstween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
								end 
							end
						end
					elseif not FirstSea then
						Com("F_","TravelMain")
					elseif FirstSea then
						if _G.Settings.General["Starting"] then _G.Settings.General["Starting"] = false end
						CheckMaterial("Fish Tail")
						if CustomFindFirstChild(MaterialMob) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if _G.Settings.Melee["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
										if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											FastAttack = true
											EquipWeapon(_G.Settings.Setting["Select Weapon"])
											spawn(function()
												for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v2.Name == v.Name then
														spawn(function()
															if InMyNetWork(v2.HumanoidRootPart) then
																v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																v2.Humanoid.JumpPower = 0
																v2.Humanoid.WalkSpeed = 0
																v2.HumanoidRootPart.CanCollide = false
																v2.Humanoid:ChangeState(11)
																v2.HumanoidRootPart.Size = Vector3.new(60,60,60)
																sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
															end
														end)
													end
												end
											end)
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
										end
									until not CustomFindFirstChild(MaterialMob) or not _G.Settings.Melee["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
									FastAttack = false
								end
							end
						else
							FastAttack = false
							Modstween = toTarget(CFrameMon.Position,CFrameMon)
							if FirstSea and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Modstween then Modstween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
							elseif FirstSea and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Modstween then Modstween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
							elseif FirstSea and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
								if Modstween then Modstween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
							elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Modstween then Modstween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
							end 
						end
					end
				end
			end)
		end
	end)
end)

local Sword = Melee_Item:AddTab('Sword')

if FirstSea then

	Sword:AddToggle('Auto_Saber',{
		Text = 'Saber',
		Default = _G.Settings.Item["Saber"],
		Tooltip = 'Auto Saber',
	})

	Toggles.Auto_Saber:OnChanged(function( Value )
		_G.Settings.Item["Saber"] = Value
		if Value == false then
			wait()
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait()
		end
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Item["Saber"] and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
						if _G.Settings.General["Starting"] then
							_G.Settings.General["Starting"] = false
						end
						if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
							if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
								if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
									toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
									wait(1) 
								else
									toTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
								end
							else
								if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
									if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
										EquipWeapon("Torch")
										toTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
									else
										toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))                 
									end
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
										wait(0.5)
										EquipWeapon("Cup")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
										wait(0)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
									else
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
										elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
											if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
												toTarget(CFrame.new(-2864.77685546875, 7.562279224395752, 5398.40185546875))
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == "Mob Leader [Lv. 120] [Boss]" then
														repeat wait()
															StartMagnet = true
															FastAttack = true
															if _G.Settings.Setting["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Setting["Select Weapon"])
															end
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
															PosMon = v.HumanoidRootPart.CFrame
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
														until v.Humanoid.Health <= 0 or _G.Settings.Item["Saber"] == false
													end
												end
											end
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
											wait(0.5)
											EquipWeapon("Relic")
											wait(0.5)
											toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
										end
									end
								end
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
								toTarget(CFrame.new(-1484.5423583984375, 23.852006912231445, -87.94239044189453))
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Saber Expert [Lv. 200] [Boss]" then
										repeat wait()
											StartMagnet = true
											FastAttack = true
											if _G.Settings.Setting["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Setting["Select Weapon"])
											end
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
											PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
										until v.Humanoid.Health <= 0 or _G.Settings.Item["Saber"] == false
										if v.Humanoid.Health <= 0 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
										end
										_G.Settings.General["Starting"] = true
									end
								end
							end
						end
					end
				end)
			end
		end)
	end)

	Sword:AddToggle('Auto_Pole',{
		Text = 'Pole',
		Default = _G.Settings.Item["Pole"],
		Tooltip = 'Auto Pole',
	})

	Toggles.Auto_Pole:OnChanged(function( Value )
		_G.Settings.Item["Pole"] = Value
		if Value == false then
			wait()
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait()
		end
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Item["Pole"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == ("Thunder God [Lv. 575] [Boss]" or v.Name == "Thunder God [Lv. 575] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										StartMagnet = true
										FastAttack = true
										if _G.Settings.Setting["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Setting["Select Weapon"])
										end
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
									until _G.Settings.Item["Pole"] == false or v.Humanoid.Health <= 0
									StartMagnet = false
									FastAttack = false
								end
							end
						else
							toTarget(CFrame.new(-7816.7578125, 5606.8154296875, -2396.820556640625))
						end
					end
				end)
			end
		end)
	end)
end

if SecondSea then

	Sword:AddToggle('Auto_Rengoku',{
		Text = 'Rengoku',
		Default = _G.Settings.Item["Rengoku"],
		Tooltip = 'Auto Rengoku',
	})

	Toggles.Auto_Rengoku:OnChanged(function( Value )
		_G.Settings.Item["Rengoku"] = Value
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Item["Rengoku"] then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
							EquipWeapon("Hidden Key")
							toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
						elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
									repeat wait()
										StartMagnet = true
										FastAttack = true
										if _G.Settings.Setting["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Setting["Select Weapon"])
										end
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not _G.Settings.Item["Rengoku"] or not v.Parent or v.Humanoid.Health <= 0
									StartMagnet = false
									FastAttack = false
								end
							end
						else
							StartMagnet = false
							FastAttack = false
							toTarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
						end
					end
				end)
			end
		end)
	end)

	Sword:AddToggle('Auto_Legendary_Sword',{
		Text = 'Legendary Sword',
		Default = _G.Settings.Item["Legendary Sword"],
		Tooltip = 'Auto Legendary Sword',
	})

	Toggles.Auto_Legendary_Sword:OnChanged(function( Value )
		_G.Settings.Item["Legendary Sword"] = Value
		SaveSettings()
		spawn(function()
			while wait() do
				if _G.Settings.Item["Legendary Sword"] then
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end)

	Sword:AddToggle('Auto_True_Triple_Katana',{
		Text = 'True Triple Katana',
		Default = _G.Settings.Item["True Triple Katana"],
		Tooltip = 'Auto True Triple Katana',
	})

	Toggles.Auto_True_Triple_Katana:OnChanged(function( Value )
		_G.Settings.Item["True Triple Katana"] = Value
		if Value == false then
			wait()
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait()
		end
		SaveSettings()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Item["True Triple Katana"] then
						local string_1 = "MysteriousMan";
						local string_2 = "2";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1, string_2);  
					end
				end)
			end
		end)
	end)
end

if ThirdSea then
end

local Material = Melee_Item:AddTab('Material')

Material:AddDropdown('Select_Material', {
    Values = AllMaterial,
    Default = _G.Settings.General["Select Material"],
    Multi = false,

    Text = 'Select Material',
    Tooltip = 'Select Material',
})

Options.Select_Material:OnChanged(function( Value )
	_G.Settings.General["Select Material"] = Value
	_G.Select_Weapon = Value
end)

Material:AddToggle('Auto_Material', {
    Text = 'Auto Material',
    Default = _G.Settings.General["Auto Material"],
    Tooltip = 'Auto Farm Material',
})

Toggles.Auto_Material:OnChanged(function( Value )
	_G.Settings.General["Auto Material"] = Value
	SaveSettings()
	spawn(function()
		while wait() do 
			if _G.Settings.General["Auto Material"] then    
				xpcall(function()
					if (_G.Settings.General["Select Material"] ~= "") then 
						CheckMaterial(_G.Settings.General["Select Material"]);
						if CustomFindFirstChild(MaterialMob) then
							for v0,v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if (_G.Settings.General["Auto Material"] and table.find(MaterialMob,v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health > 0)) then 
									repeat wait();
										FarmtoTarget = toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0));
										if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then 
											if FarmtoTarget then FarmtoTarget:Stop(); end 
											FastAttack = true;
											EquipWeapon(_G.Settings.Setting["Select Weapon"]);
											spawn(function()for v4,v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
													if (v5.Name == v1.Name) then 
														spawn(function()
															if InMyNetWork(v5.HumanoidRootPart) then 
																v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
																v5.Humanoid.JumpPower = 0;
																v5.Humanoid.WalkSpeed = 0;
																v5.HumanoidRootPart.CanCollide = false;
																v5.Humanoid:ChangeState(14);
																v5.Humanoid:ChangeState(11);
																v5.HumanoidRootPart.Size=Vector3.new(60,60,60);
															end 
														end);
													end 
												end 
											end);
											if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then 
												game:service("VirtualInputManager"):SendKeyEvent(true,"V",false,game);
												game:service("VirtualInputManager"):SendKeyEvent(false,"V",false,game);
											end 
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0);
										end 
									until not CustomFindFirstChild(MaterialMob) or not _G.Settings.General["Auto Material"] or (v1.Humanoid.Health <= 0) or not v1.Parent FastAttack = false;
								end 
							end 
						else 
							FastAttack = false;
							Modstween = toTarget(CFrameMon);
							if (FirstSea and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then 
								if Modstween then Modstween:Stop(); end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875));
							elseif (FirstSea and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then 
								if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625,6.6796875, -1926.7841796875));
							elseif (FirstSea and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then 
								if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -4607.8227539063,872.54248046875, -1667.5568847656));
							elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then 
								if Modstween then Modstween:Stop();end 
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
							end 
						end 
					end
				end,function( Value )
					print("Auto Farm Material Error : "..Value)
				end)
			else
				break;
			end
		end
	end)
end)

local Other = Tabs.Main_Tab:AddLeftTabbox('')
local Others = Other:AddTab('Other')

Others:AddToggle('Auto_Bartilo_Quest', {
	Text = 'Auto Bartilo Quest',
	Default = _G.Settings.General["Bartilo Quest"],
	Tooltip = 'Auto Bartilo Quest',
})

Toggles.Auto_Bartilo_Quest:OnChanged(function( Value )
	_G.Settings.General["Bartilo Quest"] = Value
	if Value == false then
		wait()
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		wait()
	end
	SaveSettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.General["Bartilo Quest"] then
					if game.Players.LocalPlayer.Data.Level.value >= 850 then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
							if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Swan Pirate [Lv. 775]" then
											pcall(function()
												repeat wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
														Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
														if Farmtween then Farmtween:Stop() end
														FastAttack = true
														StartMagnet = true
														if _G.Settings.Setting["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Setting["Select Weapon"])
														end
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
														PosMon = v.HumanoidRootPart.CFrame
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
													end
												until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.General["Bartilo Quest"] == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
												StartMagnet = false
												FastAttack = false
											end)
										end
									end
								else
									Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
									if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then
											Questtween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
									end
								end
							else
								Bartilotween = toTarget(CFrame.new(-461.5462646484375, 72.93128967285156, 300.9637451171875).Position,CFrame.new(-461.5462646484375, 72.93128967285156, 300.9637451171875))
								if ( CFrame.new(-461.5462646484375, 72.93128967285156, 300.9637451171875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Bartilotween then
										Bartilotween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-461.5462646484375, 72.93128967285156, 300.9637451171875)
									local args = {
										[1] = "StartQuest",
										[2] = "BartiloQuest",
										[3] = 1
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
						if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Jeremy [Lv. 850] [Boss]" then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then Farmtween:Stop() end
											FastAttack = true
											if _G.Settings.Setting["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Setting["Select Weapon"])
											end
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
											PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
										end
									until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.General["Bartilo Quest"] == false
									FastAttack = false
								end
							end
						else
							Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
							if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if Bartilotween then
									Bartilotween:Stop()
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
							end
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
						if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
							Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
						elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if Bartilotween then
								Bartilotween:Stop()
							end
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
							wait(.5)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
						end
					end
				end
			end)
		end
	end)
end)

Others:AddToggle('Auto_Dark_Coat',{
	Text = 'Dark Coat',
	Default = _G.Settings.Item["Dark Coat"],
	Tooltip = 'Auto Dark Coat',
})

Toggles.Auto_Dark_Coat:OnChanged(function( Value )
	_G.Settings.Item["Dark Coat"] = Value
	SaveSettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Item["Dark Coat"] then
					if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Darkbeard [Lv. 1000] [Raid Boss]" or v.Name == "Darkbeard [Lv. 1000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									StartMagnet = true
									FastAttack = true
									if _G.Settings.Setting["Auto Haki"] then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Setting["Select Weapon"]) then
										wait()
										EquipWeapon(_G.Settings.Setting["Select Weapon"])
									end
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
									PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
								until _G.Settings.Item["Dark Coat"] == false or v.Humanoid.Health <= 0
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
end)

Others:AddToggle('Auto_Evo_Race', {
	Text = 'Evo Race',
	Default = _G.Settings.General["Evo Race"],
	Tooltip = 'Auto Evo Race',
})

Toggles.Auto_Evo_Race:OnChanged(function( Value )
	_G.Settings.General["Evo Race"] = Value
	SaveSettings()
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.General["Evo Race"] then
					if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
					end
				end
			end)
		end
	end)
end)

local Shop = Tabs.Shop_Tab:AddLeftTabbox('')
local DevilFruit = Shop:AddTab('Fruit')

local l__Remotes__11 = game.ReplicatedStorage:WaitForChild("Remotes");
u45 = l__Remotes__11.CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {}
for i,v in next,u45 do
    table.insert(Table_DevilFruitSniper,v.Name)
end

if _G.Settings.DevilFruit["Select Devil Fruit"] == nil then
    _G.Settings.DevilFruit["Select Devil Fruit"] = ""
end

DevilFruit:AddDropdown('Select_Devil_Fruit', {
    Values = Table_DevilFruitSniper,
    Default = _G.Settings.DevilFruit["Select Devil Fruit"],
    Multi = false,

    Text = 'Select Devil Fruit',
    Tooltip = 'Select Devil Fruit',
})

Options.Select_Devil_Fruit:OnChanged(function( Value )
	_G.Settings.DevilFruit["Select Devil Fruit"] = Value
end)

DevilFruit:AddToggle('Auto_Buy_Devil_Fruit',{
	Text = 'Auto Buy Devil Fruit',
    Default = _G.Settings.DevilFruit["Auto Buy Devil Fruit"],
    Tooltip = 'Auto Buy Devil Fruit',
})

Toggles.Auto_Buy_Devil_Fruit:OnChanged(function( Value )
	_G.Settings.DevilFruit["Auto Buy Devil Fruit"] = Value
	SaveSettings()
	spawn(function()
		while wait() do
			if _G.Settings.DevilFruit["Auto Buy Devil Fruit"] then
				pcall(function()
					local string_1 = "PurchaseRawFruit";
					local string_2 = _G.Settings.DevilFruit["Select Devil Fruit"];
					local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
					Target:InvokeServer(string_1, string_2);
				end)
			end                              
		end
	end)
end)

DevilFruit:AddToggle('Auto_Buy_Fruit_Cousin',{
	Text = 'Auto Buy Fruit Cousin',
    Default = _G.Settings.DevilFruit["Auto Buy Fruit Cousin"],
    Tooltip = 'Auto Random Fruit',
})

Toggles.Auto_Buy_Fruit_Cousin:OnChanged(function( Value )
	_G.Settings.DevilFruit["Auto Buy Fruit Cousin"] = Value
	SaveSettings()
	task.spawn(function()
		while wait(1) do
			if _G.Settings.DevilFruit["Auto Buy Fruit Cousin"] then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
				wait(60)
			end
		end
	end)
end)

DevilFruit:AddToggle('Auto_Bring_Fruit',{
	Text = 'Auto Bring Fruit',
    Default = _G.Settings.DevilFruit["Auto Auto Bring Fruit"],
    Tooltip = 'Auto Bring Fruit',
})

Toggles.Auto_Bring_Fruit:OnChanged(function( Value )
	_G.Settings.DevilFruit["Auto Bring Fruit"] = Value
	SaveSettings()
	spawn(function()
		while wait(.2) do
			pcall(function()
				if _G.Settings.DevilFruit["Auto Bring Fruit"] then
					for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
						if v:IsA ("Tool") and (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 13000 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
							v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						end
					end
				end
			end)
		end
	end)
end)

function RemoveSpaces(str)
    return str:gsub(" Fruit", "")
end

DevilFruit:AddToggle('Auto_Store_Fruit',{
	Text = 'Auto Store Fruit',
    Default = _G.Settings.DevilFruit["Auto Store Fruit"],
    Tooltip = 'Auto Store Fruit',
})

Toggles.Auto_Store_Fruit:OnChanged(function( Value )
	_G.Settings.DevilFruit["Auto Store Fruit"] = Value
	SaveSettings()
	spawn(function()
		while wait() do
			if _G.Settings.DevilFruit["Auto Store Fruit"] then wait()
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
						if not Have then
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
end)

local RaceStat1 = Tabs.Shop_Tab:AddLeftTabbox('')
local RaceStat = RaceStat1:AddTab('Race-Stat')

RaceStat:AddButton('Random Race f3,000', function()
	local args = {
		[1] = "BlackbeardReward",
		[2] = "Reroll",
		[3] = "2"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

RaceStat:AddButton('Reset Stat f2,500', function()
	local args = {
		[1] = "BlackbeardReward",
		[2] = "Refund",
		[3] = "2"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

local Race = RaceStat1:AddTab('Race')

Race:AddButton('Race Ghoul', function()
	local args = {
		[1] = "Ectoplasm",
		[2] = "BuyCheck",
		[3] = 4
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
		[1] = "Ectoplasm",
		[2] = "Change",
		[3] = 4
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Race:AddButton('Race Cyborg', function()
	local args = {
		[1] = "CyborgTrainer",
		[2] = "Buy"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

local SwordShop1 = Tabs.Shop_Tab:AddLeftTabbox('')
local SwordShop = SwordShop1:AddTab('Sword-Gun')

SwordShop:AddButton('Cutlass $1,000',function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

local MeleeShop = Tabs.Shop_Tab:AddRightTabbox('')
local MeleeTay = MeleeShop:AddTab('Fighting Style')

MeleeTay:AddButton('Buy Black Leg $150,000',function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)

MeleeTay:AddButton('Buy Electro $500,000',function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)

MeleeTay:AddButton('Buy Fishman Karate $750,000',function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)

local World = Tabs.Teleport_Tab:AddRightTabbox('')
local TeleportWorld = World:AddTab('TeleportWorld')

TeleportWorld:AddButton('Teleport to First Sea', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)

TeleportWorld:AddButton('Teleport to Second Sea', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

TeleportWorld:AddButton('Teleport to Third Sea', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)

local Teleport = Tabs.Teleport_Tab:AddLeftTabbox('')
local Island = Teleport:AddTab('Island')

-- [Check Place Teleports]
TeleportTable = {}

if FirstSea then
	TeleportTable = {"Marine1","Marine2","Midle Town","Jungle","Pirate Village","Desert","Frozen Village","Colosseum","Prison","Mob Leader","Magma Village","UnderWater Gate","UnderWater City","Fountain City","Sky1","Sky2","Sky3"}
elseif SecondSea then
	TeleportTable = {"Mansion","Kingdom Of Rose","Cafe","Sunflower Field","Jeramy Mountain","Colossuem","Factory","The Bridge","Green Bit","Graveyard","Dark Area","Snow Mountain","Hot Island","Cold Island","Ice Castle","Usopp's Island","Forgotten Island","Ghost Ship","Raid Low","Dog"}
elseif ThirdSea then
	TeleportTable = {"Port Town","Hydra Island","Gaint Tree","Mansion","Castle on the Sea","Haunter Castle","Icecream Island","Peanut Island","Lab","Cake Loaf","The Yama","Tushita Port","Chocolate Island","Candy Island"}
end

Island:AddDropdown('Select_Island', {
    Values = TeleportTable,
    Default = false,
    Multi = false,

    Text = 'Select Island',
    Tooltip = 'Select Island',
})

Options.Select_Island:OnChanged(function( Value )
	_G.SelectLocalTeleport = Value
	SaveSettings()
end)

Island:AddButton('Teleport Island', function()
	if FirstSea then
		if _G.SelectLocalTeleport == "Marine1" then
			toTarget(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
		end

		if _G.SelectLocalTeleport == "Marine2" then
			toTarget(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
		end

		if _G.SelectLocalTeleport == "Midle Town" then
			toTarget(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
		end

		if _G.SelectLocalTeleport == "Jungle" then
			toTarget(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
		end

		if _G.SelectLocalTeleport == "Pirate Village" then
			toTarget(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
		end

		if _G.SelectLocalTeleport == "Desert" then
			toTarget(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
		end

		if _G.SelectLocalTeleport == "Frozen Village" then
			toTarget(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
		end

		if _G.SelectLocalTeleport == "Colosseum" then
			toTarget(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
		end

		if _G.SelectLocalTeleport == "Prison" then
			toTarget(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
		end

		if _G.SelectLocalTeleport == "Mob Leader" then
			toTarget(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
		end

		if _G.SelectLocalTeleport == "Magma Village" then
			toTarget(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
		end

		if _G.SelectLocalTeleport == "UnderWater Gate" then
			toTarget(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
		end

		if _G.SelectLocalTeleport == "UnderWater City" then
			toTarget(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
		end

		if _G.SelectLocalTeleport == "Fountain City" then
			toTarget(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
		end

		if _G.SelectLocalTeleport == "Sky1" then
			toTarget(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
		end

		if _G.SelectLocalTeleport == "Sky2" then
			toTarget(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
		end

		if _G.SelectLocalTeleport == "Sky3" then
			toTarget(CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703))
		end
	elseif SecondSea then
		if _G.SelectLocalTeleport == "Dock" then
			toTarget(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
		end

		if _G.SelectLocalTeleport == "Mansion" then
			toTarget(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
		end

		if _G.SelectLocalTeleport == "Kingdom Of Rose" then
			toTarget(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
		end

		if _G.SelectLocalTeleport == "Cafe" then
			toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
		end

		if _G.SelectLocalTeleport == "Sunflower Field" then
			toTarget(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
		end

		if _G.SelectLocalTeleport == "Jeramy Mountain" then
			toTarget(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
		end

		if _G.SelectLocalTeleport == "Colossuem" then
			toTarget(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
		end

		if _G.SelectLocalTeleport == "Factory" then
			toTarget(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
		end

		if _G.SelectLocalTeleport == "The Bridge" then
			toTarget(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
		end

		if _G.SelectLocalTeleport == "Green Bit" then
			toTarget(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
		end

		if _G.SelectLocalTeleport == "Graveyard" then
			toTarget(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
		end

		if _G.SelectLocalTeleport == "Dark Area" then
			toTarget(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
		end

		if _G.SelectLocalTeleport == "Snow Mountain" then
			toTarget(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
		end

		if _G.SelectLocalTeleport == "Hot Island" then
			toTarget(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
		end

		if _G.SelectLocalTeleport == "Cold Island" then
			toTarget(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
		end

		if _G.SelectLocalTeleport == "Ice Castle" then
			toTarget(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
		end

		if _G.SelectLocalTeleport == "Usopp's Island" then
			toTarget(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
		end

		if _G.SelectLocalTeleport == "Forgotten Island" then
			toTarget(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
		end

		if _G.SelectLocalTeleport == "Ghost Ship" then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
		if _G.SelectLocalTeleport == "Raid Low" then
			toTarget(CFrame.new(-5551.5810546875, 328.95172119140625, -5922.97998046875))
		end
		if _G.SelectLocalTeleport == "Dog" then
			toTarget(CFrame.new(-2001.2940673828125, 125.40396881103516, -71.92977142333984))
		end
	elseif ThirdSea then
		if _G.SelectLocalTeleport == "Port Town" then
			toTarget(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
		end

		if _G.SelectLocalTeleport == "Hydra Island" then
			toTarget(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
		end

		if _G.SelectLocalTeleport == "Gaint Tree" then
			toTarget(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
		end

		if _G.SelectLocalTeleport == "Castle on the Sea" then
			local args = {
				[1] = "requestEntrance",
				[2] = Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875)
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
		
		if _G.SelectLocalTeleport == "Mansion" then
			local args = {
				[1] = "requestEntrance",
				[2] = Vector3.new(-12548.595703125, 337.17001342773, -7554.6103515625)
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end

		if _G.SelectLocalTeleport == "Haunted Castle" then
			toTarget(CFrame.new(-9515.07324, 142.130615, 5537.58398))
		end

		if _G.SelectLocalTeleport == "Icecream Island" then
			toTarget(CFrame.new(-880.894531, 118.245354, -11030.7607, -0.867174983, 1.48501234e-09, 0.498003572, 2.70457789e-08, 1, 4.41129586e-08, -0.498003572, 5.1722548e-08, -0.867174983))
		end

		if _G.SelectLocalTeleport == "Peanut Island" then
			toTarget(CFrame.new(-2124.06738, 44.0723495, -10179.8281, -0.623125494, -2.55908191e-07, -0.782121837, -1.40530574e-07, 1, -2.15235005e-07, 0.782121837, -2.42063933e-08, -0.623125494))
		end

		if _G.SelectLocalTeleport == "Lab" then
			toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
		end

		if _G.SelectLocalTeleport == "The Yama"then
			toTarget(CFrame.new(5221.025390625, 9.198119163513184, 1199.8416748046875))
		end
		
		if _G.SelectLocalTeleport == "Tushita Port"then
			toTarget(CFrame.new(5177.544921875, 141.69766235351562, 912.6962890625))
		end

		if _G.SelectLocalTeleport == "Cake Island" then
			toTarget(CFrame.new(-1977.36767578125, 251.509521484375, -12380.4189453125))
		end

		if _G.SelectLocalTeleport == "Chocolate Island"then
			toTarget(CFrame.new(-39.30682373046875, 16.855731964111328, -12027.8466796875))
		end

		if _G.SelectLocalTeleport == "Candy Island"then
			toTarget(CFrame.new(-1080.59423828125, 14.525854110717773, -14451.8798828125))
		end
	end
end)

local Misc = World:AddTab('Misc')

Misc:AddButton('Join Pirates', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
end)

Misc:AddButton('Join Marines', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
end)

Misc:AddButton('FPS Booster', function()
	FPSBooster()
end)

Misc:AddButton('Hop Server', function()
	Hop()
end)

Misc:AddButton('Check Update Game', function()
	game.StarterGui:SetCore("SendNotification", {
		Title = "Blox Fruits", 
		Text = "Updated in 1 month ago!" , 
		Icon = "",
		Duration = 5
	})
end)

Library:SetWatermarkVisibility(true)
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
ThemeManager:SetFolder('VyGaming')
SaveManager:SetFolder('VyGaming/Color')
SaveManager:BuildConfigSection(Tabs['Setting']) 
ThemeManager:ApplyToTab(Tabs['Setting'])