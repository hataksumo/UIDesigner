
--[[
-- 控制层
--]]

local UILhglNewCtrl = BaseClass("UILhglNewCtrl", UIBaseCtrl)
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"

local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILhglNew)
end
local function EnterFightResponse(msg_obj)
	Logger.Log("收到进入战斗回复")
	--NetManager:GetInstance():RemoveListener(MsgIDDefine.PBFIGHT_ENTER_REED_FIGHT_RESPONSE,EnterFightResponse)
	if msg_obj.OpCode==0 then
		BattleFieldManager:GetInstance().battlePackages=msg_obj.Packages.enterFight;
		--SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle2D)
	else
		UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
	end
end

--发送开始战斗请求
local function SendEnterFightRequest(self,id,map_pos,_campIndex,_passIndex)
	local msd_id = MsgIDDefine.PBFIGHT_ENTER_REED_FIGHT_REQUEST;
	local msg = (MsgIDMap[msd_id])()
	msg.fightId=id;
	BattleFieldManager:GetInstance().fightId=id
	LuHuaGuLouData:GetInstance():SetCurFightId(id,_campIndex,_passIndex);
	BattleFieldManager:GetInstance().battleType=BattleEnum.BattleType.LUHUAGULOU
	BattleFieldManager:GetInstance().sceneConfigId=map_pos
	Logger.Log("进入战斗数据".."战斗id"..id)
	NetManager:GetInstance():SendMessage(msd_id, msg,EnterFightResponse)
	--NetManager:GetInstance():AddListener(MsgIDDefine.PBFIGHT_ENTER_REED_FIGHT_RESPONSE,EnterFightResponse,self)
end


UILhglNewCtrl.CloseSelf = CloseSelf
UILhglNewCtrl.SendEnterFightRequest=SendEnterFightRequest;
return UILhglNewCtrl