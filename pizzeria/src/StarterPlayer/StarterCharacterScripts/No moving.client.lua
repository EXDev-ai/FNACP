game:GetService("ContextActionService"):BindActionAtPriority(
	"t",
	function()
		return Enum.ContextActionResult.Sink
	end,
	false,
	Enum.ContextActionPriority.High.Value + 1,
	unpack(Enum.PlayerActions:GetEnumItems())
)