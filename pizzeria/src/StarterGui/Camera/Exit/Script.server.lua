function OnHoverMouse()
script.Sound:Play()
script.Parent.Visible = false
--Continue the cam button to visible false mean it to invisible. Mean to exit it.
script.Parent.Parent.Map.Visible = false
script.Parent.Parent.Camera.Visible = false
wait(1)
script.Parent.Parent.Camera.Visible = true
wait(1)
end
script.Parent.MouseEnter:connect(OnHoverMouse)