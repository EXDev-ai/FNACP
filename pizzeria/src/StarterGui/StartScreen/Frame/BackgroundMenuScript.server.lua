if game.StarterGui.StartScreen.Frame.Visible == true then
  	wait(2)
  	script.Parent.Static1.Visible = false
    script.Parent.Static2.Visible = true
    wait(2)
    script.Parent.Static2.Visible = false
    script.Parent.Static1.Visible = true
else
	script.Parent.Static1.Visible = false
	script.Parent.Static2.Visible = false
end
