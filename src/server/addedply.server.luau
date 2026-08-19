local Players = game:GetService("Players")
local datastoreService = game:GetService("DataStoreService")
local Player = Players.LocalPlayer

local ganjiStorage = datastoreService:GetDataStore("GanjiStorage")
-- protected calls  pcall()
-- local dataKey = "Player" .. Player.UserId
-- local success, err = pcall(function()
--    ganjiStorage:GetAsync(dataKey)
-- setAsync -- updating data
-- end)
local defaultData = {Ganji = 0}

local function onPlayerAdded(Player)
-- Player 093450922095
    local dataKey = "Player"..Player.UserId
    local success, savedData = pcall(function()
        return ganjiStorage:GetAsync(dataKey)
    end)
    if not success then
        warn("Error fetching data: " .. success)
    end

    local inventory = Instance.new("Folder")
    inventory.Name = "Inventory"
    inventory.Parent = Player

    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = Player

    local ganji = Instance.new("IntValue")
    ganji.Name = "Ganji"
    ganji.Value = if (success and savedData ~= nil) then savedData else defaultData.Ganji
    ganji.Parent = leaderstats

    if Player then
        print("Player Added: " .. Player.Name)
    end

end

local function onPlayerRemoved(Player)
    local dataKey = "Player".. Player.UserId
    local leaderstats = Player:FindFirstChild("leaderstats")
    local ganji = leaderstats:FindFirstChild("Ganji")


    local success, err = pcall(function()
        ganjiStorage:SetAsync(dataKey, ganji.Value)
    end)
    if err then
        warn("Error saving data: " .. err)
    end
end


Players.PlayerAdded:Connect(onPlayerAdded)
-- function(player)
Players.PlayerRemoving:Connect(onPlayerRemoved)

    
   



