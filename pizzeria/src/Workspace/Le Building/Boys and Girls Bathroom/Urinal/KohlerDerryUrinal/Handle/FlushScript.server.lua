

function toiletHandle()
	script.Parent.Handle1.Hinge1.Transparency = 1
	script.Parent.Handle1.Interactive1.Transparency = 1
	script.Parent.Handle1.Part1.Transparency = 1
--
	script.Parent.Handle2.Hinge1.Transparency = 0
	script.Parent.Handle2.Interactive1.Transparency = 0
	script.Parent.Handle2.Part1.Transparency = 0
--	
	script.Parent.Handle3.Hinge1.Transparency = 1
	script.Parent.Handle3.Interactive1.Transparency = 1
	script.Parent.Handle3.Part1.Transparency = 1
	wait(0.03)
	script.Parent.Handle1.Hinge1.Transparency = 1
	script.Parent.Handle1.Interactive1.Transparency = 1
	script.Parent.Handle1.Part1.Transparency = 1
--
	script.Parent.Handle2.Hinge1.Transparency = 1
	script.Parent.Handle2.Interactive1.Transparency = 1
	script.Parent.Handle2.Part1.Transparency = 1
--	
	script.Parent.Handle3.Hinge1.Transparency = 0
	script.Parent.Handle3.Interactive1.Transparency = 0
	script.Parent.Handle3.Part1.Transparency = 0
	script.Parent.Handle1.Flusher.AutoFlush.Disabled = false
	wait(0.03)
	script.Parent.Handle1.Hinge1.Transparency = 1
	script.Parent.Handle1.Interactive1.Transparency = 1
	script.Parent.Handle1.Part1.Transparency = 1
--
	script.Parent.Handle2.Hinge1.Transparency = 0
	script.Parent.Handle2.Interactive1.Transparency = 0
	script.Parent.Handle2.Part1.Transparency = 0
--	
	script.Parent.Handle3.Hinge1.Transparency = 1
	script.Parent.Handle3.Interactive1.Transparency = 1
	script.Parent.Handle3.Part1.Transparency = 1
	wait(0.03)
	script.Parent.Handle1.Hinge1.Transparency = 0
	script.Parent.Handle1.Interactive1.Transparency = 0
	script.Parent.Handle1.Part1.Transparency = 0
--
	script.Parent.Handle2.Hinge1.Transparency = 1
	script.Parent.Handle2.Interactive1.Transparency = 1
	script.Parent.Handle2.Part1.Transparency = 1
--	
	script.Parent.Handle3.Hinge1.Transparency = 1
	script.Parent.Handle3.Interactive1.Transparency = 1
	script.Parent.Handle3.Part1.Transparency = 1
	wait(0.03)
end

			
			
			

script.Parent.Push.ClickDetector.MouseClick:connect(toiletHandle)

