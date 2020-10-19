local prev 
local parts = script.Parent:GetChildren() 

for i = 1,#parts do 
	if (parts[i].className == "Part") then 
		if (prev ~= nil)then 
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
	if (parts[i].className == "UnionOperation") then 
		if (prev ~= nil)then 
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
end
 
-- DO NOT CHANGE ANYTHING! --
-- This script puts a weld in every brick that needs one.--

-- MAKE SURE YOU ONLY HAVE 1 BRICK NAMED [Handle] !!! --
