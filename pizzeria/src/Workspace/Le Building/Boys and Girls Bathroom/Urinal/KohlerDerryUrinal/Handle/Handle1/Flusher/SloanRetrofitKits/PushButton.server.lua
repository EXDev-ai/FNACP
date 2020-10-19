function Pushed()
	wait(0.1)
	script.Parent.Parent.AutoFlush.Disabled = false
end
script.Parent.Button.ClickDetector.MouseClick:connect(Pushed)