RemoteFunction = game.Workspace.MovingFunction.RemoteFunction

ServerStorage = game.ServerStorage

Seconde = wait()

World = game.Workspace
 while true do
	wait(45) 
	ServerStorage.Walk1Loco:Clone().Parent = game.Workspace
	game.Workspace.NeutralLoco:Destroy()
	wait(30)
	ServerStorage.Walk2Loco:Clone().Parent = game.Workspace
	World.Walk1Loco:Destroy()
	wait(15)
	ServerStorage.Walk3Loco:Clone().Parent = game.Workspace
	World.Walk2Loco:Destroy()
	script.Alert:Play()
	wait(3)
	if game.Workspace.RightDoor.Door.Closed.Value == false then
		ServerStorage.Walk4Loco:Clone().Parent = game.Workspace
        script.Jumpscare:Play()
		World.Walk3Loco:Destroy()	
		print("Game Over")
		wait(3)
		World.Walk4Loco:Destroy()
		game.StarterGui.StartScreen.Enabled = true
		RemoteFunction.Coco.Disabled = true
		RemoteFunction.Loco.Disabled = true
		RemoteFunction.Blink.Disabled = true
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Emperor.Disabled = true
		RemoteFunction.Seagull.Disabled = true
		World.MenuMusic:Play()
	elseif game.Workspace.RightDoor.Door.Closed.Value == true then
	    World.Walk3Loco:Destroy()
	    ServerStorage.NeutralLoco:Clone().Parent = game.Workspace
		print("Destroying now!")
	wait(5)
  end
end