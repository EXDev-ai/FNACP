RemoteFunction = game.Workspace.MovingFunction.RemoteFunction

ServerStorage = game.ServerStorage

Seconde = wait()

World = game.Workspace
 while true do
	wait(60) 
	ServerStorage.Phase1Blink:Clone().Parent = game.Workspace
	game.Workspace.NeutralBlink:Destroy()
	wait(45)
	ServerStorage.Phase2Blink:Clone().Parent = game.Workspace
	World.Phase1Blink:Destroy()
	wait(30)
	ServerStorage.Phase3Blink:Clone().Parent = game.Workspace
	World.Phase2Blink:Destroy()
	script.Alert:Play()
	wait(2)
	if game.Workspace.CentralDoor.Door.Closed.Value == false then
		ServerStorage.Phase4Blink:Clone().Parent = game.Workspace
		World.Phase3Blink:Destroy()	
        script.Jumpscare:Play()
		print("Game Over")
		wait(3)
		World.Phase4Blink:Destroy()
		game.StarterGui.StartScreen.Enabled = true
		RemoteFunction.Coco.Disabled = true
		RemoteFunction.Loco.Disabled = true
		RemoteFunction.Blink.Disabled = true
		RemoteFunction.Jiggles.Disabled = true
		RemoteFunction.Emperor.Disabled = true
		RemoteFunction.Seagull.Disabled = true
		World.MenuMusic:Play()
	elseif game.Workspace.CentralDoor.Door.Closed.Value == true then
	    World.Phase3Blink:Destroy()
	    ServerStorage.NeutralBlink:Clone().Parent = game.Workspace
	    script.Thud:Play()
		print("Destroying now!")
	wait(5)
 end
end
