local UINationAllianceLogPanel = BaseClass("UINationAllianceLogPanel", UIBaseContainer)
local base = UIBaseContainer

local logWrapGroup = require "UI.UIChat.Component.WorldChatWrapGroup"
local logItem = require "UI.UINationAliance.Component.UINationAllianceLogItem"
local UIBreakItem = require "UI.UINationAliance.Component.UINationSiegeRankBreakItem"
local UIKillItem = require "UI.UINationAliance.Component.UINationSiegeRankKillItem"

local event_btn_path = "EventBtn"
local fight_btn_path = "FightBtn"
local log_scroll_path = "Scrollrect/Grid"
local log_select_path = "SelectBtn"
local log_select_text_path = "SelectBtn/Text"
local log_select_content_text_path = "Scrollrect/Content"
local log_empty_path = "Scrollrect/Empty"
local log_scrollrect_path = "Scrollrect"
local function CalculateLogPos(self, v, pos)
    local finc = nil
    if v.isDate then
        finc = v.date
    else
        finc = DataUtil.ChatOutputContent(v.content)
    end

    local width = UIUtil.GetTextWidth(self.unity_text, finc)
    local height = UIUtil.GetTextHeight(self.unity_text, finc)
    v.pos = pos
    if width > 1368 then
        width = 1368
    end
    if height > 60 then
        v.y = height + 10
    else
        v.y = 60
    end
    v.size = Vector2.New(height, width)
    return pos + v.y
end

local function OnUIMsgRefreshLog(self)
    --关闭排行榜
    self.rankViewObj:SetActive(false)
    self.rankScrollViewObj:SetActive(true)

    self.log_list = self.view.model.logList
    if self.log_list ~= nil and #self.log_list > 0 then
        local pos = 0
        for _, v in ipairs(self.log_list) do
            pos = CalculateLogPos(self, v, pos)
        end
        self.emptyObj:SetActive(false)
        self.log_wrap_group:SetLength(#self.log_list, self.log_list)
        self.log_wrap_group:ResetToTop()
    else
        self.emptyObj:SetActive(true)
        self.log_wrap_group:SetLength(0, self.log_list)
    end
end

local function OnClickEventLog(self)
    self.select_log_trans:SetParent(self.eventBtn.transform)
    self.select_log_trans.localPosition = Vector3.zero
    self.select_log_text:SetText(DataUtil.GetClientText(200285))
    self.view.ctrl:OnClickAllianceLogSubButton(self.view.model.EnumLogType.Event)
end

local function OnClickBattleLog(self)
    self.select_log_trans:SetParent(self.fightBtn.transform)
    self.select_log_trans.localPosition = Vector3.zero
    self.select_log_text:SetText(DataUtil.GetClientText(200116))
    self.view.ctrl:OnClickAllianceLogSubButton(self.view.model.EnumLogType.Battle)
end

--日志界面
local function OnCreate(self)
    base.OnCreate(self)

    self.log_wrap_group = self:AddComponent(logWrapGroup, log_scroll_path, logItem, Vector2.New(1368, 60))
    self.select_log_trans = UIUtil.FindTrans(self.transform, log_select_path)
    self.select_log_text = self:AddComponent(UIText, log_select_text_path)

    self.emptyObj = UIUtil.FindTrans(self.transform, log_empty_path).gameObject
    self.emptyObj_Text = self:AddComponent(UIText, log_empty_path .. "/emptyText")
    self.emptyObj_Text:SetText(DataUtil.GetClientText(200284))

    self.unity_text = UIUtil.FindText(self.transform, log_select_content_text_path)
    self.eventBtnText = self:AddComponent(UIText, "EventBtn/EventBtnText")
    self.eventBtnText:SetText(DataUtil.GetClientText(200285))
    self.eventBtn = self:AddComponent(UIButton, event_btn_path)
    self.eventBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        OnClickEventLog(self)
    end)
    self.fightBtnText = self:AddComponent(UIText, "FightBtn/FightBtnText")
    self.fightBtnText:SetText(DataUtil.GetClientText(200116))
    self.fightBtn = self:AddComponent(UIButton, fight_btn_path)
    self.fightBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        OnClickBattleLog(self)
    end)
    self.rankScrollViewObj =  UIUtil.FindTrans(self.transform, log_scrollrect_path).gameObject

    --攻城战排行榜
    self.rankViewObj =  UIUtil.FindTrans(self.transform, "RankView").gameObject

    self.titleTextUIText = self:AddComponent(UIText, "RankView/rankMainTitleBackground_UIImage/rankMainTitle_UIText")
    self.titleTextUIText:SetText(DataUtil.GetClientText(200410)) -- 攻城排行榜

    self.killTitleDi_UIText = self:AddComponent(UIText, "RankView/killBackground_UIImage/killTitleDi_UIImage/killTitleDi_UIText")
    self.killTitleDi_UIText:SetText(DataUtil.GetClientText(200411)) --杀敌排行
    self.killIndexTitle_UIText = self:AddComponent(UIText, "RankView/killBackground_UIImage/kilScrollTitle_UIImage/killIndexTitle_UIText")
    self.killIndexTitle_UIText:SetText(DataUtil.GetClientText(200413)) --名次
    self.killNameTitle_UIText = self:AddComponent(UIText, "RankView/killBackground_UIImage/kilScrollTitle_UIImage/killNameTitle_UIText")
    self.killNameTitle_UIText:SetText(DataUtil.GetClientText(200414)) --玩家名称
    self.killScrollTitle_UIText = self:AddComponent(UIText, "RankView/killBackground_UIImage/kilScrollTitle_UIImage/killScrollTitle_UIText")
    self.killScrollTitle_UIText:SetText( DataUtil.GetClientText(200415)) --积分
    self.killNoContentRoot = UIUtil.FindTrans(self.transform, "RankView/killBackground_UIImage/killNoContentRoot_UIImage").gameObject
    self.killNoContent_UIText = self:AddComponent(UIText, "RankView/killBackground_UIImage/killNoContentRoot_UIImage/killNoContent_UIText")
    self.killNoContent_UIText:SetText(DataUtil.GetClientText(200416)) --无人上榜

    self.breakTitleDi_UIText = self:AddComponent(UIText, "RankView/breakBackground_UIImage/breakTitleDi_UIImage/breakTitleDi_UIText")
    self.breakTitleDi_UIText:SetText(DataUtil.GetClientText(200412)) --攻城排行
    self.breakIndexTitle_UIText = self:AddComponent(UIText, "RankView/breakBackground_UIImage/breakScrollTitle_UIImage/breakIndexTitle_UIText")
    self.breakIndexTitle_UIText:SetText(DataUtil.GetClientText(200413)) --名次
    self.breakNameTitle_UIText = self:AddComponent(UIText, "RankView/breakBackground_UIImage/breakScrollTitle_UIImage/breakNameTitle_UIText")
    self.breakNameTitle_UIText:SetText(DataUtil.GetClientText(200414)) --玩家名称
    self.breakScrollTitle_UIText = self:AddComponent(UIText, "RankView/breakBackground_UIImage/breakScrollTitle_UIImage/breakScrollTitle_UIText")
    self.breakScrollTitle_UIText:SetText(DataUtil.GetClientText(200415)) --积分
    self.breakNoContentRoot = UIUtil.FindTrans(self.transform, "RankView/breakBackground_UIImage/breakNoContentRoot_UIImage").gameObject
    self.breakNoContent_UIText = self:AddComponent(UIText, "RankView/breakBackground_UIImage/breakNoContentRoot_UIImage/breakNoContent_UIText")
    self.breakNoContent_UIText:SetText(DataUtil.GetClientText(200416)) --无人上榜


    self.rankCloseBtn_UIText = self:AddComponent(UIText, "RankView/rankCloseBtn_UIImage/rankCloseBtn_UIText")
    self.rankCloseBtn_UIText:SetText(DataUtil.GetClientText(200417)) --关闭

    self.rankCloseBtn_UIImage = self:AddComponent(UIButton, "RankView/rankCloseBtn_UIImage")
    self.rankCloseBtn_UIImage:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.rankViewObj:SetActive(false)
        self.rankScrollViewObj:SetActive(true)
    end)

    self.killRankWrapGroup = self:AddComponent(UIWrapGroup3D, "RankView/killBackground_UIImage/killRankScroll/killGrid", UIKillItem)
    self.breakRankWrapGroup = self:AddComponent(UIWrapGroup3D, "RankView/breakBackground_UIImage/breakRankScroll/breakGrid", UIBreakItem)

    self.rankViewObj:SetActive(false)
    self.rankScrollViewObj:SetActive(true)
end

local function OnEnable(self)
    base.OnEnable(self)

    self.rankViewObj:SetActive(false)
    self.rankScrollViewObj:SetActive(true)

    self.select_log_trans:SetParent(self.eventBtn.transform)
    self.select_log_trans.localPosition = Vector3.zero
    self.select_log_text:SetText(DataUtil.GetClientText(200285))

    --计算位置
    self.log_list = self.view.model.logList
    if self.log_list ~= nil and #self.log_list > 0 then
        local pos = 0
        for _, v in ipairs(self.log_list) do
            pos = CalculateLogPos(self, v, pos)
        end
        self.emptyObj:SetActive(false)
        self.log_wrap_group:SetLength(#self.log_list, self.log_list)
        self.log_wrap_group:ResetToTop()
    else
        self.emptyObj:SetActive(true)
        self.log_wrap_group:SetLength(0, self.log_list)
    end

    self:OnAddListener()
end

local function RankViewRefresh(self)
    local killLength = #self.view.model.logRankKillList
    if killLength > 0 then
        self.killRankWrapGroup:SetLength(killLength)
        self.killRankWrapGroup:SetGridPositionByIndex(0)
        self.killNoContentRoot:SetActive(false)
    else
        self.killRankWrapGroup:SetLength(0)
        self.killNoContentRoot:SetActive(true)
    end

    local breakLength = #self.view.model.logRankBreakList
    if breakLength > 0 then
        self.breakRankWrapGroup:SetLength(breakLength)
        self.breakRankWrapGroup:SetGridPositionByIndex(0)
        self.breakNoContentRoot:SetActive(false)
    else
        self.breakRankWrapGroup:SetLength(0)
        self.breakNoContentRoot:SetActive(true)
    end
    self.rankScrollViewObj:SetActive(false)
    self.rankViewObj:SetActive(true)
end


local function OnAddListener(self)
    ---- UI消息注册
    self.func = {}
    self.func[1] = Bind(self, OnUIMsgRefreshLog)
    self.func[2] = Bind(self, RankViewRefresh)
    UIManager:GetInstance():AddListener(UIMessageNames.UI_NATION_UNION_REFRESH_LOG, self.func[1])
    UIManager:GetInstance():AddListener(UIMessageNames.UI_NATION_UNION_LOG_RANK_REFRESH, self.func[2])
end

local function OnRemoveListener(self)
    ---- UI消息注销
    UIManager:GetInstance():RemoveListener(UIMessageNames.UI_NATION_UNION_REFRESH_LOG, self.func[1])
    UIManager:GetInstance():RemoveListener(UIMessageNames.UI_NATION_UNION_LOG_RANK_REFRESH, self.func[2])
    self.func = nil
end

local function OnDisable(self)
    base.OnDisable(self)
    self:OnRemoveListener()
    self.rankViewObj:SetActive(false)
    self.rankScrollViewObj:SetActive(true)
    self.log_list = {}
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationAllianceLogPanel.OnCreate = OnCreate
UINationAllianceLogPanel.OnEnable = OnEnable
UINationAllianceLogPanel.OnAddListener = OnAddListener
UINationAllianceLogPanel.OnRemoveListener = OnRemoveListener
UINationAllianceLogPanel.OnDisable = OnDisable
UINationAllianceLogPanel.OnDestroy = OnDestroy

return UINationAllianceLogPanel