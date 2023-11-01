-- CHECK CONFIG [! - IMPORTANT]
if not getgenv().config or getgenv().config == nil then 
  game.Players.LocalPlayer:Kick("configconfigconfigconfigconfigconfigconfigconfigconfigconfigconfigconfig")
  return 0
end 

--Liblaries
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
loadstring(game:HttpGet'https://auone.monnn1.repl.co/aimlib')()
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()


-- Variable 
getgenv().list = {}
getgenv().ticks = 150
getgenv().plist = {}
_G.debounce = {}

--Function 


function killinsert(target) 
 for i, v in pairs(getgenv().killed) do 
  if getgenv().killed.Name == target.Name then return end
 end 
 table.insert(getgenv().killed, getgenv().target)
end

function nametoplayer(name) 
 return game.Players[name]
end

function getNearestTarget()
dist = math.huge
p = nil
 for i, v in pairs(getgenv().players) do
 
 if v ~= game.Players.LocalPlayer and v.Character and v and p ~= v then 
    
   for _, v2 in pairs(getgenv().killed) do
   if v == v2 then
   unscan = v2
 end
end
  if (v.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position). Magnitude < dist and unscan ~= v then 

   dist = (v.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position). magnitude 
   p = v
 end
 end
 end
return p
end

function topos(gotoCFrame) --- tween to position 
  if _G.debounce.Tween then return 0 end
  if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - gotoCFrame.Position).Magnitude > 3000 and getgenv().config["game"]["resettp"] then
    num = 0
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, 100000, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
    wait(4)
    repeat wait()
 
if tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) > 1 then
    game.Players.LocalPlayer.Character.Humanoid.Health = -1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, 100000, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        _G.debounce.Tween = true
wait(4)
        _G.debounce.Tween = false

end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gotoCFrame
    num = num + 1
    until (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - gotoCFrame.Position).Magnitude < 1000 or num == 300
  end
  
  repeat wait ()
  until tonumber(game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Health) >= 1
  wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, gotoCFrame.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
    pcall(function()

    if game.Players.LocalPlayer.Character.Humanoid.Health >= 0 then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
        
    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
        pcall(function() 
            tweenz:Cancel()
        end)
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
    else
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/325, Enum.EasingStyle.Linear)
         tween, err = pcall(function()
            tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
            tweenz:Play()
        end)
        if not tween then return err end
    end
    end
    function _TweenCanCle()
        tweenz:Cancel()
    end
    end)
end 

--Hop 
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site
        if foundAnything == "" then
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
                )
            )
        else
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" ..
                        PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
                )
            )
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile =
                                pcall(
                                function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end
                            )
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(
                        function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(
                                PlaceID,
                                ID,
                                game.Players.LocalPlayer
                            )
                        end
                    )
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(
                function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end
            )
        end
    end
    Teleport()
end

-- buso 
function buso() 
    if(not(game.Players.LocalPlayer.Character:FindFirstChild('HasBuso')))then
local rel = game.ReplicatedStorage

        rel.Remotes.CommF_:InvokeServer('Buso')
    end
end

function keydown(use) -- Send key to client

    game:GetService("VirtualInputManager"):SendKeyEvent(true,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

    wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
end 

--equip tool by tooltip
function equip(tooltip)
   local player = game.Players.LocalPlayer
   local character = player.Character or player.CharacterAdded:Wait()

   for _, item in pairs(player.Backpack:GetChildren()) do
      if item:IsA("Tool") and item.ToolTip == tooltip then
         local humanoid = character:FindFirstChildOfClass("Humanoid")
         if humanoid and not humanoid:IsDescendantOf(item) then
            humanoid:UnequipTools()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
            return true
         end
      end
   end
   
   return false
end

-- big part 
function bighitbox(part)
  part.Size = Vector3.new(50,50,50)
end 

-- using random item (wont be call)
function spam()

for i, v in pairs(getgenv().config["game"]["weapon"]) do 
print(i)
    
    
    equip(i)
        for i2, v2 in pairs(v) do 
      print('i2: '..i2)    
           if v2 and v2.use then 
            for a=0,(v2.hold * 60) do  
              keydown(i2) 
              a = a + 1
              
          end
        end
      end
    
    end
  end 

-- get cframe 
function getpcframe(p)
 if tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) < 5000 and tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) > 1 then
                 Notification.new("info", "Akatsuki", 'Hiding...')
                 return p.Character.HumanoidRootPart.CFrame * CFrame.new(1, 50, 1)
             end
return p.Character: GetPrimaryRootPartCFrame()
end 

-- log 
function log(str) 
getgenv().btns2:Label(str)
end 

-- Starter Script ._.

spawn(function() -- Create Part Below Player 
 while wait() do
    local player = game.Players.LocalPlayer
  
    local part = Instance.new("Part")
    part.Anchored = true
    part.Size = Vector3.new(20, 1, 20) 
    part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(0, (game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y/4) + (part.Size.Y/2), 0)
    part.Parent = workspace
    while wait() do
        part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(0, (game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y/33) + (part.Size.Y/2), 0)
    end 
end
end)

for i, v in pairs(game.Players:GetPlayers()) do --UIs Player List
 table.insert(getgenv().plist, v.Name)
end 

-- UIs 



local win = DiscordLib:Window("Akatsuki Community")

local serv = win:Server("Game", "")
local btns = serv:Channel("• Hunt") 
local label = btns:Label("Welcome To Akatsuki Community!")
local drop = btns:Dropdown("Select Target", getgenv().plist, function(bool)
getgenv().target = nametoplayer(bool)
end)
btns:Toggle("Start",true, function(bool)
_G.hunt = bool
end)
btns:Button("Next Player", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
btns:Button("Hop", function()

_G.hunt = false 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, 255500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
Hop()
while wait() do
table.insert('a', getgenv().target)
end
end)
 getgenv().btns2 = serv:Channel("• log")
for i, v in pairs(game.Players:GetPlayers()) do 
 getgenv().btns2:Label('• '.. v.Name .. '[Lv. '.. v.Data.Level.Value .. '] - [❌]')
end 

-- Main Script 


--waitload
repeat wait() 
 if game:IsLoaded() then 
    if game.Players and Game.Players.LocalPlayer then 
     break
    end
  end
until 1 == 2


-- Team Join
if getgenv().config["game"]["team"] == nil or getgenv().config["game"]["team"] == "Pirates" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
elseif getgenv().config["game"]["team"] == "Marines" then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
end 
game.Players.LocalPlayer.Character.Humanoid.Health = 0 - math.huge
wait(1)
-- Starting Fetch Target
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.hunt and not _G.debounce.Target then
        if getgenv().target and tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) < 1 or tonumber(getgenv().target.Character.Humanoid.Health) < 1 or _G.firstexec and _G.hunt ~= false then 
        _G.debounce.Target = true
            repeat wait() until tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) > 0 
            if getgenv().target.Character then 
                killinsert(getgenv().killed, getgenv().target ) 
            end 
            log('Killed: '.. getgenv().target.Name)
            _G.firstexec = false
            print('c')
            repeat wait() 
                getgenv().target = getNearestTarget()
                _G.tick = 0
            until getgenv().target.Character
            Notification.new("info", "Akatsuki Community", getgenv().target.Name)
            repeat wait() until tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) > 0 
        wait(1)
        _G.debounce.Target = false
        else
            topos(getpcframe(getgenv().target))
        end 
    end
end)

--main hunt 

spawn(function() 
 
wait(1)
             if getgenv().target.Character and (getgenv().target.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 60 and _G.hunt then
                 
                 
                 
spam()

             end

           end)
