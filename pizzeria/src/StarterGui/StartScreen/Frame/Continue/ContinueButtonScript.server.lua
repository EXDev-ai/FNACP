local RemoteFunction = game.Workspace.MovingFunction.RemoteFunction

script.Parent.MouseButton1Click:Connect(function(clicked)
		print("Continue pushed")
		if  game.Workspace.Night.Value == 1 then
		RemoteFunction.Blink.Disabled = true
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Emperor.Disabled = true
		RemoteFunction.Seagull.Disabled = true
		game.StarterGui.Night1.Enabled = true
	    script.CameraSwitch:Play()
	    wait(1)
	    game.StarterGui.Night1.Enabled = false
	end
	if  game.Workspace.Night.Value == 2 then
		RemoteFunction.Blink.Disabled = true
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Seagull.Disabled = true	
		game.StarterGui.Night2.Enabled = true
	    script.CameraSwitch:Play()
	    wait(3)
	    game.StarterGui.Night2.Enabled = false
	end
	if  game.Workspace.Night.Value == 3 then
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Seagull.Disabled = true
		game.StarterGui.Night3.Enabled = true
	    script.CameraSwitch:Play()
	    wait(3)
	    game.StarterGui.Night3.Enabled = false
	end
	if  game.Workspace.Night.Value == 4 then
		RemoteFunction.Seagull.Disabled = true
		game.StarterGui.Night4.Enabled = true
	    script.CameraSwitch:Play()
	    wait(3)
	    game.StarterGui.Night4.Enabled = false
	end
	if game.Workspace.Night.Value == 5 then
		RemoteFunction.Blink.Disabled = false
		RemoteFunction.Jiggles.Disabled = false
		RemoteFunction.Emperor.Disabled = false
		RemoteFunction.Seagull.Disabled = false
		RemoteFunction.Coco.Disabled = false
		RemoteFunction.Loco.Disabled = false
		game.StarterGui.Night5.Enabled = true
		script.CameraSwitch:Play()
		wait(3)
		game.StarterGui.Night5.Enabled = false
		script.Parent.Parent.Parent.Enabled = false
	end
	if game.Workspace.Night.Value >= 6 then
		RemoteFunction.Blink.Disabled = true
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Emperor.Disabled = true
		RemoteFunction.Seagull.Disabled = true
		RemoteFunction.Coco.Disabled = true
		RemoteFunction.Loco.Disabled = true
	end
end)

	
     

while true do
	wait(1)
	script.Parent.Text = "Continue - Night " .. game.Workspace.Night.Value .. "!"
end