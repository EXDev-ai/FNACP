

	 game.Workspace.Button.ClickDetector.MouseClick:Connect(function(clicked)
	  script.Click:Play()
	  if game.Workspace.Clicked.Value == false then
	   game.Workspace.Clicked.Value = true
	    else 
	   	 game.Workspace.Clicked.Value = false
	   end
	  end)
