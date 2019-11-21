local UIEmBattle2DView = BaseClass("UIEmBattle2DView", UIBaseView)
local base = UIBaseView

local UIEmBattle2DCardWrapItem = require "UI.UIEmBattle2D.Component.UIEmBattle2DCardWrapItem";
local UIEmBattle2DDragWrapItem = require "UI.UIEmBattle2D.Component.UIEmBattle2DDragWrapItem";
local UIEmBattle2DJLRWrapItem = require "UI.UIEmBattle2D.Component.UIEmBattle2DJLRWrapItem";
local UIEmBattle2DSHLWrapItem = require "UI.UIEmBattle2D.Component.UIEmBattle2DSHLWrapItem";

local BattleNetManager = require "GameLogic.BattleNew.Logic.Manager.BattleNetManager"
local BattleFieldManager = require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"

local bgTipEffect = "Effect/Prefab/UI/FX_ui_EmBattle2D_BG_Tip.prefab"
local bgInEffect = "Effect/Prefab/UI/FX_ui_EmBattle2D_BG_in.prefab"
local bgOutEffect = "Effect/Prefab/UI/FX_ui_EmBattle2D_BG_out.prefab"

local Input = CS.UnityEngine.Input;
local Screen = CS.UnityEngine.Screen;

local StaticCardData = DataUtil.GetData("card");
local StaticItemData = DataUtil.GetData("item");
local StaticArenaData = DataUtil.GetData("arena_realtime");
-- 转battlegroup
local function ToBattleGroup(self, msgTeam)
    local roles = {};
    local hasJLR = false;
    local transPos = { 1, 0, 2 }
    for i = 1, 3 do
        roles[i] = { host = {}, guardian = {} };
        if self.selfCardData[1][i] ~= nil then
            roles[i].host.cardId = self.selfCardData[1][i].cardXlsxData.id;
            roles[i].host.level = self.selfCardData[1][i].cardXlsxData.level;
            roles[i].host.star = self.selfCardData[1][i].cardXlsxData.starlv;
            hasJLR = true;
        else
            roles[i].host.cardId = 0;
            roles[i].host.level = 0;
            roles[i].host.star = 0;
        end
        if self.selfCardData[2][i] ~= nil then
            roles[i].guardian.cardId = self.selfCardData[2][i].cardXlsxData.id;
            roles[i].guardian.level = self.selfCardData[2][i].cardXlsxData.level;
            roles[i].guardian.star = self.selfCardData[2][i].cardXlsxData.starlv;
        else
            roles[i].guardian.cardId = 0;
            roles[i].guardian.level = 0;
            roles[i].guardian.star = 0;
        end
        roles[i].position = transPos[i]
        if roles[i] ~= nil and msgTeam ~= nil then
            local team = msgTeam:add()
            team.host.cardId = roles[i].host.cardId
            team.host.level = roles[i].host.level
            team.host.star = roles[i].host.star
            team.guardian.cardId = roles[i].guardian.cardId
            team.guardian.level = roles[i].guardian.level
            team.guardian.star = roles[i].guardian.star
            team.position = roles[i].position
        end
    end
    if not hasJLR then
        return nil
    end
    return roles
end

-- 是否有必须上阵的卡牌
local function HasLimitCard(self)
    if self.model.arrayType ~= BattleEnum.BattleType.BIOGRAPLY then
        return true
    end
    local limitCards = BiographyData:GetInstance()._limitCardGroup
    local limitCardsName = {}
    for k, v in ipairs(limitCards) do
        local isUpArray = false
        for i = 1, 3 do
            if self.selfCardData[1][i] ~= nil and self.selfCardData[1][i].cardXlsxData.id == v then
                isUpArray = true
                break
            end
            if self.selfCardData[2][i] ~= nil and self.selfCardData[2][i].cardXlsxData.id == v then
                isUpArray = true
                break
            end
        end
        if not isUpArray then
            table.insert(limitCardsName, StaticCardData[v].Name)
        end
    end
    if table.count(limitCardsName) > 0 then
        local nameStr = ""
        for k, v in pairs(limitCardsName) do
            if k ~= 1 then
                nameStr = nameStr .. "、"
            end
            nameStr = nameStr .. v
        end
        UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(100150), nameStr))
        return false
    end
    return true
end

-- 加载完成，关闭界面
local function OnLoadingComplete(self)
    self.vsImage_anim:Play("FX_ui_UIEmBattle2D_VSImg_out");
    self.backGround_anim:Play("ef_ui_UIEmBattle2D_out");
    if self.beginOut_effect ~= nil then
        self.beginOut_effect.gameObject:SetActive(false);
    end
    self.battleBegin_text.gameObject:SetActive(false);
    TimerManager:GetInstance():SimpleTimerArgs(0.4, function()
        UIMask:GetInstance():CloseEmptyMask(-100)
        if not self.model.saveEmBattle then
            UIManager:GetInstance():AddToWindowStack(UIWindowNames.UIEmBattle2D)
            UIManager:GetInstance():CloseWindow(UIWindowNames.UIEmBattle2D, true)
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_LOADING_OVER)
        else
            UIManager:GetInstance():CloseWindow(UIWindowNames.UIEmBattle2D);
        end
    end, nil, true)
end

-- 游戏开始(PVE)
local function OnGameStart(self)
    Logger.Log("记录位置")
    LJAudioManger:GetInstance():PlayVoice("UI_VS_01")
    local guideGroup = GuideGroup:GetInstance()
    if guideGroup.Runing and guideGroup.CurGuideItem ~= nil and (guideGroup.CurGuideItem.HandleType == 2 or guideGroup.CurGuideItem.HandleType == 4) then
        return
    end
    if self.model.arrayType == BattleEnum.BattleType.PVP then
        return
    end
    if not HasLimitCard(self) then
        return
    end
    local roles = ToBattleGroup(self)
    if roles == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100174))
        return
    end
    UserData:GetInstance():UpDateBattleInfoData(UIUtil.GetKeyByBattleType(self.model.arrayType), roles);
    BattleFieldManager:GetInstance().pve_roles = roles;
    if self.model.arrayType == BattleEnum.BattleType.TEACHING or self.model.arrayType == BattleEnum.BattleType.GUIDE then
        roles = self.model.teachRoles;
    end
    self.netManager = BattleNetManager.New();
    self.netManager:SendPveBattleStartRequest(roles, function(Packages)
        BattleFieldManager:GetInstance().battleLoadPackage = {}
        BattleFieldManager:GetInstance().pve_myTeam = Packages.myTeam
        BattleFieldManager:GetInstance().pve_myGuard = Packages.myGuard
        BattleFieldManager:GetInstance().battleLoadPackage.myTeam = Packages.myTeam
        BattleFieldManager:GetInstance().battleLoadPackage.myGuard = Packages.myGuard
        BattleFieldManager:GetInstance().battleLoadPackage.enemyTeam = self.model.load_enemyTeam
        BattleFieldManager:GetInstance().battleLoadPackage.enemyGuard = self.model.load_enemyGuard

        --关闭聊天界面
        UIUtil.SetChatImgStatus(false)
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIChat)
        --先播放出站动画 再播放闪电 再加载 加载完播放退出动画
        UIMask:GetInstance():ShowEmptyMask(-100)
        if self.backTip_effect ~= nil then
            self.backTip_effect.gameObject:SetActive(false);
        end
        self.btnGroup_obj.gameObject:SetActive(false);
        for i = 1, 3 do
            self.selfJLRCardItems[i]:OnGameReady(true);
            self.selfSHLCardItems[i]:OnGameReady(true);
            self.otherJLRCardItems[i]:ShowBattleImg(true);
            self.selfJLRCardItems[i]:ShowBattleImg(true);
        end
        TimerManager:GetInstance():SimpleTimerArgs(0.3, function()
            self.upHei_img.gameObject:SetActive(true);
            self.downHei_img.gameObject:SetActive(true);
            if self.beginOut_effect ~= nil then
                self.beginOut_effect.gameObject:SetActive(true);
            end
            self.vsImage_anim.gameObject:SetActive(true);
            self.vsImage_anim:Play("FX_ui_UIEmBattle2D_VSImg");
            TimerManager:GetInstance():SimpleTimerArgs(1, function()
                if BattleFieldManager:GetInstance().resetBattle then
                    self.vsImage_anim:Play("FX_ui_UIEmBattle2D_VSImg_out");
                    self.backGround_anim:Play("ef_ui_UIEmBattle2D_out");
                    if self.beginOut_effect ~= nil then
                        self.beginOut_effect.gameObject:SetActive(false);
                    end
                    TimerManager:GetInstance():SimpleTimerArgs(0.4, function()
                        UIMask:GetInstance():CloseEmptyMask(-100)
                        UIManager:GetInstance():CloseWindow(UIWindowNames.UIEmBattle2D, true)
                        BattleFieldManager:GetInstance().resetBattle = false;
                        UIManager:GetInstance():Broadcast(UIMessageNames.UIBATTLE_RESET_ENTER_BATTLE)
                    end, nil, true)
                else
                    self.vsImage_anim.gameObject:SetActive(false);
                    UIManager:GetInstance():RemoveFormWindowStack(UIWindowNames.UIEmBattle2D)
                    SceneManager:GetInstance():SwitchScene(SceneConfig.BattleScene, UIWindowNames.UIEmBattleLoading, { UIWindowNames.UIEmBattleLoading, UIWindowNames.UIEmBattle2D }, self.model.isRebindScene)
                end
            end, nil, true)
        end, nil, true)
    end);

    --DataManager:GetInstance():Broadcast(DataMessageNames.ON_UIEMBATTLE_START, roles, 1.3);
end

-- 游戏准备(PVP)
local function OnGameReady(self)
    local msd_id = MsgIDDefine.PBPVP_TEAM_READY_REQUEST
    local msg = (MsgIDMap[msd_id])()
    local roles = ToBattleGroup(self, msg.battleGroup)
    if roles == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100174))
        return
    end
    NetManager:GetInstance():SendMessage(msd_id, msg, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        end
        for i = 1, 3 do
            self.selfJLRCardItems[i]:OnGameReady(true);
            self.selfSHLCardItems[i]:OnGameReady(true);
        end
        self.ready_btn.gameObject:SetActive(false);
        self.cancel_btn.gameObject:SetActive(true);
        self.jlr_scrollRect.gameObject:SetActive(false);
        self.battleReady_text.gameObject:SetActive(true);
        if self.readyTimeNum <= 0 then
            self.battleReady_text.gameObject:SetActive(false);
            self.battleBegin_text.gameObject:SetActive(true);
        end
    end)
end

-- 取消准备(PVP)
local function OnGameCancel(self)
    local msd_id = MsgIDDefine.PBPVP_CANCEL_TEAM_REQUEST
    local msg = nil;
    NetManager:GetInstance():SendMessage(msd_id, msg, function(msg_obj)
        Logger.Log("收到取消准备回复msg_obj.OpCode" .. msg_obj.OpCode)
        if msg_obj.OpCode ~= 0 then
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
        end
        for i = 1, 3 do
            self.selfJLRCardItems[i]:OnGameReady(false);
            self.selfSHLCardItems[i]:OnGameReady(false);
        end
        self.ready_btn.gameObject:SetActive(true);
        self.cancel_btn.gameObject:SetActive(false);
        self.jlr_scrollRect.gameObject:SetActive(true);
        self.battleReady_text.gameObject:SetActive(false);
        self:updateSelfUpHeroData();
    end)
end

-- 退出游戏
local function OnGameExit(self)
    local guideGroup = GuideGroup:GetInstance()
    if guideGroup.Runing and guideGroup.CurGuideItem ~= nil and (guideGroup.CurGuideItem.HandleType == 2 or guideGroup.CurGuideItem.HandleType == 4) then
        --新手引导不可退出
        return
    end

    if self.model.arrayType == BattleEnum.BattleType.PVP then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100175))
        return
    end
    local msd_id = MsgIDDefine.PBFIGHT_LEAVE_FIGHT_REQUEST
    local msg = (MsgIDMap[msd_id])()
    local roles = ToBattleGroup(self, msg.team)
    if roles ~= nil then
        UserData:GetInstance():UpDateBattleInfoData(UIUtil.GetKeyByBattleType(self.model.arrayType), roles);
        NetManager:GetInstance():SendMessage(msd_id, msg);
    end
    if BattleFieldManager:GetInstance().resetBattle then
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIEmBattle2D, true);
    else
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIEmBattle2D);
    end
    BattleFieldManager:GetInstance().resetBattle = false;
    if self.model.isRebindScene then
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIBattleIn)
    else
        if SceneManager:GetInstance().current_scene.scene_config.Name ~= SceneConfig.HomeScene.Name then
            UIManager:GetInstance():CloseWindow(UIWindowNames.UIBattleIn)
            SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
        end
    end

end

-- 保存阵容
local function OnSaveEmbattle(self)
    local msd_id = MsgIDDefine.PBARENA_SAVE_DEFENSE_TEAM_REQUEST
    local msg = (MsgIDMap[msd_id])()
    local roles = ToBattleGroup(self, msg.team)
    if roles == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100174))
        return
    end
    UserData:GetInstance():UpDateBattleInfoData(8, roles);
    NetManager:GetInstance():SendMessage(msd_id, msg, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        OnLoadingComplete(self)
    end)
end

--关闭守护灵选择弹框
local function CloseSHLChoose(self)
    self.dragCardIndex = 0;
    self.curListType = 1;
    self.shl_choose_obj.gameObject:SetActive(false);
    self.shlmask_btn.gameObject:SetActive(false);
end
local function LaunchWeakGuide(self)
    local canguide1_9 = self:GetWeakParmeByMidHaveMen()
    local canguide2_1 = self:GetWeakParme()
    if canguide1_9 then
        GuideWeakCheckManager:GetInstance().canWeakGuide = true
        GuideWeakCheckManager:GetInstance():EnterGameCheck(60)
    else
        if canguide2_1 then
            GuideWeakCheckManager:GetInstance().canWeakGuide = true
            GuideWeakCheckManager:GetInstance():EnterGameCheck(40)
        end
    end
end

--新手专用方法  为了移动到物品位置
local function GetGuidePosById(self, heroId, type)
    if type then
        local index = 0
        local paras = 0
        for i = 1, 3 do
            if self.selfCardData[2][i] == nil then
                index = i
            end
        end
        return index, paras
    else
        local index = 0
        local paras = -1
        for i, v in ipairs(self.jlrlist) do
            if v.cardXlsxData.id == heroId then
                index = i - 1
                self.jlr_wrapgroup:SetGridPositionByIndex(index)
                --查找空位
                for i = 1, 3 do
                    if self.selfCardData[1][i] == nil then
                        paras = i
                        break
                    end
                end
                break
            end
        end
        return index, paras
    end

end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.parent_layout = UIUtil.FindTrans(self.transform, "ParentLayout");
    self.parent_layout.gameObject:SetActive(true);
    self.parent_ani = self.parent_layout.transform:GetComponent(typeof(CS.UnityEngine.Animator))
    --寄灵人和守护灵滑动区域
    self.jlr_wrapgroup = self:AddComponent(UIWrapGroup3D, "ParentLayout/BattleArrayLayout/jilingren/Scroll View/GameObject_jlr", UIEmBattle2DDragWrapItem);
    self.jlr_scrollRect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.ScrollRect), "ParentLayout/BattleArrayLayout/jilingren/Scroll View");
    --开始，准备，取消按钮
    self.btnGroup_obj = UIUtil.FindTrans(self.transform, "ParentLayout/BtnGroup");
    self.begin_btn = self:AddComponent(UIButton, "ParentLayout/BtnGroup/Btn_begin");
    self.begin_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        OnGameStart(self);
        --[[
        if BattleFieldManager:GetInstance().fightId==10110 and MapData:GetInstance():GetLastWinLevelId()==10109 then
            if not self:GetWeakParmeByMidHaveMen() then
            OnGameStart(self);
            else
            UISpecial:GetInstance():UITipText("按照指示进行操作才可以开始")
            end
        else
            OnGameStart(self);
        end
--]]

    end)
    self.ready_btn = self:AddComponent(UIButton, "ParentLayout/BtnGroup/Btn_ready");
    self.ready_btn.gameObject:SetActive(false);
    self.ready_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        OnGameReady(self);
    end)
    self.cancel_btn = self:AddComponent(UIButton, "ParentLayout/BtnGroup/Btn_cancel");
    self.cancel_btn.gameObject:SetActive(false);
    self.cancel_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        OnGameCancel(self);
    end)
    self.exit_btn = self:AddComponent(UIButton, "ParentLayout/BtnExit");
    self.exit_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        OnGameExit(self)
    end);
    self.save_btn = self:AddComponent(UIButton, "ParentLayout/BtnGroup/Btn_save");
    self.save_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
        OnSaveEmbattle(self)
    end);
    --特效
    self.bgImg = UIUtil.FindTrans(self.transform, "ParentLayout/bgImage");
    --self.beginOut_effect = UIUtil.FindTrans(self.transform, "ParentLayout/FX_ui_EmBattle2D_BG_out");
    self.backGround_anim = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.Animator), "ParentLayout");
    --self.huoxing_effect = UIUtil.FindTrans(self.transform, "ParentLayout/bgImage/FX_ui_EmBattle2D_BG_in");
    --self.backTip_effect = UIUtil.FindTrans(self.transform, "ParentLayout/bgImage/FX_ui_EmBattle2D_BG_Tip");
    self.vsImage_anim = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.Animator), "ParentLayout/vsImage");
    self.upHei_img = UIUtil.FindTrans(self.transform, "ParentLayout/bgImage/up/upHeiImage");
    self.downHei_img = UIUtil.FindTrans(self.transform, "ParentLayout/bgImage/down/downHeiImage");
    --屏蔽遮罩
    self.mask_btn = self:AddComponent(UIButton, "ParentLayout/maskObj");
    self.mask_btn.gameObject:SetActive(false);
    self.shlmask_btn = self:AddComponent(UIButton, "ParentLayout/SHLmaskObj");
    self.shlmask_btn.gameObject:SetActive(false);
    self.shlmask_btn:SetOnClick(function()
        CloseSHLChoose(self);
    end);
    self.battleBegin_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/battleBeginText");
    self.battleBegin_text:SetText(DataUtil.GetClientText(100169))
    self.battleReady_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/battleReadyText");
    self.battleReady_text:SetText(DataUtil.GetClientText(100170))
    --守护灵选择弹框
    self.shl_choose_obj = UIUtil.FindTrans(self.transform, "ParentLayout/SHLChooseTip");
    self.shl_choose_obj.gameObject:SetActive(true);
    self.shl_wrapgroup = self:AddComponent(UIWrapGroup3D, "ParentLayout/SHLChooseTip/chooseScrollView/chooseGroup", UIEmBattle2DCardWrapItem);
    self.shl_choose_obj.gameObject:SetActive(false);
    self.shl_choose_text = self:AddComponent(UIText, "ParentLayout/SHLChooseTip/tip_1/chooseTip");
    self.shl_choose_close_btn = self:AddComponent(UIButton, "ParentLayout/SHLChooseTip/closeBtn");
    self.shl_choose_close_btn:SetOnClick(function()
        CloseSHLChoose(self);
    end);
    --战力值
    self.selfFight_obj = UIUtil.FindTrans(self.transform, "ParentLayout/BattleArrayLayout/card_fight_self");
    self.otherFight_obj = UIUtil.FindTrans(self.transform, "ParentLayout/BattleArrayLayout/card_fight_other");
    self.otherFight_obj.gameObject:SetActive(false);
    self.selfFightValue_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/card_fight_self/card_item_fight_self_text");
    self.otherFightValue_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/card_fight_other/card_item_fight_other_text");
    self.selfFightTip_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/card_fight_self/card_item_fight_self");
    self.selfFightTip_text:SetText(DataUtil.GetClientText(100167))
    self.otherFightTip_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/card_fight_other/card_item_fight_other");
    self.otherFightTip_text:SetText(DataUtil.GetClientText(100167))
    --先手值
    self.selfFirst_obj = self:AddComponent(UIImage, "ParentLayout/BattleArrayLayout/FirstValue_self");
    self.selfFirst_obj.gameObject:SetActive(false);
    self.otherFirst_obj = self:AddComponent(UIImage, "ParentLayout/BattleArrayLayout/FirstValue_other");
    self.otherFirst_obj.gameObject:SetActive(false);
    self.selfFirstValue_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/FirstValue_self/ForceNum_self");
    self.otherFirstValue_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/FirstValue_other/ForceNum_other");
    self.selfFirstTip_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/FirstValue_self/FirstTip_self");
    self.selfFirstTip_text:SetText(DataUtil.GetClientText(100168));
    self.otherFirstTip_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/FirstValue_other/FirstTip_other");
    self.otherFirstTip_text:SetText(DataUtil.GetClientText(100168));
    self.grayMat = self.selfFirst_obj:GetMat();
    --对手玩家信息（PVP用）
    self.otherUserInfo_obj = UIUtil.FindTrans(self.transform, "ParentLayout/BattleArrayLayout/otherUserGroup");
    self.rightUserName_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/otherUserGroup/name_other");
    self.otherUserGameInfo_obj = UIUtil.FindTrans(self.transform, "ParentLayout/BattleArrayLayout/otherUserGroup/otherInfo");
    self.otherUserIconBg_img = self:AddComponent(UIImage, "ParentLayout/BattleArrayLayout/otherUserGroup/otherInfo/iconBg", AtlasConfig.DynamicTex);
    self.otherUserIcon_img = self:AddComponent(UIImage, "ParentLayout/BattleArrayLayout/otherUserGroup/otherInfo/otherIconImg", AtlasConfig.DynamicTex);
    self.otherUserIconTop_img = self:AddComponent(UIImage, "ParentLayout/BattleArrayLayout/otherUserGroup/otherInfo/topIconBg", AtlasConfig.DynamicTex);
    self.otherUserName_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/otherUserGroup/otherInfo/nameInfo");
    self.otherUserReady_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/otherUserGroup/otherInfo/tipInfoImage/zhunbeiIng");
    self.otherUserReady_text:SetText(DataUtil.GetClientText(100171))
    self.otherUserOver_text = self:AddComponent(UIText, "ParentLayout/BattleArrayLayout/otherUserGroup/otherInfo/tipInfoImage/zhunbeiOver");
    self.otherUserOver_text:SetText(DataUtil.GetClientText(100172))
    self.otherCardGroup_obj = UIUtil.FindTrans(self.transform, "ParentLayout/BattleArrayLayout/CardGroup_other");

    --自己和对方卡牌预设
    self.selfJLRCardItems = {};
    self.selfSHLCardItems = {};
    self.otherJLRCardItems = {};
    self.otherSHLCardItems = {};
    --拖动目标区域
    self.dragJLRTargetPosition = {};
    self.dragSHLTargetPosition = {};
    for i = 1, 3 do
        self.selfJLRCardItems[i] = UIEmBattle2DJLRWrapItem.New(self, "ParentLayout/BattleArrayLayout/CardGroup_self/dragJLRIcon" .. i .. "_self");
        self.selfSHLCardItems[i] = UIEmBattle2DSHLWrapItem.New(self, "ParentLayout/BattleArrayLayout/CardGroup_self/dragSHLIcon" .. i .. "_self");
        self.otherJLRCardItems[i] = UIEmBattle2DJLRWrapItem.New(self, "ParentLayout/BattleArrayLayout/CardGroup_other/dragJLRIcon" .. i .. "_other");
        self.otherSHLCardItems[i] = UIEmBattle2DSHLWrapItem.New(self, "ParentLayout/BattleArrayLayout/CardGroup_other/dragSHLIcon" .. i .. "_other");
        self.selfJLRCardItems[i]:OnCreate(self);
        self.selfJLRCardItems[i]:OnSetIndex(i, true);
        self.selfJLRCardItems[i]:OnRefresh(nil);
        self.selfSHLCardItems[i]:OnCreate(self);
        self.selfSHLCardItems[i]:OnSetIndex(i, true);
        self.selfSHLCardItems[i]:OnRefresh(nil);
        self.otherJLRCardItems[i]:OnCreate(self);
        self.otherJLRCardItems[i]:OnSetIndex(i, false);
        self.otherJLRCardItems[i]:OnRefresh(nil);
        self.otherSHLCardItems[i]:OnCreate(self);
        self.otherSHLCardItems[i]:OnSetIndex(i, false);
        self.otherSHLCardItems[i]:OnRefresh(nil);
        table.insert(self.dragJLRTargetPosition, UIUtil.FindComponent(self.selfJLRCardItems[i].gameObject, typeof(CS.UnityEngine.RectTransform)).anchoredPosition);
        table.insert(self.dragSHLTargetPosition, UIUtil.FindComponent(self.selfSHLCardItems[i].gameObject, typeof(CS.UnityEngine.RectTransform)).anchoredPosition);
    end

    --拖动出来的卡牌预设
    self.dragJLRCardItem = UIEmBattle2DCardWrapItem.New(self, "ParentLayout/BattleArrayLayout/dragJLRIcon");
    self.dragJLRCardItem:OnCreate(self);
    self.dragJLRCardItem:OnSetCardAtr(true, false);
    self.dragJLRCardItem.gameObject:SetActive(false);
    self.dragSHLCardItem = UIEmBattle2DCardWrapItem.New(self, "ParentLayout/BattleArrayLayout/dragSHLIcon");
    self.dragSHLCardItem:OnCreate(self);
    self.dragSHLCardItem:OnSetCardAtr(false, false);
    self.dragSHLCardItem.gameObject:SetActive(false);

    local layer = UIManager:GetInstance():GetLayer(UILayers.NormalLayer.Name)
    self.canvasScreen = UIUtil.FindComponent(layer.transform, typeof(CS.UnityEngine.RectTransform)).sizeDelta

    --游戏准备和开始定时器
    self.beginTime_text = self:AddComponent(UIText, "ParentLayout/beginTimeText");
    self.beginTime_text.gameObject:SetActive(false);
    self.beginTimeNum = 3;
    self.beginTimeAction = function(self)
        if self.beginTimeNum > 0 then
            self.beginTime_text.gameObject:SetActive(true);
            self.beginTime_text:SetText(self.beginTimeNum);
            self.beginTimeNum = self.beginTimeNum - 1;
        else
            self.beginTime_text.gameObject:SetActive(false);
            self.beginTimer:Stop();
            self.beginTimer = nil;
            --保存阵容
            local roles = ToBattleGroup(self)
            UserData:GetInstance():UpDateBattleInfoData(UIUtil.GetKeyByBattleType(self.model.arrayType), roles);
            --关闭聊天界面
            UIUtil.SetChatImgStatus(false)
            UIManager:GetInstance():CloseWindow(UIWindowNames.UIChat)
            --先播放出站动画 再播放闪电 再加载 加载完播放退出动画
            UIMask:GetInstance():ShowEmptyMask(-100)
            if self.backTip_effect ~= nil then
                self.backTip_effect.gameObject:SetActive(false);
            end
            self.btnGroup_obj.gameObject:SetActive(false);
            for i = 1, 3 do
                self.otherJLRCardItems[i]:ShowBattleImg(true);
                self.selfJLRCardItems[i]:ShowBattleImg(true);
            end
            TimerManager:GetInstance():SimpleTimerArgs(0.3, function()
                self.upHei_img.gameObject:SetActive(true);
                self.downHei_img.gameObject:SetActive(true);
                if self.beginOut_effect ~= nil then
                    self.beginOut_effect.gameObject:SetActive(true);
                end
                self.vsImage_anim.gameObject:SetActive(true);
                self.vsImage_anim:Play("FX_ui_UIEmBattle2D_VSImg");
                TimerManager:GetInstance():SimpleTimerArgs(1, function()
                    UIManager:GetInstance():RemoveFormWindowStack(UIWindowNames.UIEmBattle2D)
                    SceneManager:GetInstance():SwitchScene(SceneConfig.PVPBattleScene, UIWindowNames.UIEmBattleLoading, { UIWindowNames.UIEmBattleLoading, UIWindowNames.UIEmBattle2D }, self.model.isRebindScene)
                end, nil, true)
            end, nil, true)
        end
    end

    self.readyTimeBg_img = self:AddComponent(UIImage, "ParentLayout/BtnGroup/ReadyTimeBg");
    self.readyTime_text = self:AddComponent(UIText, "ParentLayout/BtnGroup/ReadyTimeBg/readyTimeText");
    self.readyTimeNum = StaticArenaData.Constant.PrepareTime - 5;
    self.readyTime_text:SetText(self.readyTimeNum);
    self.readyTimeAction = function(self)
        if self.readyTimeNum < 1 then
            self.readyTimer:Stop();
            self.readyTimer = nil;
            self:EndDrag();
            self.btnGroup_obj.gameObject:SetActive(false);
            self.jlr_scrollRect.gameObject:SetActive(false);
            self.shl_choose_obj.gameObject:SetActive(false);
            OnGameReady(self);
        end
        self.readyTime_text:SetText(self.readyTimeNum);
        self.readyTimeNum = self.readyTimeNum - 1;
    end

    self.checkDrag = false;--是否检测拖拽
    self.isDrag = false;
    self.startCheckTime = 0;--开始检测时间
    self.dragCardData = nil;--拖拽出来的卡牌数据(寄灵人)
    self.dragCardIndex = 0;--拖拽出来的卡牌位置（0--下方列表 1--左 2--中 3--右）
    self.dragEnterIndex = 0;--拖入的卡牌位置（0--下方列表 1--左 2--中 3--右）
    self.curListType = 1;--当前选择的列表 1--寄灵人列表 2--守护灵列表

    self.jlrlist = nil;--自己可用的寄灵人列表
    self.shllist = nil;--自己可用的守护灵列表
    self.shlChooseList = nil;--守护灵选择列表（去除自己之外上阵的守护灵）
    self.selfCardData = { { nil, nil, nil }, { nil, nil, nil } };--自己的卡牌数据{寄灵人，守护灵}
end

--计算卡牌的战斗力
local function CalculateArrayForceName(self)
    local finalForceNum = 0;
    for i = 1, 2 do
        for j = 1, 3 do
            if self.selfCardData[i][j] ~= nil then
                local singleHero = CardData:GetInstance():GetCardDataById(self.selfCardData[i][j].cardXlsxData.id);
                if singleHero ~= nil then
                    finalForceNum = finalForceNum + singleHero.power;
                end
            end
        end
    end
    return Mathf.Floor(finalForceNum);
end

--更新列表上阵状态
local function updateListUpArray(self, type, cardid, isUp)
    local dataList = type == 2 and self.shllist or self.jlrlist;
    for i, v in ipairs(dataList) do
        if v.cardXlsxData.id == cardid then
            v.isUpArray = isUp;
            break
        end
    end
end

--更新寄灵人列表信息
local function updateCardListData(self)
    --寄灵人
    local type = self.dragCardData.cardXlsxData.type;
    for i = 1, 3 do
        if self.dragCardIndex == 0 and self.selfCardData[type][i] ~= nil and self.selfCardData[type][i].cardXlsxData.id == self.dragCardData.cardXlsxData.id then
            self.dragCardIndex = i;
            updateCardListData(self);
            return
        end
    end
    --关闭卡牌虚化
    for i = 1, 3 do
        self.selfJLRCardItems[i]:ShowVirtualCard(false);
        self.selfSHLCardItems[i]:ShowVirtualCard(false);
    end

    local enterData = nil;
    if self.dragCardIndex == 0 then
        --从列表到上阵
        if self.dragEnterIndex == 0 then
            return
        end
        --守护灵不能单独上阵
        if type == 2 and self.selfCardData[1][self.dragEnterIndex] == nil then
            return
        end
        --上阵的与现有的一样
        enterData = self.selfCardData[type][self.dragEnterIndex];
        if enterData ~= nil then
            if enterData.cardXlsxData.id == self.dragCardData.cardXlsxData.id then
                return
            end
            updateListUpArray(self, type, enterData.cardXlsxData.id, 0);
        end
        self.selfCardData[type][self.dragEnterIndex] = self.dragCardData;
        updateListUpArray(self, type, self.dragCardData.cardXlsxData.id, 1);
    else
        --下阵
        if self.dragEnterIndex == 0 then
            --最后一个寄灵人不能下阵
            if type == 1 then
                local hasJLR = false
                for i = 1, 3 do
                    if i ~= self.dragCardIndex and self.selfCardData[type][i] ~= nil then
                        hasJLR = true
                        break
                    end
                end
                if not hasJLR then
                    UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100174))
                    return
                end
            end
            updateListUpArray(self, type, self.dragCardData.cardXlsxData.id, 0);
            self.selfCardData[type][self.dragCardIndex] = nil;
            --寄灵人下阵，守护灵也要下阵
            if type == 1 and self.selfCardData[2][self.dragCardIndex] ~= nil then
                updateListUpArray(self, 2, self.selfCardData[2][self.dragCardIndex].cardXlsxData.id, 0);
                self.selfCardData[2][self.dragCardIndex] = nil;
            end
        else
            --上阵交换位置
            --守护灵不能单独上阵
            if type == 2 and self.selfCardData[1][self.dragEnterIndex] == nil then
                return
            end
            enterData = self.selfCardData[type][self.dragEnterIndex];
            self.selfCardData[type][self.dragEnterIndex] = self.dragCardData;
            self.selfCardData[type][self.dragCardIndex] = enterData;
            --寄灵人互换，守护灵也要互换
            if type == 1 then
                self.selfCardData[2][self.dragCardIndex], self.selfCardData[2][self.dragEnterIndex] = self.selfCardData[2][self.dragEnterIndex], self.selfCardData[2][self.dragCardIndex];
            end
        end
    end

    self:OnRefresh();
end

--更新自己上阵的卡牌数据
local function updateSelfUpHeroData(self)
    --更新寄灵人卡牌信息
    local showEffect = false;
    for i = 1, 3 do
        self.selfJLRCardItems[i]:OnRefresh(self.selfCardData[1][i]);
        if self.selfCardData[1][i] ~= nil then
            self.selfSHLCardItems[i]:OnRefresh(nil, true);
        else
            showEffect = true;
            self.selfSHLCardItems[i]:OnRefresh(nil, false);
        end
        if self.selfCardData[2][i] ~= nil then
            self.selfSHLCardItems[i]:OnRefresh(self.selfCardData[2][i], true);
        else
            showEffect = true;
        end
    end
    if self.backTip_effect ~= nil then
        self.backTip_effect.gameObject:SetActive(self.bgInAnimOver and showEffect);
    end

    --- 判断是否有可上阵的守护灵，显示提示特效
    self.canUpArray = false;
    if #self.model.shllist > 3 then
        self.canUpArray = true
    else
        local copylist = {}
        for a, b in ipairs(self.model.shllist) do
            table.insert(copylist, b);
        end
        for i = 1, 3 do
            if self.selfCardData[2][i] ~= nil then
                for j = 1, #copylist do
                    if copylist[j].cardXlsxData.id == self.selfCardData[2][i].cardXlsxData.id then
                        table.remove(copylist, j);
                        break
                    end
                end
            end
        end
        if #copylist > 0 then
            self.canUpArray = true
        end
    end
    for i = 1, 3 do
        if self.selfCardData[1][i] ~= nil and self.selfCardData[2][i] == nil then
            self.selfSHLCardItems[i]:ShowDragGlowEffect(self.canUpArray)
        else
            self.selfSHLCardItems[i]:ShowDragGlowEffect(false)
        end
    end
    if self.first_enter then
        self.first_enter = false
    else
        self:LaunchWeakGuide()
    end
end

--更新敌我双方战斗力
local function updateFightValus(self, enemyPower)
    local selfCardPower = CalculateArrayForceName(self)
    self.selfFightValue_text:SetText(selfCardPower);
    local enemyCardPower = enemyPower
    if enemyCardPower ~= nil and enemyCardPower > 0 then
        self.otherFight_obj.gameObject:SetActive(true);
        self.otherFightValue_text:SetText(enemyCardPower);
        if selfCardPower > enemyCardPower then
            self.otherFightValue_text:SetColor32(92, 216, 130, 255)
        elseif selfCardPower < enemyCardPower then
            self.otherFightValue_text:SetColor32(223, 76, 76, 255)
        else
            self.otherFightValue_text:SetColor32(255, 255, 255, 255)
        end
    else
        self.otherFight_obj.gameObject:SetActive(false);
    end
end

--初始化卡牌列表
local function InitWrapList(self)
    self.jlrlist = self.model.jlrlist
    self.jlr_wrapgroup:SetLength(table.count(self.jlrlist))
    self.jlr_wrapgroup:ResetToBeginning()
    self.shllist = self.model.shllist
    self.shl_wrapgroup:SetLength(table.count(self.shllist))
    self.shl_wrapgroup:ResetToBeginning()
    self.selfCardData = self.model.roles;

    for i = 1, 3 do
        self.otherJLRCardItems[i]:OnRefresh(nil);
        self.otherSHLCardItems[i]:OnRefresh(nil);
        self.otherJLRCardItems[i]:OnGameReady(false);
        self.otherSHLCardItems[i]:OnGameReady(false);
        self.selfJLRCardItems[i]:OnGameReady(false);
        self.selfSHLCardItems[i]:OnGameReady(false);
        self.otherJLRCardItems[i]:ShowBattleImg(false);
        self.selfJLRCardItems[i]:ShowBattleImg(false);
        self.selfJLRCardItems[i]:ShowDownTipEffect(false);
        self.selfSHLCardItems[i]:ShowDownTipEffect(false);
    end
    self.arrayType = self.model.arrayType;
    if self.model.arrayType ~= BattleEnum.BattleType.PVP then
        local enemyData = self.model.enemyRoles;
        for i = 1, 3 do
            if enemyData[1][i] ~= nil then
                self.otherJLRCardItems[i]:OnRefresh(enemyData[1][i]);
            end
            if enemyData[2][i] ~= nil then
                self.otherSHLCardItems[i]:OnRefresh(enemyData[2][i]);
            end
            self.otherJLRCardItems[i]:OnGameReady(true);
            self.otherSHLCardItems[i]:OnGameReady(true);
        end
    end

    updateSelfUpHeroData(self);
end

--初始化玩家状态
local function InitUserStatus(self)
    local isPVP = self.model.arrayType == BattleEnum.BattleType.PVP;
    self.begin_btn.gameObject:SetActive(not isPVP);
    self.ready_btn.gameObject:SetActive(isPVP);
    self.rightUserName_text.gameObject:SetActive(false);
    self.otherUserInfo_obj.gameObject:SetActive(isPVP);
    self.otherUserGameInfo_obj.gameObject:SetActive(isPVP);
    self.otherUserReady_text.gameObject:SetActive(isPVP);
    self.otherUserOver_text.gameObject:SetActive(false);
    self.otherCardGroup_obj.gameObject:SetActive(not isPVP);
    self.readyTimeBg_img.gameObject:SetActive(isPVP);
    --PVP模式更新对方玩家信息
    if isPVP then
        self.otherUserIconBg_img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(StaticItemData[self.model.enemyUserData.head].Quality));
        self.otherUserIcon_img:SetSpriteName(StaticItemData[self.model.enemyUserData.head].Icon);
        self.otherUserIconTop_img:SetActive(false)
        self.otherUserName_text:SetText(self.model.enemyUserData.name);
        self.rightUserName_text:SetText(self.model.enemyUserData.name);
        self.readyTimer = TimerManager:GetInstance():GetTimer(1, self.readyTimeAction, self);
        self.readyTimer:Start();
    end
    --只布阵状态
    self.save_btn.gameObject:SetActive(self.model.saveEmBattle);
    if self.model.saveEmBattle then
        self.begin_btn.gameObject:SetActive(false);
    end
end

--设置先手值
local function SetFirstValue(self, selfFirstValue, enemyFirstValue)
    self.selfFirstValue_text:SetText(selfFirstValue);
    self.otherFirstValue_text:SetText(enemyFirstValue);

    --先手值更改颜色
    if selfFirstValue > enemyFirstValue then
        self.selfFirst_obj:SetMat(nil);
        self.selfFirstValue_text:SetColor32(255, 192, 11, 255);
        self.selfFirstTip_text:SetColor32(255, 192, 11, 255);
        self.otherFirst_obj:SetMat(self.grayMat);
        self.otherFirstValue_text:SetColor32(255, 255, 255, 255);
        self.otherFirstTip_text:SetColor32(255, 255, 255, 255);
    else
        self.selfFirst_obj:SetMat(self.grayMat);
        self.selfFirstValue_text:SetColor32(255, 255, 255, 255);
        self.selfFirstTip_text:SetColor32(255, 255, 255, 255);
        self.otherFirst_obj:SetMat(nil);
        self.otherFirstValue_text:SetColor32(255, 192, 11, 255);
        self.otherFirstTip_text:SetColor32(255, 192, 11, 255);
    end

    self.selfFirst_obj.gameObject:SetActive(true);
    self.otherFirst_obj.gameObject:SetActive(true);
end

--设置对方是否准备（PVP）
local function SetOtherReadyState(self, isReady)
    self.otherUserReady_text.gameObject:SetActive(not isReady);
    self.otherUserOver_text.gameObject:SetActive(isReady);
end

--设置对方阵容信息(PVP)
local function SetEnemyCardData(self, data)
    self:EndDrag();
    SetFirstValue(self, Mathf.Floor(data.m_fv), Mathf.Floor(data.e_fv));
    updateFightValus(self, Mathf.Floor(data.e_power))
    if self.model.arrayType == BattleEnum.BattleType.PVP then
        self.otherUserGameInfo_obj.gameObject:SetActive(false);
        self.rightUserName_text.gameObject:SetActive(true);
    end
    local enemyCardData = data.array;
    local myCardData = data.my_array;
    for i = 1, 3 do
        --更新敌方信息
        if enemyCardData[i] ~= nil then
            if enemyCardData[i].jlr ~= nil then
                local cardXlsx = StaticCardData[enemyCardData[i].jlr.id];
                if cardXlsx == nil then
                    Logger.LogError("UIEmBattle2D设置敌方阵容出错");
                end
                local singleCardData = {};
                singleCardData.cardXlsxData = {
                    id = enemyCardData[i].jlr.id,
                    level = enemyCardData[i].jlr.level,
                    starlv = enemyCardData[i].jlr.star,
                    name = cardXlsx.Name,
                    quality = cardXlsx.Quality,
                    type = cardXlsx.Type,
                    cardFace = cardXlsx.CardFace,
                    icon = cardXlsx.Icon,
                    kpkm = cardXlsx.KPKM,
                    crystalType = cardXlsx.CrystalType,
                    callCost = cardXlsx.CallCost,
                    hellSmallLevel = 0,
                    hellNameColor = "FFFFFF"
                };
                self.otherJLRCardItems[i]:OnRefresh(singleCardData);
            end
            if enemyCardData[i].shl ~= nil then
                local cardXlsx = StaticCardData[enemyCardData[i].shl.id];
                if cardXlsx == nil then
                    Logger.LogError("UIEmBattle2D设置敌方阵容出错");
                end
                local singleCardData = {};
                singleCardData.cardXlsxData = {
                    id = enemyCardData[i].shl.id,
                    level = enemyCardData[i].shl.level,
                    starlv = enemyCardData[i].shl.star,
                    quality = cardXlsx.Quality,
                    type = cardXlsx.Type,
                    cardFace = cardXlsx.CardFace,
                    icon = cardXlsx.Icon,
                    crystalType = cardXlsx.CrystalType,
                    callCost = cardXlsx.CallCost
                };
                self.otherSHLCardItems[i]:OnRefresh(singleCardData);
            end
        end
        self.otherJLRCardItems[i]:OnGameReady(true);
        self.otherSHLCardItems[i]:OnGameReady(true);
        --更新我方信息
        if myCardData[i] == nil and self.selfCardData[i] ~= nil then
            self.selfCardData[1][i] = nil;
            self.selfCardData[2][i] = nil;
        end
        if myCardData[i] ~= nil then
            for j = 1, #self.jlrlist do
                if self.jlrlist[j].cardXlsxData.id == myCardData[i].jlr.id then
                    self.selfCardData[1][i] = self.jlrlist[j];
                    break
                end
            end
            if myCardData[i].shl ~= nil then
                for j = 1, #self.shllist do
                    if self.shllist[j].cardXlsxData.id == myCardData[i].shl.id then
                        self.selfCardData[2][i] = self.shllist[j];
                        break
                    end
                end
            else
                self.selfCardData[2][i] = nil;
            end
        end
    end
    updateSelfUpHeroData(self);
    for i = 1, 3 do
        self.selfJLRCardItems[i]:OnGameReady(true);
        self.selfSHLCardItems[i]:OnGameReady(true);
    end
    self.otherCardGroup_obj.gameObject:SetActive(true);
    self.btnGroup_obj.gameObject:SetActive(false);
    self.jlr_scrollRect.gameObject:SetActive(false);
    self.battleReady_text.gameObject:SetActive(false);
    self.battleBegin_text.gameObject:SetActive(true);
    self.shl_choose_obj.gameObject:SetActive(false);
    self.beginTimer:Start();
end

--开始拖拽卡牌
local function BeginDrag(self)
    if self.dragCardData.cardXlsxData.type == 1 then
        self.dragJLRCardItem.gameObject:SetActive(true);
        self.dragJLRCardItem:OnSetData(self.dragCardData);
        if self.selfCardData[2][self.dragCardIndex] == nil then
            self.dragSHLCardItem.gameObject:SetActive(false);
        else
            self.dragSHLCardItem.gameObject:SetActive(true);
            self.dragSHLCardItem:OnSetData(self.selfCardData[2][self.dragCardIndex]);
            self.selfSHLCardItems[self.dragCardIndex]:ShowVirtualCard(true);
        end
    else
        self.dragSHLCardItem.gameObject:SetActive(true);
        self.dragSHLCardItem:OnSetData(self.dragCardData);
        self.dragJLRCardItem.gameObject:SetActive(false);
    end

    self.checkDrag = false;
    self.isDrag = true;

    --- 显示对应闪烁特效
    for i = 1, 3 do
        self.selfJLRCardItems[i]:ShowDragGlowEffect(self.dragCardData.cardXlsxData.type == 1);
        self.selfSHLCardItems[i]:ShowDragGlowEffect(self.dragCardData.cardXlsxData.type ~= 1 and self.selfCardData[1][i] ~= nil);
    end
end

--结束拖拽
local function EndDrag(self)
    self.checkDrag = false;
    self.dragEnterIndex = 0;
    if self.isDrag == false then
        return
    end

    --- 隐藏闪烁特效
    for i = 1, 3 do
        self.selfJLRCardItems[i]:ShowDragGlowEffect(false);
        self.selfSHLCardItems[i]:ShowDragGlowEffect(false);
    end

    if self.dragCardData.cardXlsxData.type == 1 then
        self.curPos = self.dragJLRCardItem.transform.localPosition
    else
        self.curPos = self.dragSHLCardItem.transform.localPosition
    end

    local minDis = Mathf.Infinity;
    for i = 1, 3 do
        if self.dragCardData.cardXlsxData.type == 1 then
            local curDisX = Mathf.Abs(self.dragJLRTargetPosition[i].x - self.curPos.x);
            local curDisY = Mathf.Abs(self.dragJLRTargetPosition[i].y - self.curPos.y);
            if (curDisX <= 200 and curDisY < 300 and curDisX < minDis and curDisY < minDis) then
                self.dragEnterIndex = i;
                self.selfJLRCardItems[i]:ShowDownTipEffect();
                if self.selfCardData[2][self.dragCardIndex] ~= nil then
                    self.selfSHLCardItems[i]:ShowDownTipEffect();
                end
            end
        else
            local curDisX = Mathf.Abs(self.dragSHLTargetPosition[i].x - self.curPos.x);
            local curDisY = Mathf.Abs(self.dragSHLTargetPosition[i].y - self.curPos.y);
            if (curDisX <= 175 and curDisY < 175 and curDisX < minDis and curDisY < minDis) and self.selfCardData[1][i] ~= nil then
                self.dragEnterIndex = i;
                self.selfSHLCardItems[i]:ShowDownTipEffect();
            end
        end
    end
    local guideGroup = GuideGroup:GetInstance()
    if guideGroup.Runing and guideGroup.CurGuideItem ~= nil then
        if guideGroup.CurGuideItem.HandleType == 2 then
            if self.dragCardData.cardXlsxData.id ~= guideGroup.CurGuideItem.TargetId or self.dragEnterIndex ~= guideGroup.array_empty then
                self.isDrag = false;
                self.dragCardIndex = 0;
                self.dragJLRCardItem.gameObject:SetActive(false);
                self.dragSHLCardItem.gameObject:SetActive(false);
                for i = 1, 3 do
                    self.selfJLRCardItems[i]:ShowVirtualCard(false);
                    self.selfSHLCardItems[i]:ShowVirtualCard(false);
                end
                updateSelfUpHeroData(self)
                return
            end
            DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_MidEvent)
        elseif guideGroup.CurGuideItem.HandleType == 4 then
            if self.dragCardData.cardXlsxData.id ~= guideGroup.CurGuideItem.TargetId or self.dragEnterIndex ~= guideGroup.CurGuideItem.TargetPos then
                self.isDrag = false;
                self.dragCardIndex = 0;
                self.dragJLRCardItem.gameObject:SetActive(false);
                self.dragSHLCardItem.gameObject:SetActive(false);
                for i = 1, 3 do
                    self.selfJLRCardItems[i]:ShowVirtualCard(false);
                    self.selfSHLCardItems[i]:ShowVirtualCard(false);
                end
                updateSelfUpHeroData(self)
                return
            end
            DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_MidEvent)
        end
    end
    --Logger.Log(self.dragCardData.cardXlsxData.id)
    updateCardListData(self);
    self.isDrag = false;
    self.dragCardIndex = 0;
    self.dragJLRCardItem.gameObject:SetActive(false);
    self.dragSHLCardItem.gameObject:SetActive(false);
    updateSelfUpHeroData(self);
end

--检测拖拽
local function BattleCheckDrag(self, itemData, cardIndex)
    if itemData == nil then
        self.checkDrag = false;
        EndDrag(self);
    else
        self.checkDrag = true;
        self.startCheckTime = Time.time;
        self.dragCardData = itemData;
        self.dragCardIndex = cardIndex;
    end
end

--更新拖拽的卡牌位置
local function UpdateCardPos(self)
    if self.checkDrag == true then
        self.curPos = Vector2.New((Input.mousePosition.x / Screen.width - 0.5) * self.canvasScreen.x,
                (Input.mousePosition.y / Screen.height - 0.5) * self.canvasScreen.y);
        if self.curPos.x > -800 and self.curPos.x < 800 then
            BeginDrag(self);
            self.lastDragPos = self.curPos
        end
    end
    if self.isDrag == false then
        return ;
    end
    self.curPos = Vector2.New((Input.mousePosition.x / Screen.width - 0.5) * self.canvasScreen.x,
            (Input.mousePosition.y / Screen.height - 0.5) * self.canvasScreen.y);
    --- 卡牌旋转效果
    local posDisX = self.curPos.x - self.lastDragPos.x;
    local rotDixX = Mathf.Floor(Mathf.Min(posDisX * 2, 60));
    if posDisX < 0 then
        rotDixX = Mathf.Floor(Mathf.Max(posDisX * 2, -60));
    end
    self.lastDragPos = self.curPos

    if self.dragCardData.cardXlsxData.type == 1 then
        self.dragJLRCardItem.transform.localPosition = self.curPos;
        self.dragJLRCardItem.transform.localEulerAngles = Vector3.New(0, rotDixX, 0)
        if self.dragSHLCardItem.gameObject.activeInHierarchy then
            self.dragSHLCardItem.transform.localPosition = Vector2.New(self.curPos.x + 209, self.curPos.y - 70);
            self.dragSHLCardItem.transform.localEulerAngles = Vector3.New(0, rotDixX, 0)
        end
    else
        self.dragSHLCardItem.transform.localPosition = self.curPos;
        self.dragSHLCardItem.transform.localEulerAngles = Vector3.New(0, rotDixX, 0)
    end

    --- 显示拖拽提示特效
    local minDis = Mathf.Infinity;
    for i = 1, 3 do
        if self.dragCardData.cardXlsxData.type == 1 then
            local curDisX = Mathf.Abs(self.dragJLRTargetPosition[i].x - self.curPos.x);
            local curDisY = Mathf.Abs(self.dragJLRTargetPosition[i].y - self.curPos.y);
            if (curDisX <= 200 and curDisY < 300 and curDisX < minDis and curDisY < minDis) or i == self.dragCardIndex then
                self.selfJLRCardItems[i]:ShowVirtualCard(true);
                if self.selfCardData[2][self.dragCardIndex] ~= nil then
                    self.selfSHLCardItems[i]:ShowVirtualCard(true);
                else
                    self.selfSHLCardItems[i]:ShowVirtualCard(false);
                end
            else
                self.selfJLRCardItems[i]:ShowVirtualCard(false);
                self.selfSHLCardItems[i]:ShowVirtualCard(false);
            end
        else
            local curDisX = Mathf.Abs(self.dragSHLTargetPosition[i].x - self.curPos.x);
            local curDisY = Mathf.Abs(self.dragSHLTargetPosition[i].y - self.curPos.y);
            if i == self.dragCardIndex or ((curDisX <= 175 and curDisY < 175 and curDisX < minDis and curDisY < minDis) and self.selfCardData[1][i] ~= nil) then
                self.selfSHLCardItems[i]:ShowVirtualCard(true);
            else
                self.selfSHLCardItems[i]:ShowVirtualCard(false);
            end
        end
    end
end

--显示选择守护灵界面(将要设置守护灵的位置)
local function ShowSHLChoose(self, index, isReset)
    BattleCheckDrag(self, nil);
    --是否有对应的寄灵人
    if self.selfCardData[1][index] == nil then
        return
    end
    --判断是否有可上阵的守护灵
    if not self.canUpArray and self.selfCardData[2][index] == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100131))
        return
    end
    local guideGroup = GuideGroup:GetInstance()
    if guideGroup.Runing and (guideGroup.CurType == 18 or guideGroup.CurType == 7) then
        return
    end
    --拷贝出一份守护灵数据，用于单独显示
    if isReset then
        self.shlmask_btn.gameObject:SetActive(true);
        self.shl_choose_text:SetText(string.format(DataUtil.GetClientText(100173), self.selfCardData[1][index].cardXlsxData.name));
        --排序守护灵
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_UIEMBATTLE2D_LIST_ITEM_SORT, 2);
    end
    self.shlChooseList = {};
    for a, b in ipairs(self.model.shllist) do
        table.insert(self.shlChooseList, b);
    end
    for i = 1, 3 do
        if self.selfCardData[2][i] ~= nil and i ~= index then
            for j = 1, #self.shlChooseList do
                if self.shlChooseList[j].cardXlsxData.id == self.selfCardData[2][i].cardXlsxData.id then
                    table.remove(self.shlChooseList, j);
                    break
                end
            end
        end
    end
    self.curListType = 2;
    self.shl_wrapgroup:SetLength(table.count(self.shlChooseList));
    if isReset then
        self.shl_wrapgroup:ResetToBeginning();
    else
        self.shl_wrapgroup:WrapContent(true);
    end

    if not self.shl_choose_obj.gameObject.activeInHierarchy then
        self.shl_choose_obj.gameObject:SetActive(true);
    end
    self.dragCardIndex = index;
    self.dragEnterIndex = index;
end

--设置守护灵数据
local function SetSHLData(self, itemData)
    if itemData == nil then
        if self.selfCardData[2][self.dragCardIndex] == nil then
            return
        else
            --守护灵下阵

            self.dragEnterIndex = 0;
            self.dragCardData = self.selfCardData[2][self.dragCardIndex];
        end
        CloseSHLChoose(self);
    else
        --守护灵上阵
        self.dragCardIndex = 0;
        self.dragCardData = itemData;
        CloseSHLChoose(self);
        self.selfSHLCardItems[self.dragEnterIndex]:ShowDownTipEffect();
    end
    updateCardListData(self);
    self.dragCardIndex = Mathf.Max(self.dragCardIndex, self.dragEnterIndex);
    self.dragEnterIndex = Mathf.Max(self.dragCardIndex, self.dragEnterIndex);
    updateSelfUpHeroData(self);
end

--显示卡牌详细信息
local function CardDetailShow(self, cardData)

end

--加载特效
local function OnLoadEffect(self)
    GameObjectPool:GetInstance():GetGameObjectAsync(bgOutEffect, function(go)
        if not IsNull(go) then
            go.transform:SetParent(self.parent_layout)
            go.transform.localPosition = Vector3.New(0, 0, 0)
            go.transform.localScale = Vector3.New(1, 1, 1)
            go.gameObject:SetActive(false)
            self.beginOut_effect = go
        end
    end)
    GameObjectPool:GetInstance():GetGameObjectAsync(bgInEffect, function(go)
        if not IsNull(go) then
            go.transform:SetParent(self.bgImg)
            go.transform.localPosition = Vector3.New(0, 0, 0)
            go.transform.localScale = Vector3.New(1, 1, 1)
            --go.gameObject:SetActive(false)
            self.huoxing_effect = go
        end
    end)
    GameObjectPool:GetInstance():GetGameObjectAsync(bgTipEffect, function(go)
        if not IsNull(go) then
            go.transform:SetParent(self.bgImg)
            go.transform.localPosition = Vector3.New(0, 0, 0)
            go.transform.localScale = Vector3.New(1, 1, 1)
            go.gameObject:SetActive(false)
            self.backTip_effect = go
        end
    end)
end

local function OnEnable(self)
    base.OnEnable(self)
    self.btnGroup_obj.gameObject:SetActive(true);
    OnLoadEffect(self)
    self.bgInAnimOver = false;
    TimerManager:GetInstance():SimpleTimerArgs(1, function()
        if GuideGroup:GetInstance().Runing then
            DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
        end
        self:LaunchWeakGuide()
    end, nil, true)
    self.first_enter = true
    InitWrapList(self)
    if self.model.arrayType == BattleEnum.BattleType.GUIDE then
        self.mask_btn.gameObject:SetActive(true);
    end
    if self.model.arrayType == BattleEnum.BattleType.PVP then
        self.exit_btn.gameObject:SetActive(false);
    end
    InitUserStatus(self)
    self.beginTimer = TimerManager:GetInstance():GetTimer(1, self.beginTimeAction, self);
    ---进入布阵特效
    self.backGround_anim:Play("ef_ui_UIEmBattle2D_in");
    TimerManager:GetInstance():SimpleTimerArgs(0.4, function()
        self.bgInAnimOver = true;
        updateSelfUpHeroData(self)
    end, nil, true)
    if self.huoxing_effect ~= nil then
        self.huoxing_effect.gameObject:SetActive(true);
    end

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新
    updateFightValus(self, self.model.enemyPower);
    if self.curListType == 1 then
        self.jlr_wrapgroup:SetLength(table.count(self.jlrlist))
        self.jlr_wrapgroup:WrapContent(true);
    else
        ShowSHLChoose(self, Mathf.Max(self.dragCardIndex, self.dragEnterIndex), false);
    end
end

local function Update(self)
    if self.checkDrag == true and Time.time - self.startCheckTime > 0.5 then
        UpdateCardPos(self)
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UIEMBATTLE2D_ON_REFRESH, OnRefresh);
    self:AddUIListener(UIMessageNames.UIEMBATTLE2D_ON_CLICK_SINGLE_CARD, CardDetailShow);
    self:AddUIListener(UIMessageNames.UIEMBATTLE2D_ON_ENEMY_READY, SetOtherReadyState);
    self:AddUIListener(UIMessageNames.UIEMBATTLE2D_ON_ENEMY_GROUP, SetEnemyCardData);
    self:AddUIListener(UIMessageNames.UIEMBATTLE2D_ON_LOADING_COMPLETE, OnLoadingComplete);
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UIEMBATTLE2D_ON_REFRESH, OnRefresh);
    self:RemoveUIListener(UIMessageNames.UIEMBATTLE2D_ON_CLICK_SINGLE_CARD, CardDetailShow);
    self:RemoveUIListener(UIMessageNames.UIEMBATTLE2D_ON_ENEMY_READY, SetOtherReadyState);
    self:RemoveUIListener(UIMessageNames.UIEMBATTLE2D_ON_ENEMY_GROUP, SetEnemyCardData);
    self:RemoveUIListener(UIMessageNames.UIEMBATTLE2D_ON_LOADING_COMPLETE, OnLoadingComplete);
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.bgInAnimOver = false;
    self.checkDrag = false;--是否检测拖拽
    self.isDrag = false;
    self.startCheckTime = 0;--开始检测时间
    self.dragCardData = nil;--拖拽出来的卡牌数据(寄灵人)
    self.dragCardIndex = 0;--拖拽出来的卡牌位置（0--下方列表 1--左 2--中 3--右）
    self.dragEnterIndex = 0;--拖入的卡牌位置（0--下方列表 1--左 2--中 3--右）
    self.curListType = 1;--当前选择的列表 1--寄灵人列表 2--守护灵列表

    self.jlrlist = nil;--自己可用的寄灵人列表
    self.shllist = nil;--自己可用的守护灵列表
    self.shlChooseList = nil;--守护灵选择列表（去除自己之外上阵的守护灵）
    self.selfCardData = { { nil, nil, nil }, { nil, nil, nil } };--自己的卡牌数据{寄灵人，守护灵}
    self.mask_btn.gameObject:SetActive(false);
    self.shlmask_btn.gameObject:SetActive(false);
    self.shl_choose_obj.gameObject:SetActive(false);
    if self.beginOut_effect ~= nil then
        GameObjectPool:GetInstance():RecycleGameObject(bgOutEffect, self.beginOut_effect);
        self.beginOut_effect = nil
    end
    if self.huoxing_effect ~= nil then
        GameObjectPool:GetInstance():RecycleGameObject(bgInEffect, self.huoxing_effect);
        self.huoxing_effect = nil
    end
    if self.backTip_effect ~= nil then
        GameObjectPool:GetInstance():RecycleGameObject(bgTipEffect, self.backTip_effect);
        self.backTip_effect = nil
    end
    self.vsImage_anim.gameObject:SetActive(false);
    self.upHei_img.gameObject:SetActive(false);
    self.downHei_img.gameObject:SetActive(false);
    if self.beginTimer ~= nil then
        self.beginTimer:Stop();
        self.beginTimer = nil;
    end
    if self.readyTimer ~= nil then
        self.readyTimer:Stop();
        self.readyTimer = nil;
    end
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)

end

local function GetCardPos(is_hero, index)
    local path = ""
    if is_hero then
        if index == 1 then
            path = "UIRoot/BackgroudLayer/UIEmBattle2D/ParentLayout/BattleArrayLayout/CardGroup_self/dragJLRIcon1_self"
        elseif index == 2 then
            path = "UIRoot/BackgroudLayer/UIEmBattle2D/ParentLayout/BattleArrayLayout/CardGroup_self/dragJLRIcon2_self"
        elseif index == 3 then
            path = "UIRoot/BackgroudLayer/UIEmBattle2D/ParentLayout/BattleArrayLayout/CardGroup_self/dragJLRIcon3_self"
        end
    else
        if index == 1 then
            path = "UIRoot/BackgroudLayer/UIEmBattle2D/ParentLayout/BattleArrayLayout/CardGroup_self/dragSHLIcon1_self"
        elseif index == 2 then
            path = "UIRoot/BackgroudLayer/UIEmBattle2D/ParentLayout/BattleArrayLayout/CardGroup_self/dragSHLIcon2_self"
        elseif index == 3 then
            path = "UIRoot/BackgroudLayer/UIEmBattle2D/ParentLayout/BattleArrayLayout/CardGroup_self/dragSHLIcon3_self"
        end
    end
    return path
end
local function GetWeakParmeByMidHaveMen(self)
    local curLevel = MapData:GetInstance():GetCurSelectLevelId();
    --and UserData:GetInstance():JudgeFightData(curLevel)
    if curLevel == 10110  and self.model.arrayType ~= BattleEnum.BattleType.PVP then
        if not self:GetWeakParme() and MapData:GetInstance():GetLastWinLevelId()==10109 then
            if self.selfJLRCardItems[2].itemData.cardXlsxData.id~=1101001 then
                if self.selfJLRCardItems[1].itemData.cardXlsxData.id==1101001 then
                    return true, 1, GetCardPos(true, 1), GetCardPos(true, 2)
                elseif self.selfJLRCardItems[3].itemData.cardXlsxData.id==1101001 then
                    return true, 1, GetCardPos(true, 3), GetCardPos(true, 2)
                end
            end
        else
            if self.selfJLRCardItems[2].itemData ~= nil then
                --第一种引导
                if self.selfJLRCardItems[1].itemData == nil then
                    return true, 1, GetCardPos(true, 2), GetCardPos(true, 1)
                elseif self.selfJLRCardItems[3].itemData == nil then
                    return true, 1, GetCardPos(true, 2), GetCardPos(true, 3)
                else
                    local canguide, canDrag, objpath, begin_index = self:GetWeakParme()
                    return canguide, 2, canDrag, objpath, begin_index
                end
            else
                for i = 1, 2 do
                    local pos = i
                    if i == 2 then
                        pos = 3
                    end
                    if self.selfJLRCardItems[pos].itemData == nil then
                        local jlr_num = #self.jlrlist
                        for j = 1, jlr_num do
                            if self.jlrlist[j].isUpArray ~= 1 then
                                --表示有可上阵寄灵人
                                return true, 2, true, GetCardPos(true, pos), j
                            end
                        end
                    end
                end
                for i = 1, 2 do
                    local pos = i
                    if i == 2 then
                        pos = 3
                    end
                    if self.selfSHLCardItems[pos].itemData == nil and self.selfJLRCardItems[pos].itemData ~= nil then
                        local shl_num = #self.shllist
                        for j = 1, shl_num do
                            if self.shllist[j].isUpArray ~= 1 then
                                return true, 2, false, GetCardPos(false, pos), pos
                            end
                        end
                    end
                end
                return false
            end
        end
    end
    return false
end
local function GetWeakParmeBySHL(self)
    --检测是是否出现点击守护灵
    --箭头指引 点击守护灵
    local curLevel = MapData:GetInstance():GetCurSelectLevelId();
    if curLevel >= 10202 and curLevel <= 10301 and self.model.arrayType ~= BattleEnum.BattleType.PVP then
        for i = 1, 3 do
            if self.selfSHLCardItems[i].itemData == nil and self.selfJLRCardItems[i].itemData ~= nil then
                local shl_num = #self.shllist
                for i = 1, shl_num do
                    if self.shllist[i].isUpArray ~= 1 then
                        return false
                    end
                end
                return true, GetCardPos(false, i)
            end
        end
    end
    return false
end

local function GetWeakParme(self)
    --检测是否缺上阵
    --self.selfJLRCardItems[i].itemData  判断是否是Nil
    --self.jlrlist[i].isUpArray  是否上阵==1 上阵  寄灵人数量
    --返回四个参数  第一个  是否需要引导    第二个  检查寄灵人 是否可拖拽   第三个 镇上的位置  第四个开始位置
    --优先中间  左边 右边 判断~~
    local curLevel = MapData:GetInstance():GetCurSelectLevelId();
    --if curLevel<10201   then
    --  return false
    --end
    if self.model.arrayType == BattleEnum.BattleType.PVP then
        return false
    end

    for i = 1, 3 do
        local pos = 0
        if i == 1 then
            pos = 2
        elseif i == 2 then
            pos = 1
        else
            pos = 3
        end
        if self.selfJLRCardItems[pos].itemData == nil then
            local jlr_num = #self.jlrlist
            for j = 1, jlr_num do
                if self.jlrlist[j].isUpArray ~= 1 then
                    --表示有可上阵寄灵人
                    return true, true, GetCardPos(true, pos), j
                end
            end
        end
    end
    for i = 1, 3 do
        local pos = 0
        if i == 1 then
            pos = 2
        elseif i == 2 then
            pos = 1
        else
            pos = 3
        end
        if self.selfSHLCardItems[pos].itemData == nil and self.selfJLRCardItems[pos].itemData ~= nil then
            local shl_num = #self.shllist
            for j = 1, shl_num do
                if self.shllist[j].isUpArray ~= 1 then
                    return true, false, GetCardPos(false, pos), pos
                end
            end
        end
    end
    return false
end
UIEmBattle2DView.OnCreate = OnCreate
UIEmBattle2DView.OnEnable = OnEnable
UIEmBattle2DView.OnRefresh = OnRefresh
UIEmBattle2DView.Update = Update;
UIEmBattle2DView.OnAddListener = OnAddListener
UIEmBattle2DView.OnRemoveListener = OnRemoveListener
UIEmBattle2DView.OnDisable = OnDisable
UIEmBattle2DView.OnDestroy = OnDestroy
UIEmBattle2DView.EndDrag = EndDrag;
UIEmBattle2DView.BattleCheckDrag = BattleCheckDrag;
UIEmBattle2DView.UpdateCardPos = UpdateCardPos;
UIEmBattle2DView.ShowSHLChoose = ShowSHLChoose;
UIEmBattle2DView.SetSHLData = SetSHLData;
UIEmBattle2DView.BeginDrag = BeginDrag
UIEmBattle2DView.updateSelfUpHeroData = updateSelfUpHeroData
UIEmBattle2DView.GetWeakParme = GetWeakParme
UIEmBattle2DView.GetWeakParmeBySHL = GetWeakParmeBySHL
UIEmBattle2DView.LaunchWeakGuide = LaunchWeakGuide
UIEmBattle2DView.GetGuidePosById = GetGuidePosById
UIEmBattle2DView.GetWeakParmeByMidHaveMen = GetWeakParmeByMidHaveMen
return UIEmBattle2DView
