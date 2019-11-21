--[[
output from excel tip.提示表.xlsx
--note:
按钮不可用的提示文字
colums:
{ID,唯一键} ,{ButtonDes,按钮文本} ,{Dse,限制条件提示的文本}
primary key:
#0 [按钮提示]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ButtonDes = _T("前往突破"),Dse = "地狱道达到%s后可突破"},
	[2] = {ButtonDes = _T("突破"),Dse = "未达到满级，不可突破"},
	[3] = {ButtonDes = _T("突破"),Dse = "突破材料不足"},
	[4] = {ButtonDes = _T("突破"),Dse = "地狱道达到%s后可突破"},
	[5] = {ButtonDes = _T("升星"),Dse = "残魂不足"},
	[6] = {ButtonDes = _T("升星"),Dse = "残魂不足"},
	[7] = {ButtonDes = _T("解封"),Dse = "解封材料不足"},
	[8] = {ButtonDes = _T("自动强化"),Dse = "强化材料不足"},
	[9] = {ButtonDes = _T("强化"),Dse = "强化材料不足"},
	[10] = {ButtonDes = _T("停止强化")},
	[11] = {ButtonDes = _T("培养10次"),Dse = "培养材料不足"},
	[12] = {ButtonDes = _T("培养1次"),Dse = "培养材料不足"},
	[13] = {ButtonDes = _T("培养10次"),Dse = "培养材料不足"},
	[14] = {ButtonDes = _T("洗练"),Dse = "洗练材料不足"},
	[15] = {ButtonDes = _T("继续洗练"),Dse = "洗练材料不足"},
	[16] = {ButtonDes = _T("突破"),Dse = "寄灵人需达到%s级"},
	[17] = {Dse = "地狱道达到%s时解锁"},
	[18] = {ButtonDes = _T("购买"),Dse = "货币不足"}
}