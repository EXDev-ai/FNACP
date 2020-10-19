Elevators = {
	
	Workspace:FindFirstChild("elevator1"),
	Workspace:FindFirstChild("elevator2"),
	Workspace:FindFirstChild("elevator3"),
	Workspace:FindFirstChild("elevator4")
}

script.Parent.Parent.Status.Changed:connect(function()
	if script.Parent.RecallDiscon.Value == true then return end
	if script.Parent.Parent.Status.Value == 1 or script.Parent.Parent.Status.Value == 2 then
		for i,l in pairs(Elevators) do l.FireMode.Value = true end
			script.Parent.Parent.LCD.Relay.Pitch = 3
			script.Parent.Parent.LCD.Relay:Play()
			script.Parent.Parent.Indicators.RecallCircuit.BrickColor = BrickColor.new("Really red")
		
	end
	if script.Parent.Parent.Status.Value == 0  then
		for i,l in pairs(Elevators) do l.FireMode.Value = false end
			script.Parent.Parent.LCD.Relay.Pitch = 2.5
			script.Parent.Parent.LCD.Relay:Play()
			script.Parent.Parent.Indicators.RecallCircuit.BrickColor = BrickColor.new("Sand red")
		
	end
end)