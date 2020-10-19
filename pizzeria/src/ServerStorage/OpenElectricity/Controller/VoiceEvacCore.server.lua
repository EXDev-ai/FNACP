local Running = false
local Speakers = Workspace.FireAlarmSpeakers:GetChildren()
script.Parent.Parent.Status.Changed:connect(function()
	if not Running and script.Parent.Parent.Status.Value == 1 then
		Running = true
		StopAll()
		repeat
			for i,l in pairs(Speakers) do
				coroutine.resume(coroutine.create(function() l.Stage1:Play() end))
			end
			for i=1, 13 do wait(1) if script.Parent.Parent.Status.Value ~= 1 then Running = false StopAll() return end end
			for i,l in pairs(Speakers) do
				coroutine.resume(coroutine.create(function() l.Stage1:Stop() end))
				coroutine.resume(coroutine.create(function() l.Stage2:Play() end))
			end
			for i=1, 13 do wait(1) if script.Parent.Parent.Status.Value ~= 1 then Running = false StopAll() return end end
		until script.Parent.Parent.Status.Value ~= 1
		Running = false
		StopAll()
	end
	if not Running and script.Parent.Parent.Status.Value == 0 then
		StopAll()
	end
end)

function StopAll()
	for i,l in pairs(Speakers) do
		coroutine.resume(coroutine.create(function() l.Stage1:Stop() end))
		coroutine.resume(coroutine.create(function() l.Stage2:Stop() end))
	end
end