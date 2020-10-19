-- CREATED BY HEISTEKNIKK / TOOLAME --
--   COPYRIGHT 2014 HEISTEKNIKK     --

SP = script.Parent
PanelLcd = SP.Parent.LCD
SounderCore = SP.SounderCore
StrobeCore = SP.StrobeCore
VECore = SP.VECore
Controller = SP
Indicators = SP.Parent.Indicators
PanelButtons = SP.Parent.PanelButtons
Speakers = SP.Parent.VE:GetChildren()

------------------
fExtAlarmSync = true
fExtAlarmSyncName = "FireAlarmPanelExtra"

fExtAlarm = Workspace:FindFirstChild(fExtAlarmSyncName)
fPuller = script.Parent.Parent.Puller

fAlarm    =  false
fTrouble  =  false
fTroubleP = false
fSilence  =  false
fAlarmAck =  false
fAlarms   =  {   }
fPullers  =  {   }
fStatus   =  SP.Parent.Status

fDisconnected = { }

fAlarmCode=  3
-- 1: Continus
-- 2: Pulse
-- 3: Code 3 

SP.Parent.SounderTone.Value = fAlarmCode
-- Do a few startup stuff --



fExDiscon = SP.Parent.Disconnect
fExDisInd = fExDiscon.Indicators
fExDisBtn = fExDiscon.Buttons



fMenu = 1
fMenuLocked = false





CustomAddressText = {
	["00.000"] = "Manual Evacuation",
	["1"] = "Lobby",
	["1.1"] = "Entrance",
	["2"] = "Floor 2",
	["3"] = "Floor 3",
	["4"] = "Floor 4",
	["5"] = "Floor 5",
	["6"] = "Floor 6",
	["7"] = "Floor 7",
	["8"] = "Floor 8",
	["9"] = "Floor 9"
}


function DoMenu(Btn)
	if fMenu == 1 then
		if Btn == 1 then 
			AlarmAck()
		end
		if Btn == 2 then 
			AlarmSilence()
		end
		if Btn == 3 then 
			AlarmReset()
		end
		if Btn == 4 then 
			TroubleAck()
		end
		if Btn == 5 then 
			DoAlarm("00.000")
		end
		if Btn == 6 then 
			SetMenu(2)
		end
		return
	end
	
	if fMenu == 2 then
		if Btn == 1 then 
			SetMenu(3)
		end
		if Btn == 2 then 
			SetMenu(4)
		end
		if Btn == 3 then
			for i,l in pairs(Speakers) do
				l.Alarm.Sound.SoundId = "http://www.roblox.com/asset/?id=149257543"
				l.Alarm.Sound.Pitch = 1
				l.Alarm.Sound.Volume = 1
				l.Alarm.Sound.Looped = false
				l.Alarm.Sound:Play()
			end
		end
		if Btn == 4 then 
			for i,l in pairs(Speakers)do
				l.Alarm.Sound.SoundId = "http://www.roblox.com/asset/?id=145826216"
				l.Alarm.Sound.Pitch = 1
				l.Alarm.Sound.Volume = 1
				l.Alarm.Sound.Looped = false
				l.Alarm.Sound:Play()
			end 
		end 
	
		if Btn == 5 then 
		end
		if Btn == 6 then 
			SetMenu(1)
		end
		return
	end

	if fMenu == 3 then
		if Btn == 1 then 
			SP.Parent.SounderTone.Value = 1
			SetMenu(2)
		end
		if Btn == 2 then 
			SP.Parent.SounderTone.Value = 3
			SetMenu(2)
		end
		if Btn == 3 then 
			SP.Parent.SounderTone.Value = 2
			SetMenu(2)
		end
		if Btn == 4 then 
			SP.Parent.SounderTone.Value = 4
			SetMenu(2)
		end
		if Btn == 5 then 
			SP.Parent.SounderTone.Value = 5
			SetMenu(2)
		end
		if Btn == 6 then 
			SetMenu(2)
		end
		return
	end
	
	if fMenu == 4 then
		if Btn == 1 then 
			if script.Parent.SounderDiscon.Value == false then
				script.Parent.SounderDiscon.Value = true
				Indicators.SounderCircuit.BrickColor = BrickColor.new("New Yeller")
			else
				script.Parent.SounderDiscon.Value = false
				Indicators.SounderCircuit.BrickColor = BrickColor.new("Sand red")
			end		
		end
		if Btn == 2 then 
			if script.Parent.RecallDiscon.Value == false then
				script.Parent.RecallDiscon.Value = true
				Indicators.RecallCircuit.BrickColor = BrickColor.new("New Yeller")
			else
				script.Parent.RecallDiscon.Value = false
				Indicators.RecallCircuit.BrickColor = BrickColor.new("Sand red")
			end		
		end
		if Btn == 3 then 
			if script.Parent.VEDiscon.Value == false then
				script.Parent.VEDiscon.Value = true
				Indicators.VE.BrickColor = BrickColor.new("New Yeller")
			else
				script.Parent.VEDiscon.Value = false
				Indicators.VE.BrickColor = BrickColor.new("Sand red")
			end	
		end
		if Btn == 4 then 
			if script.Parent.StrobeDiscon.Value == false then
				script.Parent.StrobeDiscon.Value = true
				Indicators.StrobeCircuit.BrickColor = BrickColor.new("New Yeller")
			else
				script.Parent.StrobeDiscon.Value = false
				Indicators.StrobeCircuit.BrickColor = BrickColor.new("Sand red")
			end	
				
		end
		if Btn == 5 then 
			if script.Parent.FiredoorDiscon.Value == false then
				script.Parent.FiredoorDiscon.Value = true
				Indicators.FiredoorCircuit.BrickColor = BrickColor.new("New Yeller")
			else
				script.Parent.FiredoorDiscon.Value = false
				Indicators.FiredoorCircuit.BrickColor = BrickColor.new("Sand red")
			end	
		end
		if Btn == 6 then 
			SetMenu(2)
		end
		return
	end	
	
end

function SetMenu(N)
	if fMenuLocked then return end
	if N == 1 then
		fMenu = 1
		PanelLcd.SurfaceGui.Frame.Select1.Text = "Alarm Acknowledge"
		PanelLcd.SurfaceGui.Frame.Select2.Text = "Alarm Silence"
		PanelLcd.SurfaceGui.Frame.Select3.Text = "Alarm Reset"
		PanelLcd.SurfaceGui.Frame.Select4.Text = "Trouble Acknowledge"
		PanelLcd.SurfaceGui.Frame.Select5.Text = "Manual Evacuation"
		PanelLcd.SurfaceGui.Frame.Select6.Text = "Menu"		
	end

	if N == 2 then
		fMenu = 2
		PanelLcd.SurfaceGui.Frame.Select1.Text = "Code Change"
		PanelLcd.SurfaceGui.Frame.Select2.Text = "Disconnect"
		PanelLcd.SurfaceGui.Frame.Select3.Text = "Test Message"
		PanelLcd.SurfaceGui.Frame.Select4.Text = "All-Clear Message"
		PanelLcd.SurfaceGui.Frame.Select5.Text = "NOT IN USE"
		PanelLcd.SurfaceGui.Frame.Select6.Text = "Exit Menu"		
	end

	if N == 3 then
		fMenu = 3
		PanelLcd.SurfaceGui.Frame.Select1.Text = "Continius"
		PanelLcd.SurfaceGui.Frame.Select2.Text = "Code 3"
		PanelLcd.SurfaceGui.Frame.Select3.Text = "Pulse"
		PanelLcd.SurfaceGui.Frame.Select4.Text = "Fast Pulse"
		PanelLcd.SurfaceGui.Frame.Select5.Text = "3 Short, 1 Long 3x1"
		PanelLcd.SurfaceGui.Frame.Select6.Text = "Go Back"		
	end

	if N == 4 then
		fMenu = 4
		PanelLcd.SurfaceGui.Frame.Select1.Text = "Sounders"
		PanelLcd.SurfaceGui.Frame.Select2.Text = "Elevator Recall"
		PanelLcd.SurfaceGui.Frame.Select3.Text = "Voice Evac"
		PanelLcd.SurfaceGui.Frame.Select4.Text = "Strobes"
		PanelLcd.SurfaceGui.Frame.Select5.Text = "Fire Door"
		PanelLcd.SurfaceGui.Frame.Select6.Text = "Go Back"		
	end
end





function fExtDiscon(Btx)
	if fAlarm then return end
	local fExtZone = Btx.Name:sub(11)
	local fExtIndi = fExDisInd:FindFirstChild("DisconInd"..fExtZone)
	if fExtIndi == nil then error("Can not find DisconInd for Address "..fExtZone..".XXX") end
	
	local IsDisconnected = false
	for i,l in pairs(fDisconnected) do
		if l == fExtZone then IsDisconnected = true end
	end
	
	if not IsDisconnected then
		fExtIndi.BrickColor = BrickColor.new("New Yeller")
		table.insert(fDisconnected,fExtZone)
	else
		fExtIndi.BrickColor = BrickColor.new("Lime green")		
		for i,l in pairs(fDisconnected) do
			if l == fExtZone then table.remove(fDisconnected,i) end
		end
	end
	
end

for i,l in pairs(fExDisBtn:GetChildren()) do
	l.ClickDetector.MouseClick:connect(function() fExtDiscon(l) end)
end



SP.Parent.DoAlarm.Changed:connect(function()
	if SP.Parent.DoAlarm.Value ~= "NULL" then
		DoAlarm(SP.Parent.DoAlarm.Value)
		SP.Parent.DoAlarm.Value = "NULL"
	end	
end)




function DoAlarm(xAddress)
	if fPuller.Value ~= "NIL" then
		table.insert(fPullers, fPuller.Value)
		fPuller.Value = "NIL"
	end
	if xAddress:find('[A-Z,a-z]') then 
		local Address = xAddress:sub(2)
	else		
		Address = xAddress
	end
	for i,l in pairs(fDisconnected) do if l == Address:sub(1,2) then return end end
	if not fAlarm then
		SetMenu(1)
		fMenuLocked = true
		fAlarm = true
		fStatus.Value = 1
		SetLcd("Ack > Silence > Reset!",2)
		coroutine.resume(coroutine.create(function()
			PanelLcd.Beep:Play()
			repeat 
			Indicators.Fire.BrickColor = BrickColor.new("Really red")
			SetLcd("*** Fire Alarm! ***",1)
			wait(0.5)
			if not fAlarm then break end
			Indicators.Fire.BrickColor = BrickColor.new("Sand red")
			SetLcd("****** Fire Alarm! ******",1)	
			wait(0.5)
			if not fAlarm then break end	
			until fAlarmAck or not fAlarm
			if not fAlarm then return end
			Indicators.Fire.BrickColor = BrickColor.new("Really red")
			SetLcd("*** Fire Alarm! ***",1)	
		end))
		
	end
	
	local Ignore = false
	for i=1, #fAlarms do
		if fAlarms[i] == Address then
			Ignore = true
		end
	end
	if not Ignore then
		table.insert(fAlarms,Address)
		if fExtAlarmSync then fExtAlarm.DoAlarm.Value = Address end
	end


end


function TroubleAck()
	if fExtAlarmSync then fExtAlarm.PanelCommand.Value = "DOTACK" end
	if fTrouble then
		fTroubleP = true
		fTrouble  = false
		PanelLcd.Beep:Stop()	
	end
end


function AlarmAck()
	if fExtAlarmSync then fExtAlarm.PanelCommand.Value = "DOACK" end
	if fAlarm and not fSilence then
		fAlarmAck = true
		PanelLcd.Beep:Stop()
		SetLcd("Beeper Acknowledged",2)	
	end
end



function AlarmSilence()
		if fExtAlarmSync then fExtAlarm.PanelCommand.Value = "DOSIL" end
if fAlarm and fAlarmAck then
	SetLcd("Alarms Silenced",2)
fStatus.Value = 2
SounderCore.Disabled = true
VECore.Disabled = true
fSilence = true
end

end


function AlarmReset()
		if fExtAlarmSync then fExtAlarm.PanelCommand.Value = "DORES" end
if fAlarm and fAlarmAck and fSilence then
SetLcd("RESET..",1)
SetLcd("...",2)
SetLcd("...",3)
SetLcd("...",4)
fStatus.Value = 0
SounderCore.Disabled = true
StrobeCore.Disabled = true
VECore.Disabled = true
fAlarm = false
fAlarmAck = false
fSilence = false
Indicators.Fire.BrickColor = BrickColor.new("Sand red")

for i,l in pairs(fAlarms) do
fAlarms[i] = nil
end
for i,l in pairs(fPullers) do
fPullers[i] = nil
end


SetLcd("T-Tech FireAlert C200",1)
SetLcd("",3)
SetLcd("",4)
if fTroubleP then
SetLcd("System is Ok, Trouble",2)
else 
SetLcd("System is Ok",2)
end
fMenuLocked = false
end
end

function TroubleMonitor(Type)

if not fTrouble then
	fTrouble = true
	coroutine.resume(coroutine.create(function()
		if Type == "Panel" then SetLcd("System Trouble! Press TroubleAck to ack",2) end
		if Type == "Alarm" then SetLcd("Alarm Trouble! Press TroubleAck to ack",2) end
		PanelLcd.Beep:Play()
		repeat
		Indicators.Trouble.BrickColor = BrickColor.new("New Yeller")
		wait(0.15)
		Indicators.Trouble.BrickColor = BrickColor.new("Sand red")
		wait(0.15)		
		until fTrouble == false
		Indicators.Trouble.BrickColor = BrickColor.new("New Yeller")
		SetLcd("System OK, Trouble",2)
	end))
end

end



function SetLcd(Text,Row)
	
	if Row == 1 then
		PanelLcd.SurfaceGui.Frame.L1.Text = Text
	elseif Row == 2 then
		PanelLcd.SurfaceGui.Frame.L2.Text = Text
	elseif Row == 3 then
		PanelLcd.SurfaceGui.Frame.L3.Text = Text
	elseif Row == 4 then
		PanelLcd.SurfaceGui.Frame.L4.Text = Text
	end	
	
end









fStatus.Changed:connect(function()
	if fStatus.Value == 1 then
		repeat
		for i=1, #fAlarms do
			if not fAlarm then return end

			for x,s in pairs(CustomAddressText) do 
			if x == fAlarms[i] then   
				SetLcd(s,4)
			end 
			end
			SetLcd("Alarm at address:  "..fAlarms[i],3)
			wait(2)

		end
		wait()
		until fReset
	end
end)
				





fStatus.Changed:connect(function()
	if fStatus.Value == 1 then
		for i=1, #fPullers do
			if not fAlarm then return end
				SetLcd("Pulled by: "..fPullers[i],4)
		end
	end
	end)













script.Parent.Parent.PanelCommand.Changed:connect(function()
if script.Parent.Parent.PanelCommand.Value ~= "READY" then
	if script.Parent.Parent.PanelCommand.Value == "DOTACK" then
		TroubleAck()
	end
	if script.Parent.Parent.PanelCommand.Value == "DOACK" then
		AlarmAck()
	end
	if script.Parent.Parent.PanelCommand.Value == "DOSIL" then
		AlarmSilence()
	end
	if script.Parent.Parent.PanelCommand.Value == "DORES" then
		AlarmReset()
	end
script.Parent.Parent.PanelCommand.Value = "READY"
end	
end)










--PanelButtons.ButtonAlarmAck.ClickDetector.MouseClick:connect(AlarmAck)
--PanelButtons.ButtonSilence.ClickDetector.MouseClick:connect(AlarmSilence)
--PanelButtons.ButtonReset.ClickDetector.MouseClick:connect(AlarmReset)
SP.Parent.LCDButtons.Button1.ClickDetector.MouseClick:connect(function() DoMenu(1) end)
SP.Parent.LCDButtons.Button2.ClickDetector.MouseClick:connect(function() DoMenu(2) end)
SP.Parent.LCDButtons.Button3.ClickDetector.MouseClick:connect(function() DoMenu(3) end)
SP.Parent.LCDButtons.Button4.ClickDetector.MouseClick:connect(function() DoMenu(4) end)
SP.Parent.LCDButtons.Button5.ClickDetector.MouseClick:connect(function() DoMenu(5) end)
SP.Parent.LCDButtons.Button6.ClickDetector.MouseClick:connect(function() DoMenu(6) end)


Controller.ChildRemoved:connect(function() TroubleMonitor("Panel") end)
Indicators.ChildRemoved:connect(function() TroubleMonitor("Panel") end)
PanelButtons.ChildRemoved:connect(function() TroubleMonitor("Panel") end)
SP.Parent.PanelDoor.ChildRemoved:connect(function() TroubleMonitor("Panel") end)
SP.Parent.ChildRemoved:connect(function() TroubleMonitor("Panel") end)
for i,l in pairs(Workspace:GetChildren()) do if l:FindFirstChild("TeknikkFireDevice") then l.ChildRemoved:connect(function() TroubleMonitor("Alarm") end) end end
SounderCore.Changed:connect(function() if SounderCore.Disabled == true then wait(0.5) SounderCore.Disabled = false end end)
StrobeCore.Changed:connect(function()  if StrobeCore.Disabled ==  true then wait(0.5) StrobeCore.Disabled = false  end end)
VECore.Changed:connect(function()  if VECore.Disabled == true then wait(0.5) VECore.Disabled = false  end end)