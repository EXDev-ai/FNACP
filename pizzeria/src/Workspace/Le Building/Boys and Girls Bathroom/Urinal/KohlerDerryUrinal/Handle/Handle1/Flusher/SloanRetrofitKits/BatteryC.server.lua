function Change()
	
	script.Parent.BatteryLow.Disabled = true
	script.Parent.Automatic.Disabled = false
	script.Parent.AutomaticT.Disabled = true
	script.Parent.AutomaticF.Disabled = true
	script.Parent.SensorUse.Disabled = false
	script.Parent.BatteryLight.BrickColor = BrickColor.new("Really black")
	script.Parent.ChangeBattery.ClickDetector.MaxActivationDistance = 0
	script.Parent.BatteryC.Disabled = true
	
	
end
script.Parent.ChangeBattery.ClickDetector.MouseClick:connect(Change)