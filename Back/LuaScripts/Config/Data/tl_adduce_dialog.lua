--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{CaseId,案件Id} ,{Reply,回复} ,{NeedProf,是否需要证据} ,{AdduceProfReplay,举证正确回复} ,{CertainClue,正确举证Id} ,{NxtDialog,下一段对话Id} ,{PlayerRspNxtId[1],玩家回复下一个结点ID1} ,{PlayerRspNxtId[2],玩家回复下一个结点ID2} ,{PlayerRspContent[1],玩家回复1} ,{PlayerRspContent[2],玩家回复2} ,{IsEnd,是否结束}
primary key:
#0 [举证对白]: Id
]]
local _T = LangUtil.Language
return{
	[1010101] = {CaseId = 10101,Reply = "那我是用什么手法杀死秦漠的？",NeedProf = false,AdduceProfReplay = "你到底有没有认真看现场？",PlayerRspContent = {[1] = "胰岛素过量会致人死亡",[2] = "死者注射量过少"},IsEnd = false},
	[1010102] = {CaseId = 10101,Reply = "别忘了秦漠是别人打死的！",NeedProf = true,AdduceProfReplay = "就算是胰岛素过量又怎样",CertainClue = 101010131,IsEnd = false},
	[1010103] = {CaseId = 10101,Reply = "沈梦不是也知道他有糖尿病？",NeedProf = true,AdduceProfReplay = "短信？",CertainClue = 101010126,IsEnd = false},
	[1010104] = {CaseId = 10101,Reply = "你给我看这个干什么",NeedProf = false,AdduceProfReplay = "好吧我就是凶手",PlayerRspContent = {[1] = "她有不在场证明",[2] = "她当时在现场"},IsEnd = true}
}