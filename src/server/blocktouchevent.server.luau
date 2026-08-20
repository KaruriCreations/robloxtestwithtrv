local ReplicatedStorage = game:GetService("ReplicatedStorage")
local touchEvent = ReplicatedStorage:WaitForChild("BlockTouchEvent")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local leaderstats = Player:FindFirstChild("leaderstats")
local ganji = leaderstats:FindFirstChild("Ganji")

local workSpace = game:GetService("Workspace")
local block = workSpace:WaitForChild("Block")

local function changeBlockColor(player, otherPart)
    if block then
        print("Block found")
        block.BrickColor = BrickColor.new("Really red")
        task.wait(3)
        block.BrickColor = BrickColor.new("Institutional white")
    end
end

touchEvent.OnServerEvent:Connect(changeBlockColor)

