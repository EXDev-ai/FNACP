local RemoteFunction = game.Workspace.MovingFunction.RemoteFunction


script.Parent.MouseButton1Click:Connect(function()
	print("Start pushed")
	script.Parent.Parent.Parent.Enabled = false
	game.StarterGui.Night1.Enabled = true
	print("Night 1")
	script.CameraSwitch:Play()
	wait(3)
	game.StarterGui.Night1.Enabled = false
	RemoteFunction.Blink.Disabled = true
	RemoteFunction.Jiggles.Disabled = true
	RemoteFunction.Emperor.Disabled = true
	RemoteFunction.Seagull.Disabled = true	
	end)
