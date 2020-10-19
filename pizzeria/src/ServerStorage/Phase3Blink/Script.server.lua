local kickAnimation = Instance.new("Animation")
kickAnimation.AnimationId = "rbxassetid://4732903896"
local animController = Instance.new("AnimationController", script.Parent)
local kickAnimationTrack = animController:LoadAnimation(kickAnimation)

kickAnimationTrack:Play()