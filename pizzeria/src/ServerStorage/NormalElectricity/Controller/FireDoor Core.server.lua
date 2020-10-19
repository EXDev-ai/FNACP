script.Parent.Parent.Status.Changed:connect(function()
	if script.Parent.FiredoorDiscon.Value == true then return end
	if script.Parent.Parent.Status.Value == 1 or script.Parent.Parent.Status.Value == 2 then

			script.Parent.Parent.LCD.Relay.Pitch = 3
			script.Parent.Parent.LCD.Relay:Play()
			script.Parent.Parent.Indicators.FiredoorCircuit.BrickColor = BrickColor.new("Really red")
			script.Parent.Parent.CloseFireDoors.Value = true
	end
	if script.Parent.Parent.Status.Value == 0  then
		
			script.Parent.Parent.LCD.Relay.Pitch = 2.5
			script.Parent.Parent.LCD.Relay:Play()
			script.Parent.Parent.Indicators.FiredoorCircuit.BrickColor = BrickColor.new("Sand red")
			script.Parent.Parent.CloseFireDoors.Value = false
		
	end
end)