local Owner = {}

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
	if player.UserId == game.PrivateServerOwnerId then
		table.insert(Owner, player.Name) -- Add the server owner to the Owner table
		warn("[Chat Tag]: Private server owner registered as an owner!")
	end
end)


local ServerScriptService = game:GetService("ServerScriptService")
local ChatService = require(ServerScriptService:WaitForChild("ChatServiceRunner"):WaitForChild("ChatService"))
local Player = game:GetService("Players")

ChatService.SpeakerAdded:Connect(function(plr)
	local Speaker = ChatService:GetSpeaker(plr)
	for _, v in pairs(Owner) do
		if Player[plr].Name == v then
			Speaker:SetExtraData("Tags", {{TagText = "Server Owner", TagColor = Color3.fromRGB(255, 255, 255)}})
			Speaker:SetExtraData("NameTag", Color3.fromRGB(255, 255, 255))
		end
	end
end)
