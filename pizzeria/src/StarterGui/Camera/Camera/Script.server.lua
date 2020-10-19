function OnMouseHover()
script.Sound:Play()
script.Parent.Visible = false
script.Parent.Parent.Map.Visible = true
end
script.Parent.MouseEnter:connect(OnMouseHover)