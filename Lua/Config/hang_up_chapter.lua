--[[
--note:

colums:
{ChaId,章节ID} ,{Name,名字} ,{NeedPlotLevel,所需关卡ID}
primary key:
#0 [挂机派遣章节]: ChaId
]]
local _T = LangUtil.Language
return{
	[302] = {Name = _T("第一章巡逻"),NeedPlotLevel = 10301},
	[303] = {Name = _T("第二章巡逻"),NeedPlotLevel = 10312},
	[304] = {Name = _T("第三章巡逻"),NeedPlotLevel = 10412},
	[305] = {Name = _T("第四章巡逻"),NeedPlotLevel = 10515},
	[306] = {Name = _T("第五章巡逻"),NeedPlotLevel = 10615},
	[307] = {Name = _T("第六章巡逻"),NeedPlotLevel = 10715},
	[308] = {Name = _T("第七章巡逻"),NeedPlotLevel = 10815},
	[309] = {Name = _T("第八章巡逻"),NeedPlotLevel = 10915},
	[310] = {Name = _T("第九章巡逻"),NeedPlotLevel = 11015},
	[311] = {Name = _T("第十章巡逻"),NeedPlotLevel = 11115},
	[312] = {Name = _T("第十一章巡逻"),NeedPlotLevel = 11215},
	[313] = {Name = _T("第十二章巡逻"),NeedPlotLevel = 11315},
	[314] = {Name = _T("第十三章巡逻"),NeedPlotLevel = 11415},
	[315] = {Name = _T("第十四章巡逻"),NeedPlotLevel = 11515}
}