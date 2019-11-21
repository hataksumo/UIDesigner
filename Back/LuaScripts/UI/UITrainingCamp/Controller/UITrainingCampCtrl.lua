--[[
-- 控制层
--]]

local UITrainingCampCtrl = BaseClass("UITrainingCampCtrl", UIBaseCtrl)
local BattleFieldManager = require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAssistFunction = require "GameLogic.BattleNew.BattleAssistFunction"

local function StartTraining(self, index)
    --开启训练，通知服务器，开始战斗
    local msg_id = MsgIDDefine.PBFIGHT_PVE_ENTER_TEACH_FIGHT_REQUEST
    local msg = MsgIDMap[msg_id]()
    local passItemData = self.model:GetCurPassListSubItemData()[index + 1]
    msg.fightId = passItemData.ID
    MapData:GetInstance().cur_teach_id = passItemData.ID
    BattleFieldManager:GetInstance().fightId = msg.fightId
    BattleFieldManager:GetInstance().battleType = BattleEnum.BattleType.TEACHING
    BattleFieldManager:GetInstance().sceneConfigId = passItemData.MapPosId
    NetManager:GetInstance():SendMessage(msg_id, msg, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        BattleFieldManager:GetInstance().battlePackages = msg_obj.Packages.enterFight
        --SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene)
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle2D)
        BattleAssistFunction.EnterGameJumpEmbattle()
    end)
end

local function CloseSelf(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
    UIManager:GetInstance():CloseWindow(UIWindowNames.UITrainingCamp)
end

UITrainingCampCtrl.CloseSelf = CloseSelf
UITrainingCampCtrl.StartTraining = StartTraining

return UITrainingCampCtrl