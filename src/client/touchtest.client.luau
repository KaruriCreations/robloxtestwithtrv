local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local function Sprint()
    
end

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.B then
        Sprint()
        print("trevor ni shoste")
    end
end)