debounce = false

script.Parent.Parent.Door.Closed.Changed:connect(function()
	print(script.Parent.Parent.Door.Closed.Value)
end)

script.Parent.ClickDetector.MouseClick:connect(function()
	if debounce == false then
		script.Parent.Parent.Door.Sound:Play()
		debounce = true
		if script.Parent.Parent.Door.Closed.Value == false then
			script.Parent.Parent.Door.Closed.Value = true
			game.Workspace.PowerScript.DepleteBy.Value = game.Workspace.PowerScript.DepleteBy.Value + 1
			for Closing = 1,10 do
				script.Parent.Parent.Door.CFrame = script.Parent.Parent.Door.CFrame - Vector3.new(0,1,0)
				wait()
			end
		elseif script.Parent.Parent.Door.Closed.Value == true then
			script.Parent.Parent.Door.Closed.Value = false
			game.Workspace.PowerScript.DepleteBy.Value = game.Workspace.PowerScript.DepleteBy.Value - 1
			for Opening = 1,10 do
				script.Parent.Parent.Door.CFrame = script.Parent.Parent.Door.CFrame + Vector3.new(0,1,0)
				wait()
			end
		end
	end
	debounce = false
end)
