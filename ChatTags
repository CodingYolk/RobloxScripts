--╔══╦═╦═╗╔╦═╦╦═╦╦═╦╦╦═╦══╦╦═╦═╦╦══╗
--╠╗╚╣╠╣╠╣║║║║║║║║║║║║╩╠╗╔╣║║║║║╠╗╚╣
--╚══╩═╩═╝╚╩╩═╩╩═╩═╩═╩╩╝╚╝╚╩═╩╩═╩══╝
--[[Contributors: chumyolk]]

-- Settings
local GroupID = 14974836 -- Your Group ID Here
local Color = Color3.fromRGB(255, 0, 127) -- Tag Color 
-- (If you just click between the parenthesis, it will have a rainbow circle. Which you can click to select the color you want.)

-- Script
game.Players.PlayerAdded:Connect(function(player)
	if player:IsInGroup(GroupID) then
		local tags = {
			{
				TagText = (player:GetRoleInGroup(GroupID)),
				TagColor = Color
			}
		}
		local ChatService = require(game:GetService("ServerScriptService"):WaitForChild("ChatServiceRunner").ChatService)
		local speaker = nil
		while speaker == nil do
			speaker = ChatService:GetSpeaker(player.Name)
			if speaker ~= nil then break end
			wait(0.01)
		end
		speaker:SetExtraData("Tags",tags)
		speaker:SetExtraData("ChatColor",Color3.fromRGB(255, 255, 255))
	end
end)
