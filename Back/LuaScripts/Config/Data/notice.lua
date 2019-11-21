--[[
output from excel basicInfo.基础信息.xlsx
--note:

colums:
{ID,ID} ,{Type,类型} ,{Name,名字} ,{Content,内容} ,{IsNew,是否新公告} ,{Order,排序} ,{IfOpen,是否开放}
primary key:
#0 [公告]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {Type = 1,Name = "开测公告",Content = "亲爱的玩家：\n       这是我们的首个版本，可能存在很多问题和不足，非常感谢参加本次限号删档测试。\n       我们希望通过此次测试收集广大玩家的建议，以便对游戏系统和技术进行验证和优化，精益求精，希望正式上线版本可以提供最优质的游戏体验。有关游戏的建议，欢迎加入官方QQ群联系管理员反馈。\n\n       官方QQ群：724613365\n       话不多说，这条街交给你了！",IsNew = 1,Order = 1,IfOpen = 1}
}