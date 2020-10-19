wait(0.2)
for i=0,50 do
	script.Parent.Water1.CFrame = script.Parent.Water1.CFrame * CFrame.new(0, -0.0003, 0)
	wait(0.001)
end
script.Disabled = true