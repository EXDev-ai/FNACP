Hour = 00
Minute = 00
Second = 00

Day = 00
Month = 00
Year = 00

Lcd = script.Parent.Parent.LCD.SurfaceGui.Frame.L5
function Sync()
local SyncTime = game.HttpService:GetAsync("http://app.teknet.info/time.php?zone=Europe/Oslo")
Day = SyncTime:sub(1,2)
Month = SyncTime:sub(3,4)
Year = SyncTime:sub(5,8)

Hour = SyncTime:sub(9,10)
Minute = SyncTime:sub(11,12)
Second = SyncTime:sub(13,14)
end
Sync()
while true do
	if tonumber(Second) > 59 then
	Second = 00
	Minute = Minute + 1		
	elseif tonumber(Minute) > 59 then
	Minute = 00
	Hour = Hour + 1		
	Sync()
	elseif tonumber(Hour) > 24 then
	Hour = 00
	else
	Second = Second + 1
	end
	
	local FH = "0"
	local FM = "0"
	local FS = "0"
	
	if tonumber(Hour) < 10 then
		FH = "0"..Hour
	else
		FH = Hour
	end
	if tonumber(Minute) < 10 then
		FM = "0"..Minute
	else
		FM = Minute
	end
	if tonumber(Second) < 10 then
		FS = "0"..Second
	else
		FS = Second
	end	
	Lcd.Text = Day.."/"..Month.."/"..Year.." | "..FH..":"..FM..":"..FS.." / Version 3"
	wait(1)
end
