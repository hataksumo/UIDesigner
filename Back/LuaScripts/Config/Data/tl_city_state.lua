--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{CityId,城市ID} ,{EventId,事件Id} ,{StateId,案件状态Id} ,{Title,标题} ,{Pic,图片} ,{Content,描述} ,{UseItemErrInfo,错误使用道具信息} ,{UseItemRightInfo,正确使用道具信息} ,{RightId,正确道具} ,{UnlockDialogTopics,解锁话题} ,{ChangeState,转换状态}
primary key:
#0 [事件状态]: Id
]]
local _T = LangUtil.Language
return{
	[1] = {CityId = 101,EventId = 1010101,StateId = 1,Title = _T("丽水河岸"),Pic = "head_nmj_1102050",Content = _T("风景秀丽，是山上著名的观光地"),UseItemErrInfo = "你尝试使用%s,发现并没有什么作用",UseItemRightInfo = "你用船票到售票处租了船，新地点开启！",RightId = 101010125,ChangeState = 2},
	[2] = {CityId = 101,EventId = 1010101,StateId = 2,Title = _T("丽水下游"),Pic = "head_nmj_1102050",Content = _T("山下居民区")},
	[3] = {CityId = 101,EventId = 1010102,StateId = 1,Title = _T("医院"),Pic = "head_nmj_1102051",Content = _T("医院")}
}