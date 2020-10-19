-- TOOLAME CONFIDENTIAL --
local Status = script.Parent.Parent.Status
local Tone = script.Parent.Parent.SounderTone
local SounderSync = script.Parent.Parent.SounderSync
local Run = false
Status.Changed:connect(function()
	if Run then return end
	if script.Parent.SounderDiscon.Value == true then return end
	Run = true
	if Status.Value == 1 --ALARM
	or Status.Value == 12 --TEST
	then
	wait(1)
	if Tone.Value == 1 then -- CONTINIUS 
		Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Really red")
		Status.Parent.LCD.Relay.Pitch = 3
		Status.Parent.LCD.Relay:Play()
		SounderSync.Value = true
	end
	
	if Tone.Value == 2 then -- PULSE 	
		while true do
			wait(1)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Really red")
			Status.Parent.LCD.Relay.Pitch = 3
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = true
			wait(0.5)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Sand red")
			Status.Parent.LCD.Relay.Pitch = 2.5
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = false
		end
	end

	if Tone.Value == 3 then -- CODE 3
		while true do
			for C3 = 1, 3 do
			wait(0.3)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Really red")
			Status.Parent.LCD.Relay.Pitch = 3
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = true
			wait(0.6)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Sand red")
			Status.Parent.LCD.Relay.Pitch = 2.5
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = false
			end
			wait(1.5)
		end
	end
	
	if Tone.Value == 4 then -- PULSE 	
		while true do
			wait(0.2)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Really red")
			Status.Parent.LCD.Relay.Pitch = 3
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = true
			wait(0.2)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Sand red")
			Status.Parent.LCD.Relay.Pitch = 2.5
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = false
		end
	end

	if Tone.Value == 5 then -- 3x1	
		while true do
			for i=1,3 do
			wait(0.2)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Really red")
			Status.Parent.LCD.Relay.Pitch = 3
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = true
			wait(0.2)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Sand red")
			Status.Parent.LCD.Relay.Pitch = 2.5
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = false
			end
			wait(0.2)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Really red")
			Status.Parent.LCD.Relay.Pitch = 3
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = true
			wait(1)
			Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Sand red")
			Status.Parent.LCD.Relay.Pitch = 2.5
			Status.Parent.LCD.Relay:Play()
			SounderSync.Value = false
		end
	end
	end
end)
SounderSync.Value = false
if script.Parent.SounderDiscon.Value == true then return end
Status.Parent.Indicators.SounderCircuit.BrickColor = BrickColor.new("Sand red")
Status.Parent.LCD.Relay.Pitch = 2.5
Status.Parent.LCD.Relay:Play()