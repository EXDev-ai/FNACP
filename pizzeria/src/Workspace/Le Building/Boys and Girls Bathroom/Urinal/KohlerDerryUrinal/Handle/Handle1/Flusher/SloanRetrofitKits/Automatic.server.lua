
local plate = script.Parent.Interactive

plate.Touched:connect(function(obj)
	if obj.Parent:FindFirstChild("Humanoid") then
		script.Parent.AutomaticT.Disabled = false
		script.Parent.SensorUse.Disabled = false
		--script.Parent.Light1.BrickColor = BrickColor.new("Really red")
	end
end)

plate.TouchEnded:connect(function(obj)
	if obj.Parent:FindFirstChild("Humanoid") then
		script.Parent.AutomaticT.Disabled = true
		script.Parent.SensorUse.Disabled = true
		script.Parent.UseLight.BrickColor = BrickColor.new("Really black")
		script.Parent.RanBattery.Disabled = true
		--script.Parent.Light.Material = "SmoothPlastic"
		--script.Parent.Light1.BrickColor = BrickColor.new("Really black")
	end
end)