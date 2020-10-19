

local plate = script.Parent.Interactive2

plate.Touched:connect(function(obj)
	if obj.Parent:FindFirstChild("Humanoid") then
		--script.Parent.Soon.Disabled = false
		script.Parent.AutomaticF.Disabled = false
		--script.Parent.Lights.Disabled = true
	end
end)

plate.TouchEnded:connect(function(obj)
	if obj.Parent:FindFirstChild("Humanoid") then
		--script.Parent.Lighted.Disabled = true
	--wait(1)
	--wait(1.4)
	--script.Parent.Light1.BrickColor = BrickColor.new("Really black")
	wait(2)
	script.Parent.Parent.AutoFlush.Disabled = false
	script.Disabled = true
	end
end)