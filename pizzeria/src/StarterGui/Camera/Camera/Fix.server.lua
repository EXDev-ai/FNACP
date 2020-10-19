function OnMouseHover()
script.Parent.Parent.Exit.Visible = false
wait(1)
script.Parent.Parent.Exit.Visible = true
wait(1)
end
script.Parent.MouseEnter:connect(OnMouseHover)