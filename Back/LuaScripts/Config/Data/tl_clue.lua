--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{City,城市id} ,{CanFuther,是否可深入调查} ,{IsNeedItem,是否需要使用道具} ,{Required[1],深入调查需要条件1
} ,{Required[2],深入调查需要条件2
} ,{Required[3],深入调查需要条件3
} ,{ComplatedId,完成后变成的线索Id} ,{UseItemErrInfo,错误使用道具信息} ,{UseItemRightInfo,正确使用道具信息} ,{AdduceWords,举证台词} ,{RightId,正确道具} ,{UnlockDialogTopics,解锁话题} ,{IsBrunch,支线}
primary key:
#0 [线索]: Id
]]
local _T = LangUtil.Language
return{
	[101010121] = {City = 101,CanFuther = false,IsNeedItem = false,UnlockDialogTopics = {10101,10201,10301},IsBrunch = false},--现场情况
	[101010122] = {City = 101,CanFuther = true,IsNeedItem = false,Required = {[1] = 10101005},ComplatedId = 101010131,IsBrunch = false},--尸体情况
	[101010123] = {City = 101,CanFuther = false,IsNeedItem = true,ComplatedId = 101010124,UseItemErrInfo = "你尝试使用%s,发现并没有什么作用",UseItemRightInfo = "你使用了紫光灯，发现了一些指纹",RightId = 101010132,IsBrunch = false},--草丛中的白手套
	[101010124] = {City = 101,CanFuther = true,IsNeedItem = false,Required = {[1] = 10101006,[2] = 10101007},ComplatedId = 101010132,UnlockDialogTopics = {10202},IsBrunch = false},--白手套指纹
	[101010125] = {City = 101,CanFuther = true,IsNeedItem = false,Required = {[1] = 10101006},ComplatedId = 101010126,IsBrunch = false},--锁着的死者手机
	[101010126] = {City = 101,CanFuther = false,IsNeedItem = false,AdduceWords = "这是正确举证的回复",IsBrunch = false},--解锁的手机
	[101010128] = {City = 101,CanFuther = false,IsNeedItem = false,UnlockDialogTopics = {10102,10401},IsBrunch = false},--死者背包
	[101010129] = {City = 101,CanFuther = false,IsNeedItem = false,IsBrunch = false},--漂流物
	[101010130] = {City = 101,CanFuther = false,IsNeedItem = false,IsBrunch = false},--病例
	[101010131] = {City = 101,CanFuther = false,IsNeedItem = false,AdduceWords = "这是正确举证的回复",IsBrunch = false},--详细尸检
	[101010132] = {City = 101,CanFuther = false,IsNeedItem = false,IsBrunch = false}--沈梦的指纹
}