W1 = script.Parent.WaterSwirl1.ParticleEmitter
W2 = script.Parent.WaterSwirl2.ParticleEmitter
W3 = script.Parent.WaterSwirl3.ParticleEmitter
W4 = script.Parent.WaterSwirl4.ParticleEmitter
W5 = script.Parent.WaterSwirl5.ParticleEmitter
W6 = script.Parent.WaterSwirl6.ParticleEmitter
W7 = script.Parent.WaterSwirl7.ParticleEmitter
A1 = script.Parent.a1.ParticleEmitter
A2 = script.Parent.a2.ParticleEmitter
A3 = script.Parent.a3.ParticleEmitter
A4 = script.Parent.a4.ParticleEmitter
A5 = script.Parent.a5.ParticleEmitter
A6 = script.Parent.a6.ParticleEmitter
A7 = script.Parent.a7.ParticleEmitter
--A5 = script.Parent.a5.ParticleEmitter
--W8 = script.Parent.WaterSwirl8.ParticleEmitter
--Clicks = script.Parent.Motorz.Sound
--script.Parent.Pushed.Disabled = true
--Clicks:Play()
--wait(2.25)

script.Parent.Urinal.Flushes:Play()
wait(0.83)


W1.Enabled = true
W2.Enabled = true
W3.Enabled = true
W4.Enabled = true
W5.Enabled = true
W6.Enabled = true
W7.Enabled = true
script.Parent.WaterDown.Disabled = false
--wait(0.6)

A1.Enabled = true
A2.Enabled = true
A3.Enabled = true
A4.Enabled = true
A5.Enabled = true
A6.Enabled = true
A7.Enabled = true

--script.Parent.Blowin.Disabled = false

wait(0.3)

--script.Parent.Light2.BrickColor = BrickColor.new("Really black")
wait(5.17)
--script.Parent.Blowout.Disabled = false

A1.Enabled = false
A2.Enabled = false
A3.Enabled = false
A4.Enabled = false
A5.Enabled = false
A6.Enabled = false
A7.Enabled = false

W1.Enabled = false
W2.Enabled = false
W3.Enabled = false
W4.Enabled = false
W5.Enabled = false
W6.Enabled = false
W7.Enabled = false
--wait(1)

script.Parent.WaterUp.Disabled = false


script.Disabled = true