-- TOOLAME CONFIDENTIAL --
local Status = script.Parent.Parent.Status
local Tone = script.Parent.Parent.SounderTone
local Run = false
local Speakers = Status.Parent.VE:GetChildren()

--for i,l in pairs(Speakers) do if l:FindFirstChild("Script") then l.Script.Disabled = true end end
Status.Changed:connect(function()
	if Run then return end
	if script.Parent.VEDiscon.Value == true then return end
	Run = true
	if Status.Value == 1 --ALARM&STROBE
	or Status.Value == 11 --TEST
	then
	wait(1)
	Status.Parent.Indicators.VE.BrickColor = BrickColor.new("Really red")
	game.Soundscape.AmbientReverb = 1
	while true do
		
		
		-- SET HORN DATA --
		for i,l in pairs(Speakers) do
			l.Alarm.Sound.SoundId = "http://www.roblox.com/asset/?id=132473511"
			l.Alarm.Sound.Pitch = 1
			l.Alarm.Sound.Looped = true
			l.Alarm.Sound.Volume = 0.5
		end
		wait(1)	
		
		
		-- SOUND THE ALARMS! --
		
		
		if Tone.Value == 1 then -- CONTINIUS 
				for i,l in pairs(Speakers) do
					l.Alarm.Sound:Play()
				end
			wait(7)
		end

		if Tone.Value == 2 then -- PULSE 	
			for i1=1,13 do
					for i,l in pairs(Speakers) do
						l.Alarm.Sound:Play()
					end
					wait(0.5)
					for i,l in pairs(Speakers) do
						l.Alarm.Sound:Stop()
					end
				wait(1)
			end
		end
		
		
		if Tone.Value == 3 then -- CODE 3	
			for i1=1,3 do
				for i2=1,3 do
					for i,l in pairs(Speakers) do
						l.Alarm.Sound:Play()
					end
					wait(0.6)
					for i,l in pairs(Speakers) do
						l.Alarm.Sound:Stop()
					end
					wait(0.3)
				end
				wait(1.5)
			end
		end
		
		if Tone.Value == 4 then -- PULSE 	
			for i1=1,24 do
					for i,l in pairs(Speakers) do
						l.Alarm.Sound:Play()
					end
					wait(0.2)
					for i,l in pairs(Speakers) do
						l.Alarm.Sound:Stop()
					end
					wait(0.2)
			end
		end
		
				
		if Tone.Value == 5 then -- 3x1
			for i1=1,3 do
				for i2=1,3 do
					for i,l in pairs(Speakers) do
						l.Alarm.Sound:Play()
					end
					wait(0.2)
					for i,l in pairs(Speakers) do
						l.Alarm.Sound:Stop()
					end
					wait(0.2)
				end
				for i,l in pairs(Speakers) do
					l.Alarm.Sound:Play()
				end
				wait(1)
				for i,l in pairs(Speakers) do
					l.Alarm.Sound:Stop()
				end
				wait(0.2)
			end
		end
		for i,l in pairs(Speakers) do
			l.Alarm.Sound:Stop()
		end
		-- SET VOICE DATA --
		
		for i,l in pairs(Speakers) do
			l.Alarm.Sound.SoundId = "http://www.roblox.com/asset/?id=131377420"
			l.Alarm.Sound.Pitch = 1
			l.Alarm.Sound.Looped = false
			l.Alarm.Sound.Volume = 0.7	
		end	
		wait(0.5)
		
		-- START VOICE MESSAGE --
		for i,l in pairs(Speakers) do
			l.Alarm.Sound:Play()
		end
		wait(12)
		
	end
	
	end
end)

if script.Parent.VEDiscon.Value == true then return end
Status.Parent.Indicators.VE.BrickColor = BrickColor.new("Sand red")
game.Soundscape.AmbientReverb = 0
for i,l in pairs(Speakers) do l.Alarm.Sound:Stop() end