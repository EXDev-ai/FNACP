

ServerStorage = game.ServerStorage

Seconde = wait()

World = game.Workspace
 while true do 
	wait(60)  
	ServerStorage.ZappingEmperor:Clone().Parent = game.Workspace
	game.Workspace.NeutralEmperor:Destroy()
	script.Alert:Play()
	game.Workspace.NormalElectricity:Destroy()
	ServerStorage.OpenElectricity:Clone().Parent = game.Workspace
	print("This is a test point")
	wait(5)
    if game.Workspace.Clicked.Value == true then
   	 game.Workspace.ZappingEmperor:Destroy()
	 ServerStorage.NeutralEmperor:Clone().Parent = game.Workspace
	 script.Zap:Play()
	 game.Workspace.OpenElectricity:Destroy()
	 ServerStorage.NormalElectricity:Clone().Parent = game.Workspace
    else 
	 game.Workspace.ZappingEmperor:Destroy()
	 ServerStorage.DeskEmperor:Clone().Parent = game.Workspace
	 game.Workspace.Power.Value = 1
	 script.Powerout:Play()
  end
 end


