-- TOOLAME CONFIDENTIAL --
local Status = script.Parent.Parent.Status
local StrobeSync = script.Parent.Parent.StrobeSync
local Run = false
Status.Changed:connect(function()
	if Run then return end
	if script.Parent.StrobeDiscon.Value == true then return end
	Run = true
	if Status.Value == 1 --ALARM&STROBE
	or Status.Value == 2 --STROBE
	or Status.Value == 11 --TEST
	then
		wait(1)
	while true do
		
		wait(1.5)
		Status.Parent.Indicators.StrobeCircuit.BrickColor = BrickColor.new("Really red")
		Status.Parent.LCD.Relay.Pitch = 3
		Status.Parent.LCD.Relay:Play()
		StrobeSync.Value = true
		wait(0.1)
		Status.Parent.Indicators.StrobeCircuit.BrickColor = BrickColor.new("Sand red")
		Status.Parent.LCD.Relay.Pitch = 2.5
		Status.Parent.LCD.Relay:Play()
		StrobeSync.Value = false

	end
	
	end
end)
StrobeSync.Value = false
if script.Parent.StrobeDiscon.Value == true then return end
Status.Parent.Indicators.StrobeCircuit.BrickColor = BrickColor.new("Sand red")