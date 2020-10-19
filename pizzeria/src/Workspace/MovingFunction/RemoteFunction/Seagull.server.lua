RemoteFunction = game.Workspace.MovingFunction.RemoteFunction

ServerStorage = game.ServerStorage

Seconde = wait()

World = game.Workspace
 while true do
	wait(20) 
	ServerStorage.Walk1Seagull:Clone().Parent = game.Workspace
	game.Workspace.NeutralSeagull:Destroy()
	script.Alert:Play()
	wait(2)
		if game.Workspace.LeftDoor.Door.Closed.Value == false then 
		World.Walk1Seagull:Destroy()
		ServerStorage.Walk4Seagull:Clone().Parent = game.Workspace
        script.Jumpscare:Play()	
		print("Game Over")
		wait(3)
		World.Walk4Seagull:Destroy()
		game.StarterGui.StartScreen.Enabled = true
		RemoteFunction.Coco.Disabled = true
		RemoteFunction.Loco.Disabled = true
		RemoteFunction.Blink.Disabled = true
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Emperor.Disabled = true
		RemoteFunction.Seagull.Disabled = true
		World.MenuMusic:Play()
	elseif game.Workspace.LeftDoor.Door.Closed.Value == true then 
	    World.Walk1Seagull:Destroy()
	    ServerStorage.Walk2Seagull:Clone().Parent = game.Workspace
		print("Destroying now!")
	wait(2)
	if game.Workspace.CentralDoor.Door.Closed.Value == false then
		World.Walk2Seagull:Destroy()
		ServerStorage.Walk4Seagull:Clone().Parent = game.Workspace
        script.Jumpscare:Play()
		World.Walk2Seagull:Destroy()	
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
	elseif game.Workspace.CentralDoor.Door.Closed.Value == true then 
	    World.Walk2Seagull:Destroy()
	    ServerStorage.Walk3Seagull:Clone().Parent = game.Workspace
		print("Destroying now!")
	wait(2)
	if game.Workspace.RightDoor.Door.Closed.Value == false then
	World.Walk3Seagull:Destroy()
	ServerStorage.WalkSeagull4:Clone().Parent = game.Workspace
    script.Jumpscare:Play()
	World.Walk4Seagull:Destroy()	
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
elseif game.Workspace.RightDoor.Door.Closed.Value == true then 
    World.Walk3Seagull:Destroy()
    ServerStorage.NeutralSeagull:Clone().Parent = game.Workspace
	print("Destroying now!")
   end
  end
 end
end