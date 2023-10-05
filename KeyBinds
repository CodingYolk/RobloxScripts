--╔══╦═╦═╗╔╦═╦╦═╦╦═╦╦╦═╦══╦╦═╦═╦╦══╗
--╠╗╚╣╠╣╠╣║║║║║║║║║║║║╩╠╗╔╣║║║║║╠╗╚╣
--╚══╩═╩═╝╚╩╩═╩╩═╩═╩═╩╩╝╚╝╚╩═╩╩═╩══╝
--[[Contributors: chumyolk]]

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character:WaitForChild("Humanoid")
local UserInputService = game:GetService('UserInputService')
local running = false
local animation = nil

UserInputService.InputBegan:Connect(function(input)
	if (input.KeyCode == Enum.KeyCode.F) then
		if running == false then
			running = true
			print(Player.Name.." is Saluting")
			animation = Humanoid:LoadAnimation(script.AtEase)
			animation:Play()
		elseif running == true then
			running = false
			animation:Stop()
		end
	elseif (input.KeyCode == Enum.KeyCode.G) then
		if running == false then
			running = true
			print(Player.Name.." is Saluting")
			animation = Humanoid:LoadAnimation(script.Salute)
			animation:Play()
		elseif running == true then
			running = false
			animation:Stop()
		end
	end	
end)
