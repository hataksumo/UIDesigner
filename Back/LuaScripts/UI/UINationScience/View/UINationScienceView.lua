--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UINationScienceView = BaseClass("UINationScienceView", UIBaseView)
local base = UIBaseView

local UINationScienceItem = require "UI.UINationScience.Component.UINationScienceItem"
local UINationLineItem = require "UI.UINationScience.Component.UINationLineItem"

local National_Tech_Info = DataUtil.GetData("national_tech")

local spaceX = 157
local spaceY = 110
local lineBgHeight = 21
local lineHeight = 14

local function GenerateScienceTree(self)
    self.scienceItems = {}
    local columnItems = {}
    local showItems = self.model.scienceItems
    --填充列
    for i = 1, self.model.maxColumnCount do
        local columnItem = CS.UnityEngine.GameObject.Instantiate(self.originalColumnItem.gameObject, self.gridRoot)
        columnItem:SetActive(true)
        table.insert(columnItems, columnItem)
    end
    --填充科技条目
    for k, v in pairs(showItems) do
        local item = CS.UnityEngine.GameObject.Instantiate(self.originalItem.gameObject)
        local parent = columnItems[v.pos.x].transform:GetChild(v.pos.y - 1)
        item.transform:SetParent(parent)
        item.transform.localPosition = Vector3.zero
        item.transform.localScale = Vector3.one
        local scienceItem = UINationScienceItem.New(self, item)
        scienceItem:OnCreate()
        scienceItem:OnRefresh(v.pos.x, v.pos.y)
        self.scienceItems[v.id] = scienceItem
    end
    coroutine.waitforframes(1)
    --填充线
    for k, v in pairs(showItems) do
        local startItem = self.scienceItems[v.id]
        local itemBG = CS.UnityEngine.GameObject.Instantiate(self.originalItemBg.gameObject)
        itemBG.transform:SetParent(self.originalItemBgRoot)
        local itemBGRect = UIUtil.FindComponent(itemBG.transform, typeof(CS.UnityEngine.RectTransform), "")
        itemBGRect.position = startItem.rectTransform.position
        itemBG.transform.localScale = Vector3.one
        if v.next ~= false then
            if self.lineImageList[v.id] == nil then
                self.lineImageList[v.id] = {}
            end

            for j, z in ipairs(v.next) do
                local endItem = self.scienceItems[z]
                local endItemInfo = National_Tech_Info[z]
                local horizonLoopCount = (endItemInfo.Pos.x - v.pos.x) * 2
                local verticalLoopCount = math.abs(endItemInfo.Pos.y - v.pos.y)
                local lineIsActive = v.level >= 1

                --画三遍，一次是bg一次灰色的bg，一次是动态的线
                for i = 1, 3 do
                    local parentRoot = self.lineBgRoot
                    local height = lineBgHeight
                    if i == 2 then
                        height = lineHeight
                        parentRoot = self.lineBg2Root
                    elseif i == 3 then
                        height = lineHeight
                        parentRoot = self.lineRoot
                    end
                    --平行
                    if endItemInfo.Pos.y == v.pos.y then

                        local item = CS.UnityEngine.GameObject.Instantiate(self.originalLine.gameObject, parentRoot)
                        local lineItem = UINationLineItem.New(self, item)
                        lineItem:OnCreate(1)
                        if i == 2 then
                            lineItem:OnRefresh(false)
                        elseif i == 3 then
                            lineItem:OnRefresh(true)
                            lineItem.gameObject:SetActive(lineIsActive)
                            table.insert(self.lineImageList[v.id], lineItem)
                        end
                        lineItem.rectTransform.position = startItem.rectTransform.position
                        lineItem.transform.localScale = Vector3.one
                        lineItem.rectTransform.sizeDelta = Vector2.New(spaceX * horizonLoopCount, height)
                        lineItem.rectTransform.localEulerAngles = Vector3.New(0, 0, 0)
                    else
                        local posOffsetX = nil
                        local posOffsetY = nil
                        local verLineAngel = nil
                        local flexLineAngel1 = nil
                        local flexLineAngel2 = nil
                        local flexOffsetX1 = nil
                        local flexOffsetY1 = nil
                        local flexOffsetX2 = nil
                        local flexOffsetY2 = nil
                        --0.46是canvas的scale
                        if endItemInfo.Pos.y > v.pos.y then
                            --向下划线
                            flexLineAngel1 = -90
                            verLineAngel = -90
                            flexLineAngel2 = 90
                            posOffsetX = spaceX * 0.46
                            posOffsetY = -20 * 0.46
                            flexOffsetX1 = -6.21
                            flexOffsetY1 = -6.21
                            flexOffsetX2 = 2.76
                            flexOffsetY2 = 6.21
                        elseif endItemInfo.Pos.y < v.pos.y then
                            --向上划线
                            flexLineAngel1 = 180
                            verLineAngel = 90
                            flexLineAngel2 = 0
                            posOffsetX = spaceX * 0.46
                            posOffsetY = 20 * 0.46
                            flexOffsetX1 = -6.21
                            flexOffsetY1 = 6.21
                            flexOffsetX2 = 2.76
                            flexOffsetY2 = -6.21
                        end

                        --先画一条横线
                        local item = CS.UnityEngine.GameObject.Instantiate(self.originalLine.gameObject, parentRoot)
                        local lineItem = UINationLineItem.New(self, item)
                        lineItem:OnCreate(1)
                        if i == 2 then
                            lineItem:OnRefresh(false)
                        elseif i == 3 then
                            lineItem:OnRefresh(true)
                            lineItem.gameObject:SetActive(lineIsActive)
                            table.insert(self.lineImageList[v.id], lineItem)
                        end
                        lineItem.rectTransform.position = startItem.rectTransform.position
                        lineItem.transform.localScale = Vector3.one
                        lineItem.rectTransform.sizeDelta = Vector2.New(spaceX - 20, height)
                        lineItem.rectTransform.localEulerAngles = Vector3.New(0, 0, 0)

                        --再画拐角
                        local flexItem = CS.UnityEngine.GameObject.Instantiate(self.originalFlexLine.gameObject, parentRoot)
                        local flexLineItem = UINationLineItem.New(self, flexItem)
                        flexLineItem:OnCreate(2)
                        if i == 2 then
                            flexLineItem:OnRefresh(false)
                        elseif i == 3 then
                            flexLineItem:OnRefresh(true)
                            flexLineItem.gameObject:SetActive(lineIsActive)
                            table.insert(self.lineImageList[v.id], flexLineItem)
                        end
                        flexLineItem.rectTransform.position = Vector3.New(startItem.rectTransform.position.x + spaceX * 0.46 + flexOffsetX1, startItem.rectTransform.position.y + flexOffsetY1, startItem.rectTransform.position.z)
                        flexLineItem.rectTransform.localEulerAngles = Vector3.New(0, 0, flexLineAngel1)

                        --再画直线
                        local item2 = CS.UnityEngine.GameObject.Instantiate(self.originalLine.gameObject, parentRoot)
                        local lineItem2 = UINationLineItem.New(self, item2)
                        lineItem2:OnCreate(1)
                        if i == 2 then
                            lineItem2:OnRefresh(false)
                        elseif i == 3 then
                            lineItem2:OnRefresh(true)
                            lineItem2.gameObject:SetActive(lineIsActive)
                            table.insert(self.lineImageList[v.id], lineItem2)
                        end
                        lineItem2.rectTransform.position = Vector3.New(startItem.rectTransform.position.x + posOffsetX, startItem.rectTransform.position.y + posOffsetY, startItem.rectTransform.position.z)
                        lineItem2.rectTransform.sizeDelta = Vector2.New(spaceY * verticalLoopCount - 40, height)
                        lineItem2.rectTransform.localEulerAngles = Vector3.New(0, 0, verLineAngel)

                        --画第二个拐角
                        local flexItem2 = CS.UnityEngine.GameObject.Instantiate(self.originalFlexLine.gameObject, parentRoot)
                        local flexLineItem2 = UINationLineItem.New(self, flexItem2)
                        flexLineItem2:OnCreate(2)
                        if i == 2 then
                            flexLineItem2:OnRefresh(false)
                        elseif i == 3 then
                            flexLineItem2:OnRefresh(true)
                            flexLineItem2.gameObject:SetActive(lineIsActive)
                            table.insert(self.lineImageList[v.id], flexLineItem2)
                        end
                        flexLineItem2.rectTransform.position = Vector3.New(endItem.rectTransform.position.x - spaceX * 0.46 + flexOffsetX2, endItem.rectTransform.position.y + flexOffsetY2, endItem.rectTransform.position.z)
                        flexLineItem2.rectTransform.localEulerAngles = Vector3.New(0, 0, flexLineAngel2)

                        --最后再画剩下的直线
                        local item3 = CS.UnityEngine.GameObject.Instantiate(self.originalLine.gameObject, parentRoot)
                        local lineItem3 = UINationLineItem.New(self, item3)
                        lineItem3:OnCreate(1)
                        if i == 2 then
                            lineItem3:OnRefresh(false)
                        elseif i == 3 then
                            lineItem3:OnRefresh(true)
                            lineItem3.gameObject:SetActive(lineIsActive)
                            table.insert(self.lineImageList[v.id], lineItem3)
                        end
                        lineItem3.rectTransform.position = Vector3.New(endItem.rectTransform.position.x - (spaceX * 0.46 * (horizonLoopCount - 1)) + 20 * 0.46, endItem.rectTransform.position.y, endItem.rectTransform.position.z)
                        lineItem3.rectTransform.sizeDelta = Vector2.New(spaceX * (horizonLoopCount - 1), height)
                        lineItem3.rectTransform.localEulerAngles = Vector3.New(0, 0, 0)
                    end
                end
            end
        end
    end
end

local function OnClickScienceItem(self, scienceID)
    self.selectTrans:SetParent(self.scienceItems[scienceID].transform)
    self.selectTrans.localPosition = Vector3.zero
    self.selectTrans.localScale = Vector3.one
    self.view.ctrl:scienceItemClick(scienceID)
end

local function OnCreate(self)
    base.OnCreate(self)
    self.TitleBar = UIUtil.FindTrans(self.transform, "TopLeft")
    UIUtil.CreatCloseBtnComponent(self, self.TitleBar.transform, function(go)
        self.closeComponent = go
    end, function()
        self.ctrl:CloseSelf()
    end, function()
        self.ctrl:CloseSelf()
    end, DataUtil.GetClientText(200204), false, 0, true)

    self.resourceBarParent = UIUtil.FindTrans(self.transform, "resourceBarParent")
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UINationScience, ResourceBarType.NATION_MAIN, self)

    self.mat_gray = self:AddComponent(UIImage, "grayMat"):GetMat()

    self.gridRoot = UIUtil.FindTrans(self.transform, "scroll_view/grid")
    self.lineRoot = UIUtil.FindTrans(self.transform, "scroll_view/grid/lineRoot")
    self.lineBgRoot = UIUtil.FindTrans(self.transform, "scroll_view/grid/lineBgRoot")
    self.lineBg2Root = UIUtil.FindTrans(self.transform, "scroll_view/grid/lineBg2Root")
    self.originalItemBgRoot = UIUtil.FindTrans(self.transform, "scroll_view/grid/ItemBgRoot")
    self.originalItem = UIUtil.FindTrans(self.transform, "scienceItem")
    self.originalItemBg = UIUtil.FindTrans(self.transform, "scienceItemBG")
    self.originalLine = UIUtil.FindTrans(self.transform, "line")
    self.originalFlexLine = UIUtil.FindTrans(self.transform, "flexLine")
    self.originalColumnItem = UIUtil.FindTrans(self.transform, "scroll_view/column")
    self.selectTrans = UIUtil.FindTrans(self.transform, "Select")

    --存放，每个科技的连接线
    self.lineImageList = {}
end

local function OnEnable(self)
    base.OnEnable(self)
    self:OnRefresh()
end

local function OnRefresh(self)
    if self.scienceItems == nil then
        coroutine.start(GenerateScienceTree(self))
    else
        for _, v in pairs(self.model.scienceItems) do
            self.scienceItems[v.id]:OnRefresh(v.pos.x, v.pos.y)
            if self.lineImageList[v.id] ~= nil then
                for _, w in ipairs(self.lineImageList[v.id]) do
                    w.gameObject:SetActive(v.level >= 1)
                end
            end
        end
    end
end

--刷新一个科技，暂时没有调用
local function OnUIMsgRefreshOneScienceItem(self, teachID)
    local scienceData = self.model.scienceItems[teachID]
    self.scienceItems[teachID]:OnRefresh(scienceData.pos.x, scienceData.pos.y)
    if self.lineImageList[teachID] ~= nil then
        for _, w in ipairs(self.lineImageList[teachID]) do
            w.gameObject:SetActive(scienceData.level >= 1)
        end
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.ON_NATION_SCIENCEMAIN_REFRESH, OnRefresh)
    self:AddUIListener(UIMessageNames.ON_NATION_SCIENCE_MAIN_ONE_REFRESH, OnUIMsgRefreshOneScienceItem)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.ON_NATION_SCIENCEMAIN_REFRESH, OnRefresh)
    self:RemoveUIListener(UIMessageNames.ON_NATION_SCIENCE_MAIN_ONE_REFRESH, OnUIMsgRefreshOneScienceItem)
end

local function OnDisable(self)
    base.OnDisable(self)

end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    if self.closeComponent ~= nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf()
    end
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UINationScience)
    self.scienceItems = nil
end

UINationScienceView.OnCreate = OnCreate
UINationScienceView.OnDisable = OnDisable
UINationScienceView.OnEnable = OnEnable
UINationScienceView.OnRefresh = OnRefresh
UINationScienceView.OnAddListener = OnAddListener
UINationScienceView.OnRemoveListener = OnRemoveListener
UINationScienceView.OnDestroy = OnDestroy
UINationScienceView.OnClickScienceItem = OnClickScienceItem

return UINationScienceView
