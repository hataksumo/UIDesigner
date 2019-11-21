
--[[
-- 控制层
--]]

local UICacodemonCtrl = BaseClass("UICacodemonCtrl", UIBaseCtrl)
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"

local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICacodemon)
end
local function QuickFight(self,groupId,monsterId)
	Logger.Log("当前怪物id。。。。。。。。。。。。。。。。。。。。。。。",monsterId);
 	local times = CacodemonData:GetInstance().earningsTimes
	if times<= 0 then
		UISpecial:GetInstance():UITipText("次数不足~")
		return
	end
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	local msg_id = MsgIDDefine.PBFIGHT_CACODEMON_FIGHT_REQUEST
	local msg_info = (MsgIDMap[msg_id])()
	msg_info.cacodemonGroupId = groupId
	msg_info.cacodemonId = monsterId
	Logger.Log("--------------------------------------怪物的id："..monsterId)
	BattleFieldManager:GetInstance().fightId = monsterId
	BattleFieldManager:GetInstance().battleType=BattleEnum.BattleType.CACODEMON
	BattleFieldManager:GetInstance().sceneConfigId=DataUtil.GetData("arena_message")[1].ArenaPos
	NetManager:GetInstance():SendMessage(msg_id,msg_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBFIGHT_CACODEMON_FIGHT_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		elseif msg_obj.OpCode==0 then
			BattleFieldManager:GetInstance().battlePackages=msg_obj.Packages.enterFight
			--SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle2D)
		end
	end)
end
local function OnHelp(self)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonHelpInfo,5)
end
local function BackMainCtiy(self)
	UIUtil.BackHomeMain()
	UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIChallengeEntrance")
end



UICacodemonCtrl.CloseSelf = CloseSelf
UICacodemonCtrl.QuickFight = QuickFight
UICacodemonCtrl.OnHelp = OnHelp
UICacodemonCtrl.BackMainCtiy = BackMainCtiy
UICacodemonCtrl.CloseSef = CloseSef

return UICacodemonCtrl