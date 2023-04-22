local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source', true))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/zekgt/lua/main/phantom%20forces/libraries/ESP.lua"))()
ESP.Boxes = false
getgenv().SecureMode = true;
local Window = Rayfield:CreateWindow({
   Name = "Barry's Prison Run by mimay",
   LoadingTitle = "Barry's Prison Run",
   LoadingSubtitle = "by Nisnisan",
})
local playerHead = game.Players.LocalPlayer.Character.Head
local Eggs = game:GetService("Workspace").EasterSeasonChallenge
local winnersroom = game:GetService("Workspace").LocalObjects.FinalHelicopter.go.TouchInterest -- final helicopter
local superSpeed = game:GetService("Workspace").LocalObjects.WinnersRoomObjects.PowerUps.SuperSpeed.go.TouchInterest
local superJump = game.Workspace.LocalObjects.WinnersRoomObjects.PowerUps.SuperJump.go.TouchInterest
local gravity = game.Workspace.LocalObjects.WinnersRoomObjects.PowerUps.LowGravity.go.TouchInterest
local Tab = Window:CreateTab("Main")
local Tab2 = Window:CreateTab("Misc")
local Section1 = Tab:CreateSection("Game Exploits")
Tab:CreateButton({
	Name = "Go to Winners Room and Finish the Game",
	Callback = function()
		firetouchinterest(playerHead, winnersroom.Parent, 0)
		wait(0.1)
		firetouchinterest(playerHead, winnersroom.Parent, 1)
	end,
})
Tab:CreateButton({
	Name = "Collect All Easter Eggs",
	Callback = function()
		for i,v in pairs(Eggs:GetDescendants()) do
			if v.Name == "TouchInterest" and v.Parent then
				firetouchinterest(playerHead, v.Parent, 0)
				wait(0.1)
				firetouchinterest(playerHead, v.Parent, 1)
			end
		end
	end,
})
Tab:CreateToggle({
   Name = "Super Speed",
   CurrentValue = false,
   Callback = function(Value)
   		while wait() do
			if Value then
				firetouchinterest(playerHead, superSpeed.Parent, 0)
				wait(0.1)
				firetouchinterest(playerHead, superSpeed.Parent, 1)
			end
			if not Value then
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
			end 
		end
   end,
})
Tab:CreateToggle({
   Name = "Super Jump",
   CurrentValue = false,
   Callback = function(Value)
   		while wait() do
			if Value then
				firetouchinterest(playerHead, superJump.Parent, 0)
				wait(0.1)
				firetouchinterest(playerHead, superJump.Parent, 1)
			else
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
			end 
		end
   end,
})
ESP.Players = false
ESP.Boxes = true
ESP.Names = true
ESP:Toggle(true)

ESP:AddObjectListener(game:GetService("Workspace").Policeman1.guard.Dummy, {
	Name = "HumanoidRootPart",
	CustomName = "Chaser",
	Color = Color3.fromRGB(0, 255, 0),
	IsEnabled = "Hello"
})
local Section2 = Tab:CreateSection("Extra Sensory Perception")
Tab:CreateToggle({ -- game:GetService("Workspace").Policeman1.guard.go
   Name = "ESP Guards | INCOMPLETE",
   CurrentValue = false,
   Callback = function(Value)
        if Value then
		   ESP.Hello = true-- ESP TRUE
		else
			ESP.Hello = false
		end
   end,
})
local Section4 = Tab2:CreateSection("Misc")
Tab2:CreateButton({
   Name = "Destroy Gui",
   Callback = function()
		Rayfield:Destroy()
   end,
})
