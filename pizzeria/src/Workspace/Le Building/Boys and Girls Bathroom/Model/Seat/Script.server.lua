function onChildAdded(child)
if child.Name == "SeatWeld" then
if child.Part1.Name == "Torso" then
player = game.Players:GetPlayerFromCharacter(child.Part1.Parent)
if player ~= nil then
tool = game.Lighting.BLightning:Clone() -- Change this to whatever it is
tool.Parent = player.Backpack
end
end
end
end

function onChildRemoved()
if tool ~= nil then
tool:Remove()
end
end

script.Parent.ChildAdded:connect(onChildAdded)
script.Parent.ChildRemoved:connect(onChildRemoved)

-- Put it in the seat you want to give a tool.
