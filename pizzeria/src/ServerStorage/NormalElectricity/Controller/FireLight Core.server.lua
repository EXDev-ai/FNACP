script.Parent.Parent.Status.Changed:connect(function()
	if script.Parent.Parent.Status.Value == 1 or script.Parent.Parent.Status.Value == 2 then

			script.Parent.Parent.LCD.Relay.Pitch = 3
			script.Parent.Parent.LCD.Relay:Play()
			script.Parent.Parent.FireLight.Value = true
	end
	if script.Parent.Parent.Status.Value == 0  then
		
			script.Parent.Parent.LCD.Relay.Pitch = 2.5
			script.Parent.Parent.LCD.Relay:Play()
			script.Parent.Parent.FireLight.Value = false
		
	end
end)