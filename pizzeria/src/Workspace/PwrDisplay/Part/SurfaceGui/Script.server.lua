while true do
	for i,v in pairs(script.Parent.ImageLabel:GetChildren()) do
		script.Parent.ImageLabel.Image = v.Value
		wait()
	end
	wait()
end