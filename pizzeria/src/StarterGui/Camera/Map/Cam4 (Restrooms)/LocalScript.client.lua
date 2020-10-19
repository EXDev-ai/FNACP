local cam = workspace.CurrentCamera

script.Parent.MouseButton1Down:connect(function()
cam.CameraType = Enum.CameraType.Attach
cam.CameraSubject=workspace.CamPart4

local Focus = game.Workspace.CurrentCamera.Focus * CFrame.new(0, 0, 0.05)
game.Workspace.CurrentCamera.CoordinateFrame = CFrame.new(Focus.p)
end)