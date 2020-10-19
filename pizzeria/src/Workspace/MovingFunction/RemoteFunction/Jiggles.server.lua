

ServerStorage = game.ServerStorage

Seconde = wait()

World = game.Workspace
 while true do
	wait(60) 
	ServerStorage.Walk1Jiggles:Clone().Parent = game.Workspace
	game.Workspace.NeutralJiggles:Destroy()
	wait(2)
		if game.Workspace.RightDoor.Door.Closed.Value == false then 
		ServerStorage.Walk3Jiggles:Clone().Parent = game.Workspace
        script.Jumpscare:Play()	
		print("Game Over")
		wait(3)
		World.Walk3Jiggles:Destroy()
		game.StarterGui.StartScreen.Enabled = true
		RemoteFunction.Coco.Disabled = true
		RemoteFunction.Loco.Disabled = true
		RemoteFunction.Blink.Disabled = true
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Emperor.Disabled = true
		RemoteFunction.Seagull.Disabled = true
		World.MenuMusic:Play()
	elseif game.Workspace.RightDoor.Door.Closed.Value == true then 
	    World.Walk1Jiggles:Destroy()
	    ServerStorage.Walk2Jiggles:Clone().Parent = game.Workspace
		print("Destroying now!")
	wait(2)
	if game.Workspace.LeftDoor.Door.Closed.Value == false then
		World.Walk2Jiggles:Destroy()
		ServerStorage.Walk3Jiggles:Clone().Parent = game.Workspace
        script.Jumpscare:Play()
		World.Walk3Jiggles:Destroy()	
		print("Game Over")
		wait(3)
		game.StarterGui.StartScreen.Enabled = true
		RemoteFunction.Coco.Disabled = true
		RemoteFunction.Loco.Disabled = true
		RemoteFunction.Blink.Disabled = true
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Emperor.Disabled = true
		RemoteFunction.Seagull.Disabled = true
		World.MenuMusic:Play()
	elseif game.Workspace.LeftDoor.Door.Closed.Value == true then 
	    World.Walk2Jiggles:Destroy()
	    ServerStorage.NeutralJiggles:Clone().Parent = game.Workspace
		print("Destroying now!")
	wait(5)
  end
 end
end