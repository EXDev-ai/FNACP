t = script.Parent

wait(5)

function stick(x, y)
	weld = Instance.new("Weld") 
	weld.Part0 = x
	weld.Part1 = y
	local HitPos = x.Position
	local CJ = CFrame.new(HitPos) 
	local C0 = x.CFrame:inverse() *CJ 
	local C1 = y.CFrame:inverse() * CJ 
	weld.C0 = C0 
	weld.C1 = C1 
	weld.Parent = x
end

function Weldnow()
	c = t:children()
	for n = 1, #c do
		if (c[n].className == "Part") then
			if (c[n].Name ~= "MainPart") then
				stick(c[n], t.MainPart)
				wait()
				c[n].Anchored = false
			end

	if (c[n].className == "UnionOperation") then
			if (c[n].Name ~= "MainPart") then
				stick(c[n], t.MainPart)
				wait()
				c[n].Anchored = false
			end

	if (c[n].className == "Flag") then
			if (c[n].Name ~= "MainPart") then
				stick(c[n], t.MainPart)
				wait()
				c[n].Anchored = false
			end

    if (c[n].className == "Handle") then
			if (c[n].Name ~= "MainPart") then
				stick(c[n], t.MainPart)
				wait()
				c[n].Anchored = false
			end

 	if (c[n].className == "Hat") then
			if (c[n].Name ~= "MainPart") then
				stick(c[n], t.MainPart)
				wait()
				c[n].Anchored = false
			end
		end
		if (c[n].className == "Seat") then
			if (c[n].Name ~= "MainPart") then
				stick(c[n], t.MainPart)
				wait()
				c[n].Anchored = false
			end
		end
		if (c[n].className == "SpawnLocation") then
			if (c[n].Name ~= "MainPart") then
				stick(c[n], t.MainPart)
				wait()
				c[n].Anchored = false
			end
		end
		if (c[n].className == "TrussPart") then
			if (c[n].Name ~= "MainPart") then
				stick(c[n], t.MainPart)
				wait()
				c[n].Anchored = false
			end
		end
		if (c[n].className == "VehicleSeat") then
			if (c[n].Name ~= "MainPart") then
				stick(c[n], t.MainPart)
				wait()
				c[n].Anchored = false
			end
		end
	end
end

wait()

t.MainPart.Anchored = false

Weldnow()