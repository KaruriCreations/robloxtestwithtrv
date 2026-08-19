local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local block = Workspace:WaitForChild("Block")

if block then
    print("block founbd")
end


-- local function onBlockTouch(otherPart: BasePart)
--     local character = otherPart:FindFirstAncestorOfClass("Model")
--     if not character then return end

--     local player = Players:GetPlayerFromCharacter(character)
--     if player then
--         block.BrickColor = BrickColor.new("Really red")
--         task.wait(5)
--         block.BrickColor = BrickColor.new("Institutional white")
--     end
-- end

-- block.Touched:Connect(onBlockTouch)
local isCoolDown = false


block.Touched:Connect(function(otherPart: BasePart)
    local character = otherPart.Parent
    if not character then return end
    local player = Players:GetPlayerFromCharacter(character)

    if player and not isCoolDown then
        local leaderstats = player:WaitForChild("leaderstats")
        if not leaderstats then return end
        local Ganji = leaderstats:WaitForChild("Ganji")
        if not Ganji then return end
        isCoolDown = true
        Ganji.Value += 100
        block.BrickColor = BrickColor.new("Really red")
        task.wait(6)
        isCoolDown = false
        block.BrickColor = BrickColor.new("White")
        
        block.BrickColor = BrickColor.new("Institutional white")

    end
end)





