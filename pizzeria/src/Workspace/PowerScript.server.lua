PowerOff = false
initalPower = game.Workspace.Power.Value

local function round(n)
	return math.floor(n + 0.5)
end

game.Workspace.Power.Changed:connect(function()
	if game.Workspace.Power.Value == 0 then
		script.Sound:Play()
	end
end)

while true do
	if PowerOff == false then
		game.Workspace.Power.Value = game.Workspace.Power.Value - script.DepleteBy.Value
	end
	if game.Workspace.Power.Value <= 0 then
		script.DepleteBy.Value = 1
		game.Workspace.Power.Value = 0
		PowerOff = true
		
		game.Workspace.Lamp.Light.BrickColor = BrickColor.new("Black")
		game.Workspace.PwrDisplay.Part.SurfaceGui.TextLabel.Visible = false
		game.Workspace.PwrDisplay.Part.SurfaceGui.ImageLabel.Visible = false
		game.Workspace.Lamp.Light.SpotLight.Enabled = false
		game.Workspace.TheFan.Union.Script.Disabled = true
		game.Workspace.TheFan.Union.Ambience:Stop()
		
		game.Workspace.RightDoor.DoorButton.Script.Disabled = true
		game.Workspace.RightDoor.LightButton.Script.Disabled = true
		game.workspace.RightDoor.Door.Closed.Value = false
		game.Workspace.RightDoor.Door.CFrame = CFrame.new(game.Workspace.RightDoor.Door.CFrame.X,15.5,game.Workspace.RightDoor.Door.CFrame.Z)
		game.Workspace.RightDoor.Light.On.Value = false
		game.Workspace.RightDoor.Light.PointLight.Enabled = false
		game.Workspace.RightDoor.Light.Sound:Stop()
		game.Workspace.LeftDoor.DoorButton.Script.Disabled = true
		game.Workspace.LeftDoor.LightButton.Script.Disabled = true
		game.workspace.LeftDoor.Door.Closed.Value = false
		game.Workspace.LeftDoor.Door.CFrame = CFrame.new(game.Workspace.LeftDoor.Door.CFrame.X,15.5,game.Workspace.LeftDoor.Door.CFrame.Z)
		game.Workspace.LeftDoor.Light.On.Value = false
		game.Workspace.LeftDoor.Light.PointLight.Enabled = false
		game.Workspace.LeftDoor.Light.Sound:Stop()
		game.Workspace.CentralDoor.DoorButton.Script.Disabled = true
		game.Workspace.CentralDoor.LightButton.Script.Disabled = true
		game.workspace.CentralDoor.Door.Closed.Value = false
		game.Workspace.CentralDoor.Door.CFrame = CFrame.new(game.Workspace.RightDoor.Door.CFrame.X,15.5,game.Workspace.RightDoor.Door.CFrame.Z)
		game.Workspace.PwrDisplay.Part.SurfaceGui.TextLabel.Visible = false
		game.Workspace.PwrDisplay.Part.SurfaceGui.ImageLabel.Visible = false
	else
		PowerOff = false
		game.Workspace.PwrDisplay.Part.SurfaceGui.TextLabel.Visible = true
		game.Workspace.PwrDisplay.Part.SurfaceGui.ImageLabel.Visible = true
		game.Workspace.Lamp.Light.BrickColor = BrickColor.new("New Yeller")
		game.Workspace.TheFan.Union.Script.Disabled = false
		game.Workspace.TheFan.Union.Ambience:Play()
		
		game.Workspace.RightDoor.DoorButton.Script.Disabled = false
		game.Workspace.RightDoor.LightButton.Script.Disabled = false
		game.Workspace.LeftDoor.DoorButton.Script.Disabled = false
		game.Workspace.LeftDoor.LightButton.Script.Disabled = false
		game.Workspace.CentralDoor.DoorButton.Script.Disabled = false
	end
	powerPercentage = round((game.Workspace.Power.Value/initalPower)*100)
	game.Workspace.PwrDisplay.Part.SurfaceGui.TextLabel.Text = "Power: "..powerPercentage.."%"
	wait(2)
end