Closed = true
script.Parent.Touched:connect(function(P)
	if P ~= nil and P.Parent ~= nil and P.Parent:FindFirstChild("CardNumber") ~= nil then
				if P.Parent.CardNumber.Value == 0 or P.Parent.CardNumber.Value == 1 then
	if Closed == true then
		Closed = 1
		for i,l in pairs(script.Parent.Parent:GetChildren()) do
			l.CanCollide = false
			l.Transparency = 1
		end
		script.Parent.Parent.FrameDoorLogo.Decal.Transparency = 1
		wait(1)
		Closed = false
		return
	end
	if Closed == false then
		Closed = 1
		for i,l in pairs(script.Parent.Parent:GetChildren()) do
			l.CanCollide = true
			l.Transparency = 0
		end
		script.Parent.Parent.FrameDoorLogo.Decal.Transparency = 0
		wait(1)
		Closed = true
		return
	end
	
				end
				end
end)