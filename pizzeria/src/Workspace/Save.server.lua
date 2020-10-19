local sessionData = {}

local DataStoreService = game:GetService("DataStoreService")
local playerData = DataStoreService:GetDataStore("PlayerData")
local datastore = game:GetService("DataStoreService"):GetDataStore("Nights")
local key = "user_" .. playerData.userId

local function savePlayerData(playerUserId)
	if sessionData[playerUserId] then
		playerData:SetAsync(playerUserId, sessionData[playerUserId])
	end
end

local function setupPlayerData(player)
	local playerUserId = "Player_" .. player.UserId
	local data = playerData:GetAsync(playerUserId)
	if data then
	    sessionData[playerUserId] = data
	else
		sessionData[playerUserId] = {Nights = 1}
	end
end

game.Players.PlayerAdded:Connect(setupPlayerData)
 

local function saveOnExit(player)
	local playerUserId = "Player_" .. player.UserId
	savePlayerData(playerUserId)
end
  
game.Players.PlayerAdded:Connect(setupPlayerData)
 
game.Players.PlayerRemoving:Connect(saveOnExit)