--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationMainView = BaseClass("UINationMainView", UIBaseView)
local base = UIBaseView

local gm_btn_path = "BgRoot/GMTestBtn"
local resource_bar_parent_path = "ResourceBarParent"
local common_btn_parent_path = "CommonBtnParent"
local UINationMainTaskWindow = require "UI.UINationMain.Component.UINationMainTaskWindow"
local UINationMyTeamSideWindow = require "UI.UINationMain.Component.UINationMyTeamSideWindow"
local MainCityCommonBtnManager = require("UI.UITestMain.View.MainCityCommonBtnManager")
local EasyTouch = CS.HedgehogTeam.EasyTouch.EasyTouch
local function OnCreate(self)
    base.OnCreate(self)
    self.resTimers = {} -- 资源计时器
    self.fameTimer = nil -- 声望计时器

    self.resourceBarParent = UIUtil.FindTrans(self.transform, resource_bar_parent_path)
    self.commonbtnparent = UIUtil.FindTrans(self.transform, common_btn_parent_path)
    -- 初始化各个组件
    self.borderShadow_Image = self:AddComponent(UIImage, "BgRoot/borderShadow_Image")

    self.gm_btn = self:AddComponent(UIButton, gm_btn_path)
    self.gm_btn.gameObject:SetActive(false)
    self.gm_btn:SetOnClick(function()
        self.ctrl:OpenGMPanel()
    end)

    self.chatContent = self:AddComponent(UIText, "Chat/mask/Content")
    self.chat_btn = self:AddComponent(UIButton, "Chat/ChatBg")
    self.chat_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIChat)
    end)

    self.mailBtn = self:AddComponent(UIButton, "MailButton")
    self.mailBtnRedPointGO = UIUtil.FindTrans(self.transform, "MailButton/MailBtnRedPoint").gameObject
    self.mailBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.ctrl:OpenMailPanel()
        if MailData:GetInstance():GetMailRedState() or MailData:GetInstance().isShowRedPointState then
            self.mailBtnRedPointGO:SetActive(true)
        else
            self.mailBtnRedPointGO:SetActive(false)
        end
    end)

    self.logsBtn = self:AddComponent(UIButton, "LogsButton")
    self.logsBtnRedPointTran = UIUtil.FindTrans(self.transform, "LogsButton/redPointImg");
    self.logsBtn:SetOnClick(function()
        self.ctrl:OpenLogsPanelByNetMsg()
    end)

    self.occupyBtn = self:AddComponent(UIButton, "userTop/Topback_UIImage/Occupy_Button")
    self.occupyBtn:SetOnClick(function()
        self.ctrl:OpenOccupiedLandByNetMsg()
    end)

    ---顶部信息
    self.reputationValue_UIText = self:AddComponent(UIText, "userTop/nameBorder_UIImage/reputationValue_UIText")
    self.manorText_UIText = self:AddComponent(UIText, "userTop/nameBorder_UIImage/manoValue_UIText")
    self.influenceValue_UIText = self:AddComponent(UIText, "userTop/nameBorder_UIImage/influenceValue_UIText")
    self.playerName_UIText = self:AddComponent(UIText, "userTop/nameBorder_UIImage/Name")
    self.playerHeadIcon = self:AddComponent(UIImage, "userTop/nameBorder_UIImage/userHeadImage_UIImage", AtlasConfig.DynamicTex)

    self.set_btn = self:AddComponent(UIButton, "userTop/nameBorder_UIImage/userHeadImage_UIImage")
    self.set_btn:SetOnClick(function()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UISetMain)
    end)

    --四种资源
    self.silverWoodResourcesAddValue_UIText = self:AddComponent(UIText, "userTop/right/WoodGroup/silverWoodResourcesAddValue_UIText")
    self.hematiteResourcesResourcesAddValue_UIText = self:AddComponent(UIText, "userTop/right/IronGroup/hematiteResourcesResourcesAddValue_UIText")
    self.refinedStoneResourcesAddValue_UIText = self:AddComponent(UIText, "userTop/right/StoneGroup/refinedStoneResourcesAddValue_UIText")
    self.lingguResourcesAddValue_UIText = self:AddComponent(UIText, "userTop/right/FoodGroup/lingguResourcesAddValue_UIText")

    self.silverWoodResourcesValue_UIText = self:AddComponent(UIText, "userTop/right/WoodGroup/silverWoodResourcesValue_UIText")
    self.hematiteResourcesResourcesValue_UIText = self:AddComponent(UIText, "userTop/right/IronGroup/hematiteResourcesResourcesValue_UIText")
    self.refinedStoneResourcesValue_UIText = self:AddComponent(UIText, "userTop/right/StoneGroup/refinedStoneResourcesValue_UIText")
    self.lingguResourcesValue_UIText = self:AddComponent(UIText, "userTop/right/FoodGroup/lingguResourcesValue_UIText")

    self.silverWoodResources_UIImage = self:AddComponent(UIImage, "userTop/right/WoodGroup/silverWoodResourcesImage_UIImage", AtlasConfig.DynamicTex)
    self.hematiteResources_UIImage = self:AddComponent(UIImage, "userTop/right/IronGroup/hematiteResourcesImage_UIImage", AtlasConfig.DynamicTex)
    self.refinedStoneResources_UIImage = self:AddComponent(UIImage, "userTop/right/StoneGroup/refinedStoneResourcesImage_UIImage", AtlasConfig.DynamicTex)
    self.lingguResources_UIImage = self:AddComponent(UIImage, "userTop/right/FoodGroup/lingguResourcesImage_UIImage", AtlasConfig.DynamicTex)

    self.silverWoodResources_Title = self:AddComponent(UIText, "userTop/right/WoodGroup/silverWoodResourcesTitle")
    self.hematiteResources_Title = self:AddComponent(UIText, "userTop/right/IronGroup/hematiteResourcesTitle")
    self.refinedStoneResources_Title = self:AddComponent(UIText, "userTop/right/StoneGroup/refinedStoneResourcesTitle")
    self.lingguResources_Title = self:AddComponent(UIText, "userTop/right/FoodGroup/lingguResourcesTitle")

    self.ClosePage_UIButton = self:AddComponent(UIButton, "userTop/backButton_UIButton")
    self.ClosePage_UIButton:SetOnClick(function()
        self.ctrl:OnClosePageBtnClick()
    end)

    --军令文字
    self.militaryOrdersText_UIText = self:AddComponent(UIText, "userTop/MilitaryOrdersBtn/text")

    --标记定位按钮
    self.posBtn = self:AddComponent(UIButton, "RTFuncBtnGrid/CollectBtnRoot/CollectBtn")
    self.posBtnRedPointTran = UIUtil.FindTrans(self.transform, "RTFuncBtnGrid/CollectBtnRoot/CollectBtn/redPointImg");
    self.posBtnRedPointTran.gameObject:SetActive(false)
    self.posBtn:SetOnClick(function()
        self.ctrl:OpenCollectPosPanelByNetNsg()
    end)

    --世界地图
    self.mapBtn = self:AddComponent(UIButton, "RTFuncBtnGrid/WorldMapBtnRoot/WorldMapBtn")
    self.mapBtnRedPointTran = UIUtil.FindTrans(self.transform, "RTFuncBtnGrid/WorldMapBtnRoot/WorldMapBtn/redPointImg");
    self.mapBtnRedPointTran.gameObject:SetActive(false)
    self.mapBtn:SetOnClick(function()
        self.ctrl:OpenWorldMap()
    end)


    -- 测试按钮
    self.testBtn = self:AddComponent(UIButton, "RTFuncBtnGrid/RTTestBtnRoot/RTTestBtn")
    self.testBtn.gameObject:SetActive(false)
    self.testBtn:SetOnClick(function()
        --NationMarchData:GetInstance():TestAddOneMarch()
        NationTownData:GetInstance():TestAddNationTownDefRecoverData()
        --local easyTouchInstance = EasyTouch.instance
        --Logger.LogErrorVars("EasyTouch enable ",easyTouchInstance.enable)
        --Logger.LogErrorVars("EasyTouch allowUIDetection ",easyTouchInstance.allowUIDetection)
        --Logger.LogErrorVars("EasyTouch enable2FingersGesture ",easyTouchInstance.enable2FingersGesture)
        --Logger.LogErrorVars("EasyTouch enablePinch ",easyTouchInstance.enablePinch)
        --Logger.LogErrorVars("EasyTouch enableSimulation ",easyTouchInstance.enableSimulation)
    end)

    --任务按钮
    self.taskBtn = self:AddComponent(UIButton, "RTFuncBtnGrid/TaskBtnRoot/TaskBtn")
    self.taskBtnRedPointTran = UIUtil.FindTrans(self.transform, "RTFuncBtnGrid/TaskBtnRoot/TaskBtn/redPointImg");
    self.taskBtnRootTran = UIUtil.FindTrans(self.transform, "RTFuncBtnGrid/TaskBtnRoot");
    self.taskBtnRootTran.gameObject:SetActive(false)
    self.taskBtn:SetOnClick(function()
        self.ctrl:OpenTaskViewByNetMsg()
    end)

    --记事
    self.event_btn = self:AddComponent(UIButton, "RTFuncBtnGrid/EventBtnRoot/EventBtn")
    self.eventBtnRedPointTran = UIUtil.FindTrans(self.transform, "RTFuncBtnGrid/EventBtnRoot/EventBtn/redPointImg");
    self.event_btn:SetOnClick(function()
        self.ctrl:OpenRecordEventByNetMsg()
    end)

    --主线任务
    self.mainTaskObj = UIUtil.FindTrans(self.transform, "UINationMainTask")
    self.passTaskObj = UINationMainTaskWindow.New(self, self.mainTaskObj.gameObject)
    self.passTaskObj:TaskOnCreate()

    self.nationMyTeamSideWindow = UINationMyTeamSideWindow.New(self, self.gameObject)
    self.nationMyTeamSideWindow:OnCreate()

    MainCityCommonBtnManager:GetInstance():CreatMainCityCommonBtn(self.commonbtnparent, UIWindowNames.UINationMain, self, nil, MainCityCommonBtnManager:GetInstance().MAIN_CITY_BTN_ENUM.GUO_ZHAN);
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UINationMain, ResourceBarType.NATION_MAIN, self, true)
end

--世界聊天展示
local function ShowChatInfo(self)
    local str = ""
    for i, v in ipairs(self.model.WordChatData) do
        str = str .. v .. "\n\r"
    end
    self.chatContent:SetText(str)
end

local function OnEnable(self)
    base.OnEnable(self)

    if NationMainTaskData:GetInstance().mainTaskData ~= nil then
        self.mainTaskObj.gameObject:SetActive(true)
        self.passTaskObj:TaskRefresh()
    else
        self.mainTaskObj.gameObject:SetActive(false)
    end

    self.nationMyTeamSideWindow:OnEnable()
    self.playerName_UIText:SetText(self.model.playerName)
    self.playerHeadIcon:SetSpriteName(self.model.playerHeadImg)

    self.silverWoodResources_Title:SetText(self.model.allRes[NationDefine.ITEM_WOOD_ID].name)
    self.hematiteResources_Title:SetText(self.model.allRes[NationDefine.ITEM_IRON_ID].name)
    self.refinedStoneResources_Title:SetText(self.model.allRes[NationDefine.ITEM_STONE_ID].name)
    self.lingguResources_Title:SetText(self.model.allRes[NationDefine.ITEM_FOOD_ID].name)
    self.silverWoodResources_UIImage:SetSpriteName(self.model.allRes[NationDefine.ITEM_WOOD_ID].icon)
    self.hematiteResources_UIImage:SetSpriteName(self.model.allRes[NationDefine.ITEM_IRON_ID].icon)
    self.refinedStoneResources_UIImage:SetSpriteName(self.model.allRes[NationDefine.ITEM_STONE_ID].icon)
    self.lingguResources_UIImage:SetSpriteName(self.model.allRes[NationDefine.ITEM_FOOD_ID].icon)

    self:OnUpdateResource()
    self:OnUpdateFameLevel()

    ShowChatInfo(self)
    self:__OnRedPointChangedEvent()
end

local function OnDisable(self)

    base.OnDisable(self)
    if self.resTimers ~= nil then
        for i, v in pairs(self.model.allRes) do
            local timer = self.resTimers[v.id]
            if timer ~= nil then
                timer:Stop()
                self.resTimers[v.id] = nil
            end
        end
    end
    self.resTimers = {} -- 资源计时器

    if self.fameTimer ~= nil then
        self.fameTimer:Stop()
        self.fameTimer = nil
    end
    self.nationMyTeamSideWindow:OnDisable()
end

local function FlushResContent(self)
    local valText = nil
    --DataUtil.GetDataNumDes(nextPrice);
    valText = DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_WOOD_ID].increaseRate) .. "/小时"
    self.silverWoodResourcesAddValue_UIText:SetText(valText)
    valText = DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_IRON_ID].increaseRate) .. "/小时"
    self.refinedStoneResourcesAddValue_UIText:SetText(valText)
    valText = DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_STONE_ID].increaseRate) .. "/小时"
    self.hematiteResourcesResourcesAddValue_UIText:SetText(valText)
    valText = DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_FOOD_ID].increaseRate) .. "/小时"
    self.lingguResourcesAddValue_UIText:SetText(valText)

    local tempText = DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_WOOD_ID].num) .. "/" .. DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_WOOD_ID].maxNum)
    self.silverWoodResourcesValue_UIText:SetText(tempText)
    tempText = DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_IRON_ID].num) .. "/" .. DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_IRON_ID].maxNum)
    self.hematiteResourcesResourcesValue_UIText:SetText(tempText)
    tempText = DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_STONE_ID].num) .. "/" .. DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_STONE_ID].maxNum)
    self.refinedStoneResourcesValue_UIText:SetText(tempText)
    tempText = DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_FOOD_ID].num) .. "/" .. DataUtil.GetDataNumDes(self.model.allRes[NationDefine.ITEM_FOOD_ID].maxNum)
    self.lingguResourcesValue_UIText:SetText(tempText)
end

local function OnUpdateResource(self)

    self:FlushResContent()
    -- // 启动计时器

    for i, v in pairs(self.model.allRes) do
        local timer = self.resTimers[v.id]
        if timer ~= nil then
            timer:Stop()
            self.resTimers[v.id] = nil
        end
        local res = self.model.allRes[v.id]

        if res.num < res .maxNum then
            -- 有计时器
            timer = SyncTimer.New(SyncTimer.MODE_STEP, res.lastTime,
                    res.rateMS, false, self.__UpdateResourceTimer, { res = res, superSelf = self })
            self.resTimers[v.id] = timer
            timer:Start()
        end
    end
end

local function OnUpdateFameLevel(self)
    self.reputationValue_UIText:SetText(self.model.fameLevel)
    self.manorText_UIText:SetText(self.model.occupyNum .. "/" .. self.model.OccupyNumMax)
    local tempText = self.model.allRes[NationDefine.ITEM_DECREE_ID].num .. "/" .. self.model.allRes[NationDefine.ITEM_DECREE_ID].maxNum
    self.militaryOrdersText_UIText:SetText(tempText)
    --self.militaryOrdersText_UIText:SetText(self.model.decree.."/"..self.model.decreeMax)
    self.influenceValue_UIText:SetText(self.model.influenceValue)
    --// 启动计时器

    if self.fameTimer ~= nil then
        self.fameTimer:Stop()
        self.fameTimer = nil
    end

    if self.model.fameExp < self.model.FameMaxData.Exp then
        -- 有计时器
        self.fameTimer = SyncTimer.New(SyncTimer.MODE_STEP, self.model.fameLastTime,
                self.model.FameSpeedSec * 1000, false, self.__UpdateFameTimer, { superSelf = self })
        self.fameTimer:Start()
    end
end

--[[
  更新声望计时器
]]
local function __UpdateFameTimer(selfTimer, obj)
    local superSelf = obj.superSelf
    if superSelf.model.fameExp >= superSelf.model.FameMaxData.Exp then
        selfTimer:Stop()
        superSelf.fameTimer = nil
        return
    end
    superSelf.ctrl:FlushNationFame()
end


--[[
    更新资源数量计时器
]]
local function __UpdateResourceTimer(selfTimer, obj)

    local res = obj.res
    local superSelf = obj.superSelf
    res.num = res.num + math.floor(res.incRate)
    if res.num > res.maxNum then
        res.num = res.maxNum
        selfTimer:Stop()
        superSelf.resTimers[res.id] = nil
        -- sync res
    end
    superSelf:FlushResContent()
end

---刷新主线任务数据
local function UpdateMainTaskData(self)
    self.passTaskObj:TaskRefresh()
end

--红点刷新
local function __OnRedPointChangedEvent(self)
    if MailData:GetInstance():GetMailRedState() or MailData:GetInstance().isShowRedPointState then
        self.mailBtnRedPointGO:SetActive(true)
    else
        self.mailBtnRedPointGO:SetActive(false)
    end

    self.taskBtnRedPointTran.gameObject:SetActive(RedPointData:GetInstance():GetRedState("task_root"))
    self.logsBtnRedPointTran.gameObject:SetActive(RedPointData:GetInstance():GetRedState(RedPointData:GetInstance().RedName.Nation_Battle_Log_Red))
    self.eventBtnRedPointTran.gameObject:SetActive(RedPointData:GetInstance():GetRedState(RedPointData:GetInstance().RedName.Nation_Event_Red))

    if self.passTaskObj ~= nil then
        self.passTaskObj:__OnRedPointChangedEvent()
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    self.nationMyTeamSideWindow:OnAddListener()
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_MAIN_USER_FAME_UPDATE, OnUpdateFameLevel)
    self:AddUIListener(UIMessageNames.UI_NATION_MAIN_USER_RESOURCE_UPDATE, OnUpdateResource)
    self:AddUIListener(UIMessageNames.UI_NATION_MAIN_TASK_REFRESH, UpdateMainTaskData)
    self:AddUIListener(UIMessageNames.UIMAINCITY_CHAT_UPDATE, ShowChatInfo)
    self:AddUIListener(UIMessageNames.ON_RED_POINT_CHANGE, self.__OnRedPointChangedEvent)
    self:AddUIListener(UIMessageNames.UIMAINCITY_MAILREDPOINT_UPDATE, self.__OnRedPointChangedEvent)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self.nationMyTeamSideWindow:OnRemoveListener()
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_MAIN_USER_FAME_UPDATE, OnUpdateFameLevel)
    self:RemoveUIListener(UIMessageNames.UI_NATION_MAIN_USER_RESOURCE_UPDATE, OnUpdateResource)
    self:RemoveUIListener(UIMessageNames.UI_NATION_MAIN_TASK_REFRESH, UpdateMainTaskData)
    self:RemoveUIListener(UIMessageNames.UIMAINCITY_CHAT_UPDATE, ShowChatInfo)
    self:RemoveUIListener(UIMessageNames.ON_RED_POINT_CHANGE, self.__OnRedPointChangedEvent)
    self:RemoveUIListener(UIMessageNames.UIMAINCITY_MAILREDPOINT_UPDATE, self.__OnRedPointChangedEvent)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    self.nationMyTeamSideWindow:OnDestroy()
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UINationMain)
    MainCityCommonBtnManager:GetInstance():DestroyMaincityBtn(UIWindowNames.UINationMain);
end

UINationMainView.OnCreate = OnCreate
UINationMainView.OnEnable = OnEnable
UINationMainView.OnDisable = OnDisable
UINationMainView.OnAddListener = OnAddListener
UINationMainView.OnRemoveListener = OnRemoveListener
UINationMainView.OnDestroy = OnDestroy

UINationMainView.OnUpdateResource = OnUpdateResource

UINationMainView.__UpdateFameTimer = __UpdateFameTimer
UINationMainView.__UpdateResourceTimer = __UpdateResourceTimer
UINationMainView.FlushResContent = FlushResContent
UINationMainView.OnUpdateFameLevel = OnUpdateFameLevel
UINationMainView.__OnRedPointChangedEvent = __OnRedPointChangedEvent

return UINationMainView
