local cam = workspace.CurrentCamera

script.Parent.MouseEnter:connect(function()
cam.CameraType = Enum.CameraType.Attach
cam.CameraSubject=workspace.CamPart
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
end)