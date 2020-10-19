
Night = game.Workspace.Night.Value
hours = 0 

ampm = 'AM'
local function toggle_ampm()
 if ampm == 'AM' then
  ampm = 'PM'
 else
  ampm = 'AM'
 end
end


while true do
 wait(45)
 hours = hours + 1
 if hours % 12 == 0 then
  toggle_ampm()
 end
 if hours % 13 == 0 then
  hours = 1
 end
 
  game.Workspace.Clock.ClockPart.SurfaceGui.TextLabel.Text = ""..hours.." "..ampm

 if hours == 6 then
  game.StarterGui.Passed.Enabled = true
  script.Sound:Play()
  hours = 0
  Night = Night + 1 
  game.Workspace.Power = 330	
  wait(11)
  if Night == 2 then
  game.StarterGui.Night2.Enabled = true
  game.StarterGui.StartScreen.Frame.Start.StartButtonScript.CameraSwitch:Play() 
  wait(3)
  game.StarterGui.Night2.Enabled = false
    if Night == 3 then
  game.StarterGui.Night3.Enabled = true
  game.StarterGui.StartScreen.Frame.Start.StartButtonScript.CameraSwitch:Play()
  wait(3)
  game.StarterGui.Night3.Enabled = false
    if Night == 4 then
  game.StarterGui.Night4.Enabled = true
  game.StarterGui.StartScreen.Frame.Start.StartButtonScript.CameraSwitch:Play()
  wait(3)
  game.StarterGui.Night4.Enabled = false
    if Night == 5 then
  game.StarterGui.Night5.Enabled = true
  game.StarterGui.StartScreen.Frame.Start.StartButtonScript.CameraSwitch:Play()
  wait(3)
  game.StarterGui.Night5.Enabled = false 
end
  if Night == 6 then
	game.StarterGui.GameFinished.Enabled = true
	script.Nights.Looped = true
	script.Nights:Play()
     end
    end
   end
  end
 end
end
