--Made by darkmaster1117

debounce = true

function onTouched(hit)
	if (hit.Parent:findFirstChild("Humanoid") ~= nil and debounce == true) then
		debounce = false
		h = Instance.new("Hat")
		p = Instance.new("Part")
		h.Name = "RedCheckeredBowTie"
		p.Parent = h
		p.Position = hit.Parent:findFirstChild("Head").Position
		p.Name = "Handle" 
		p.formFactor = 0
		p.Size = Vector3.new(2, 1.6, 2) 
		p.BottomSurface = 0 
		p.TopSurface = 0 
		p.Locked = true 
		script.Parent.Mesh:clone().Parent = p
		h.Parent = hit.Parent
		h.AttachmentForward = Vector3.new(-0, -0, -1)
		h.AttachmentPos = Vector3.new(0, -0.08, 0)
		h.AttachmentRight = Vector3.new(1, 0, 0)
		h.AttachmentUp = Vector3.new(0, 1, 0)

		wait(5)
		debounce = true
	end
end

script.Parent.Touched:connect(onTouched)