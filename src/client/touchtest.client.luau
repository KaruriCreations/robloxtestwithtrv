local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local touchEvent = ReplicatedStorage:WaitForChild("BlockTouchEvent")
local workSpace = game:GetService("Workspace")
local block = workSpace:WaitForChild("Block")
local MAX_TOUCH = 1
local CURRENT_TOUCH = 0
-- local isTouched = false
-- local isCoolDown = false

 block.Touched:Connect(function(otherPart: BasePart)
    print(otherPart.Name)
    -- local character = otherPart.Parent
    -- local player = Players:GetPlayerFromCharacter(character)    
    -- isTouched = true
    CURRENT_TOUCH += 1
    -- if CURRENT_TOUCH > MAX_TOUCH then
    --     print("Touch limit reached")
    --     return
    -- end
    touchEvent:FireServer()
end) 

 



-- block.Touched:Connect(function(otherPart: BasePart)
--     print(otherPart.Name)
--     local character = otherPart.Parent
--     local player = Players:GetPlayerFromCharacter(character)
--     -- isTouched = true
--     CURRENT_TOUCH += 1
--     -- if CURRENT_TOUCH > MAX_TOUCH then
--     --     print("Touch limit reached")
--     --     return
--     -- end

--     touchEvent:FireServer()
-- end)







-- local function Sprint()
    
-- end

-- UserInputService.InputBegan:Connect(function(input)
--     if input.KeyCode == Enum.KeyCode.B then
--         Sprint()
--         print("trevor ni shoste")
--     end
-- end)