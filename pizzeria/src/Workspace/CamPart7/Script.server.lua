--[[ By: Brutez. ]]--
local CameraRotateScript=script;
local Camera=CameraRotateScript.Parent;

while true do
for RotateRight=1,0 do
Camera.CFrame=Camera.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(-0.0),0) 
wait(0)
end
wait(2)
for RotateLeft=1,0 do
Camera.CFrame=Camera.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(0.0),0)
wait(0)
end
wait(2)
end
--[[ By: Brutez. ]]--