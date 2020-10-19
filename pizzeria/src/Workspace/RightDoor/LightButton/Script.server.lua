debounce = false

script.Parent.ClickDetector.MouseClick:connect(function()
	if debounce == false then
		debounce = true
		if script.Parent.Parent.Light.On.Value == false then
			script.Parent.Parent.Light.Sound:Play()
			script.Parent.Parent.Light.On.Value = true
			game.Workspace.PowerScript.DepleteBy.Value = game.Workspace.PowerScript.DepleteBy.Value + 1
			script.Parent.Parent.Light.PointLight.Enabled = true
		else
			script.Parent.Parent.Light.Sound:Stop()
			script.Parent.Parent.Light.On.Value = false
			game.Workspace.PowerScript.DepleteBy.Value = game.Workspace.PowerScript.DepleteBy.Value - 1
			script.Parent.Parent.Light.PointLight.Enabled = false
		end
	end
	debounce = false
end)
