-- Version 2.0.1 --
-- ©2020 Corrupt Systems, Powering Groups Since 2019 --

local APIModule  = require(game.ReplicatedStorage.WebhookAPI)
local thumbnail_img = "https://i.imgur.com/r4f4HJ9.png"
local asset = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)


local function getServerType()
	if game.PrivateServerId ~= "" then
		if game.PrivateServerOwnerId ~= 0 then
			return " | VIP"
		else
			return " | Event"
		end
	else
		return " | Pending"
	end
end

local newWebHook = APIModule.new("1079626467937370184","vd6--pINKDIPS0ABn4BrhGR-NwIwIZ9zLLPuK6enUGSy50R-Zl4mzL6iD6x-VkOZ2m_g")

game.Players.PlayerAdded:connect(function(Player)
newWebHook:post{
		["content"] = "", 
		["embeds"] = {{
			["author"] = {["name"] = "The Voice of Welpe", ["url"] = "https://www.roblox.com/games/"..(game.PlaceId), ["icon_url"] = ""},
				["thumbnail"] = {["url"] = thumbnail_img },
			["title"] = Player.Name.." has joined",
				["description"] = "**Game:** ".."["..asset.Name..getServerType().."](https://www.roblox.com/games/"..game.PlaceId.."/)",
			["footer"] = {["icon_url"] = thumbnail_img, ["text"] = "©2023 Welpe Industries"},
				["type"] = "rich",
				["color"] = tonumber(65280)
			}}
	}
end)

game.Players.PlayerRemoving:connect(function(Player)
	newWebHook:post{
		["content"] = "", 
		["embeds"] = {{
			["author"] = {["name"] = "The Voice of Welpe", ["url"] = "https://www.roblox.com/games/"..(game.PlaceId), ["icon_url"] = ""},
			["thumbnail"] = {["url"] = thumbnail_img },
			["title"] = Player.Name.." has left",
			["description"] = "**Game:** ".."["..asset.Name..getServerType().."](https://www.roblox.com/games/"..game.PlaceId.."/)",
			["footer"] = {["icon_url"] = thumbnail_img, ["text"] = "©2023 Welpe Industries"},
			["type"] = "rich",
			["color"] = tonumber(16711680)
		}}
	}
end)
