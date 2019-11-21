
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIBattleSettlementFailView = BaseClass("UIBattleSettlementFailView", UIBaseView)
local base = UIBaseView
local BattleFieldManager = require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"

local function BackHome()
    UIManager:GetInstance():CloseWindow(UIWindowNames.UIBattleSettlementFail)
    if(BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.NORMAL) then
        local Type = math.floor(BattleFieldManager:GetInstance().fightId / 10000)
        if Type == 10 then
            UIUtil.BackHomeMain()
            --SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
        else
            UIUtil.ReturnMapScene();
        end
        --SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
        --UIManager:GetInstance():Broadcast(UIMessageNames.UIBATTLE_RESET_ENTER)
    elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.SOLO_BOSS then

    elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.SOLO_ARENA then
        SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
        for _, v in pairs(ArenaData:GetInstance().pk_player_data) do
            if v.uid == ArenaData:GetInstance().pk_player_uid then
                v.challenge_state = 2
            end
        end
        UIManager:GetInstance():Broadcast(UIMessageNames.UPDATE_ARENA_CHALLENGE_PEO_DATA,false)
    else
        SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
    end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.Fail_Img=self:AddComponent(UIImage,"Fail",AtlasConfig.Language)
	self.Fail_Img:SetSpriteName("ui_t_Jiesuan_006")
	self.conventional_panel = UIUtil.FindTrans(self.transform,"ConventionalBattlePanel")
    self.strong_btn = self:AddComponent(UIButton, "ConventionalBattlePanel/strongBtn")
    self.strong_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():ClearWindowStack()
        SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene, nil, nil, nil, function()
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIGetStrong)
        end)
    end)
    self.wulingjiBtn = self:AddComponent(UIButton, "ConventionalBattlePanel/wulingjiBtn")
    self.wulingjiBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():ClearWindowStack()
        SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene, nil, nil, nil, function()
            UIManager:GetInstance():OpenWindow(UIWindowNames.UICellSkillPacket)
        end)
    end)
    self.backBtn = self:AddComponent(UIButton, "ConventionalBattlePanel/backBtn")
    self.backBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        BackHome()
    end)
	self.arena_panel = UIUtil.FindTrans(self.transform,"ArenaBattlePanel")
	self.scoreText = self:AddComponent(UIText,"ArenaBattlePanel/scoreNumText")
	self.winNumText = self:AddComponent(UIText,"ArenaBattlePanel/winNumText")
	self.back_btn = self:AddComponent(UIButton,"Back")
	self.back_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        BackHome()
	end)
	--播放战斗背景音乐
	LJAudioManger:GetInstance():PlayMusic("BGM_Battle_Faild")
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	if BattleFieldManager:GetInstance().battleType==BattleEnum.BattleType.NORMAL then
		self.conventional_panel.gameObject:SetActive(true)
		self.arena_panel.gameObject:SetActive(false)
	elseif BattleFieldManager:GetInstance().battleType == BattleEnum.BattleType.SOLO_ARENA then
		self.scoreText:SetText(self.model.arena_score_num)
		self.conventional_panel.gameObject:SetActive(false)
		self.arena_panel.gameObject:SetActive(true)
	else
		self.conventional_panel.gameObject:SetActive(true)
		self.arena_panel.gameObject:SetActive(false)
	end
	--战斗失败打点
	--if BattleFieldManager:GetInstance().fightId ~= nil and BattleFieldManager:GetInstance().fightId ~= 0 then
	--	SdkManager:GetInstance().DataReport:MissionFailed("关卡"..BattleFieldManager:GetInstance().fightId)
	--end
end

local function OnRefresh(self)
	-- 各组件刷新
	
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIBattleSettlementFailView.OnCreate = OnCreate
UIBattleSettlementFailView.OnEnable = OnEnable
UIBattleSettlementFailView.OnRefresh = OnRefresh
UIBattleSettlementFailView.OnAddListener = OnAddListener
UIBattleSettlementFailView.OnRemoveListener = OnRemoveListener
UIBattleSettlementFailView.OnDestroy = OnDestroy

return UIBattleSettlementFailView
