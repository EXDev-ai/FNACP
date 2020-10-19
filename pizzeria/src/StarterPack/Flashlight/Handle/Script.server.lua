local Light = script.Parent.Parent.Light.L1
local a = true
local camera = workspace.CurrentCamera

function equip(mouse2)
	mouse2.Button1Down:connect(light)
end

function light()
	if not a then
		Light.Enabled = true
		script.Parent.Parent.Light.BrickColor = script.Parent.White.Value
		script.Parent.Parent.Light.Material = "Neon"
		script.Parent.Sound:Play()
		a = true
	else
		Light.Enabled = false
		script.Parent.Parent.Light.BrickColor = script.Parent.Black.Value
		script.Parent.Parent.Light.Material = "SmoothPlastic"
		script.Parent.Sound2:Play()
		a = false
	end
end

script.Parent.Parent.Equipped:connect(equip)