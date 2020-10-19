RemoteFunction = game.Workspace.MovingFunction.RemoteFunction

ServerStorage = game.ServerStorage

Seconde = wait()

World = game.Workspace

 while true do 
	wait(65) 
	ServerStorage.Walk1Coco:Clone().Parent = game.Workspace
	game.Workspace.NeutralCoco:Destroy()
	wait(40)
	ServerStorage.Walk2Coco:Clone().Parent = game.Workspace
	World.Walk1Coco:Destroy()
	wait(30)
	ServerStorage.Walk3Coco:Clone().Parent = game.Workspace
	World.Walk2Coco:Destroy()
	wait(3)
	if game.Workspace.LeftDoor.Door.Closed.Value == false then
		ServerStorage.Walk4Coco:Clone().Parent = game.Workspace
		World.Walk3Coco:Destroy()	
        script.Jumpscare:Play()
		print("Game Over")
		wait(3)
		World.Walk4Coco:Destroy()
		game.StarterGui.StartScreen.Enabled = true
		RemoteFunction.Coco.Disabled = true
		RemoteFunction.Loco.Disabled = true
		RemoteFunction.Blink.Disabled = true
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Emperor.Disabled = true
		RemoteFunction.Seagull.Disabled = true
		World.MenuMusic:Play()
	ServerStorage.NeutralCoco:Clone().Parent = game.Workspace
	elseif game.Workspace.LeftDoor.Door.Closed.Value == true then
	    World.Walk3Coco:Destroy()
	    ServerStorage.NeutralCoco:Clone().Parent = game.Workspace
		print("Destroying now!")
	wait(5)
 end
end