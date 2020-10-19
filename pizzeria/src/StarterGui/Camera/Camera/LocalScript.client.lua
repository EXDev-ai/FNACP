local cam = workspace.CurrentCamera

script.Parent.MouseEnter:connect(function()
cam.CameraType = Enum.CameraType.Attach
cam.CameraSubject=workspace.CamPart
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760028"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760054"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760079"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760096"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760135"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760167"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760212"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760241"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760295"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id=189760341"
wait(0.01)
script.Parent.Parent.ImageLabel.Image = "http://www.roblox.com/asset/?id="
script.Parent.Parent.ImageLabel.BackgroundTransparency = 1
local Focus = game.Workspace.CurrentCamera.Focus * CFrame.new(0, 0, 0.05)
game.Workspace.CurrentCamera.CoordinateFrame = CFrame.new(Focus.p)
end)