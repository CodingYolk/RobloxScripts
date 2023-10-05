--[[KEYBINDS/INPUTS
Up / W
Down / S
Left / A
Right / D

LS (push left stick down) / Shift
A / Space
B / R Key (AC)
Y / F Key (Sprint)
X / E key (interact)
LT / N/A
LB / equip sword
RB / un-equip sword / next item
RT / Mouse1 (Lunge)]]

local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Player = game.Players.LocalPlayer
local sprintspeed = 20


local Bdebounce = false

function autoclicker(mode)
	local autoclick = false
	while true do
		if mode == "start" then
			autoclick = true
		elseif mode == "stop" then
			autoclick = false
		end

		if autoclick then
			-- Simulate a right trigger button press
			local tool = Player.Character:FindFirstChildOfClass("Tool")
			tool:Activate()
		end

		wait(0.1)

		-- Check if B button has been pressed again to stop autoclicking
		if not Bdebounce then
			break
		end
	end
end

-- Button B

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Gamepad1 then
		if input.KeyCode == Enum.KeyCode.ButtonB then
			if Bdebounce == false then
				Bdebounce = true
				autoclicker("start")
				print("Button B pressed on Gamepad1")
			elseif Bdebounce == true then
				Bdebounce = false
				autoclicker("stop")
				print("Button B pressed on Gamepad1")
			end
		end
	end
end)


-- Button Y
local Ydebounce = false

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Gamepad1 then
		if input.KeyCode == Enum.KeyCode.ButtonY then
			if Ydebounce == false then
				Player.Character.Humanoid.WalkSpeed = sprintspeed
				print("Button Y pressed on Gamepad1")
				Ydebounce = true
			else
				Player.Character.Humanoid.WalkSpeed = 16
				print("Button Y pressed on Gamepad1")
				Ydebounce = false
			end
		end
	end
end)
