local ContextActionService = game:GetService("ContextActionService")
local FROZEN_ACTION_KEY = "freezeMovement"

ContextActionService:BindActionAtPriority(
    FROZEN_ACTION_KEY,
    function() 
        return Enum.ContextActionResult.Sink
    end,
    false,
    Enum. ContextActionPriority.High.Value,
    unpack(Enum.PlayerActions:GetEnumItems())
)

--to unfreeze

ContextActionService:UnbindAction(FROZEN_ACTION_KEY)

