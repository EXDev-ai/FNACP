local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")

local gamePassID = 8308549 --Replace this set of numbers with your gamepass id
 
function onPlayerSpawned(player) 
    
    local hasPass = false
 
    local success, message = pcall(function()
        hasPass = MarketplaceService:UserOwnsGamePassAsync(player.userId, gamePassID)
    end)
-- The script below is for checking whether or not the player has the gamepass.
    if not success then
        warn("Error while checking if player has pass: " .. tostring(message))
        return
    end
 
    if hasPass == true then
  game.ServerStorage.Flashlight:clone().Parent = player.Backpack --replace "SuperFlyGoldBoombox" with your item
 end
end 

game.Players.PlayerAdded:connect(function(player)
  player.CharacterAdded:connect(function()
    onPlayerSpawned(player)
  end)
end)

Players.PlayerSpawned:Connect(onPlayerSpawned)
