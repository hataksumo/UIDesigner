--[[
--note:
客户端卡牌定位的表
colums:
{ID,ID} ,{Name,名字}
primary key:
#0 [卡牌定位]: ID
]]
if ddt["card_tag"] ~= nil then
	return ddt["card_tag"]
end
local data = {
	[101] = {Name = "均衡型"},
	[102] = {Name = "防御型"},
	[103] = {Name = "攻击型"},
	[104] = {Name = "控制型"},
	[105] = {Name = "辅助型"},
	[106] = {Name = "连击"},
	[107] = {Name = "群攻"}
}
ddt["card_tag"] = data
SetLooseReadonly(data)
return data