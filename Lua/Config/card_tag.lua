--[[
output from excel card.卡牌表.xlsx
--note:
客户端卡牌定位的表
colums:
{ID,ID} ,{Name,名字}
primary key:
#0 [卡牌定位]: ID
]]
local _T = LangUtil.Language
if ddt["card_tag"] ~= nil then
	return ddt["card_tag"]
end
local data = {
	[101] = {Name = _T("均衡型")},
	[102] = {Name = _T("防御型")},
	[103] = {Name = _T("攻击型")},
	[104] = {Name = _T("控制型")},
	[105] = {Name = _T("辅助型")},
	[106] = {Name = _T("连击")},
	[107] = {Name = _T("群攻")}
}
ddt["card_tag"] = data
SetLooseReadonly(data)
return data