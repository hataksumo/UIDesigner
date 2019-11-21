--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIGetSkillExpView = BaseClass("UIGetSkillExpView", UIBaseView)
local base = UIBaseView
local UIGetSkillExpWrapItem = require "UI.UIGetSkillExp.Component.UIGetSkillExpWrapItem"
local allCardDebris

local function OnGetExpBtnClick(self)
    if self.selectExp > 0 then
        self.ctrl:SendGetExpRequest(self.collectionList, self.selectExp)
    else
        UISpecial:GetInstance():UITipText("所选空空如也~")
    end
end

local function OnExitBtnClick(self)
    self.ctrl:CloseSelf()
end

local function OnConditionMaskBtnClick(self)
    self.qualityGrid.gameObject:SetActive(false)
    self.conditionMaskUIButton.gameObject:SetActive(false)
end

local function OnOneStepSelectBtnClick(self)
    self:OnRefresh(true)
    for i = 1, #self.showList do
        if self.showList[i].selectType then
            self:OnSelectItem(i - 1, true)
        end
    end
end

local function OnFilterByQualityBtnClick(self)
    self.qualityGrid.gameObject:SetActive(true)
    self.conditionMaskUIButton.gameObject:SetActive(true)
end

local function OnSelectQualityCondition(self, _qualityType, _qualityText)
    self.filterType = _qualityType---1N,2R,3SR,4SSR
    self.selectQualityUIText:SetText(_qualityText)
    self:OnRefresh(false)
    self.conditionMaskUIButton:Click()
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.maskUIButton = self:AddComponent(UIButton, "mask_UIButton")
    self.exitUIButton = self:AddComponent(UIButton, "SkillExp_Panel/panel/Close_Des_Btn")
    self.expIconUIImage = self:AddComponent(UIImage, "SkillExp_Panel/left/exp/expIcon_UIImage", AtlasConfig.DynamicTex)
    self.currentGetNumUIText = self:AddComponent(UIText, "SkillExp_Panel/left/exp/expPoolNum_UIText")
    self.currentGetTextUIText = self:AddComponent(UIText, "SkillExp_Panel/left/exp/currentGetText_UIText")
    self.getUIButton = self:AddComponent(UIButton, "SkillExp_Panel/left/get_UIButton")
    self.getUIText = self:AddComponent(UIText, "SkillExp_Panel/left/get_UIButton/get_UIText")
    self.expPoolIconUIImage = self:AddComponent(UIImage, "SkillExp_Panel/left/exp/expPoolIcon_UIImage", AtlasConfig.DynamicTex)
    self.expPoolNumUIText = self:AddComponent(UIText, "SkillExp_Panel/left/exp/currentGetNum_UIText")
    self.gridUIWrapGroup3D = self:AddComponent(UIWrapGroup3D, "SkillExp_Panel/right/Scroll View/grid_UIWrapGroup3D", UIGetSkillExpWrapItem)
    self.qualityUIText = self:AddComponent(UIText, "SkillExp_Panel/right/oneStepSelect/quality_UIText")
    self.andDownUIText = self:AddComponent(UIText, "SkillExp_Panel/right/oneStepSelect/andDown_UIText")
    self.selectQualityUIText = self:AddComponent(UIText, "SkillExp_Panel/right/oneStepSelect/selectQuality_UIText")
    self.filterByQualityUIButton = self:AddComponent(UIButton, "SkillExp_Panel/right/oneStepSelect/filterByQuality_UIButton")
    self.conditionMaskUIButton = self:AddComponent(UIButton, "SkillExp_Panel/right/oneStepSelect/conditionMask_UIButton")
    self.oneStepSelectUIButton = self:AddComponent(UIButton, "SkillExp_Panel/right/oneStepSelect/oneStepSelect_UIButton")
    self.oneStepSelectUIText = self:AddComponent(UIText, "SkillExp_Panel/right/oneStepSelect/oneStepSelect_UIButton/oneStepSelect_UIText")
    self.qualityGrid = self:AddComponent(UIBaseComponent, "SkillExp_Panel/right/oneStepSelect/qualityGrid")
    self.qualityN_btn = self:AddComponent(UIButton, "SkillExp_Panel/right/oneStepSelect/qualityGrid/n")
    self.qualityR_btn = self:AddComponent(UIButton, "SkillExp_Panel/right/oneStepSelect/qualityGrid/r")
    self.qualitySR_btn = self:AddComponent(UIButton, "SkillExp_Panel/right/oneStepSelect/qualityGrid/sr")
    self.qualitySSR_btn = self:AddComponent(UIButton, "SkillExp_Panel/right/oneStepSelect/qualityGrid/ssr")
    self.qualityN_txt = self:AddComponent(UIText, "SkillExp_Panel/right/oneStepSelect/qualityGrid/n/nText")
    self.qualityR_txt = self:AddComponent(UIText, "SkillExp_Panel/right/oneStepSelect/qualityGrid/r/rText")
    self.qualitySR_txt = self:AddComponent(UIText, "SkillExp_Panel/right/oneStepSelect/qualityGrid/sr/srText")
    self.qualitySSR_txt = self:AddComponent(UIText, "SkillExp_Panel/right/oneStepSelect/qualityGrid/ssr/ssrText")
    self.qualityN_btn:SetOnClick(self, OnSelectQualityCondition, 1, self.qualityN_txt:GetText())
    self.qualityR_btn:SetOnClick(self, OnSelectQualityCondition, 2, self.qualityR_txt:GetText())
    self.qualitySR_btn:SetOnClick(self, OnSelectQualityCondition, 3, self.qualitySR_txt:GetText())
    self.qualitySSR_btn:SetOnClick(self, OnSelectQualityCondition, 4, self.qualitySSR_txt:GetText())

    self.getUIButton:SetOnClick(self, OnGetExpBtnClick)
    self.exitUIButton:SetOnClick(self, OnExitBtnClick)
    self.maskUIButton:SetOnClick(self, OnExitBtnClick)
    self.conditionMaskUIButton:SetOnClick(self, OnConditionMaskBtnClick)
    self.oneStepSelectUIButton:SetOnClick(self, OnOneStepSelectBtnClick)
    self.filterByQualityUIButton:SetOnClick(self, OnFilterByQualityBtnClick)
    self.qualityN_btn.gameObject:SetActive(false)
    self.null_obj=UIUtil.FindTrans(self.transform,"SkillExp_Panel/right/null").gameObject

    allCardDebris = DataUtil.GetData("card_debris")
end

local function OnEnable(self)
    base.OnEnable(self)
    self.conditionMaskUIButton:Click()
    self.filterType = 2---1N,2R,3SR,4SSR
    self.selectQualityUIText:SetText(self.qualityR_txt:GetText())
    self:OnRefresh(false)
end
--排序
local function SortList(_list)
    local tempItem
    for i = 1, #_list - 1 do
        for j = i + 1, #_list do
            if _list[i].quality < _list[j].quality then
                tempItem = _list[i]
                _list[i] = _list[j]
                _list[j] = tempItem
            elseif _list[i].quality == _list[j].quality then
                if _list[i].haveNum < _list[j].haveNum then
                    tempItem = _list[i]
                    _list[i] = _list[j]
                    _list[j] = tempItem
                elseif _list[i].haveNum == _list[j].haveNum then
                    if _list[i].id > _list[j].id then
                        tempItem = _list[i]
                        _list[i] = _list[j]
                        _list[j] = tempItem
                    end
                end
            end
        end
    end
end
--分类并排序
local function FilterShowList(self, _isOneStep)
    self.frontList = {}
    self.backList = {}
    self.showList = {}
    for i = 1, #self.model.allDebris do
        if self.model.allDebris[i].quality > self.filterType then
            table.insert(self.backList, self.model.allDebris[i])
        else
            table.insert(self.frontList, self.model.allDebris[i])
        end
    end
    SortList(self.frontList)
    SortList(self.backList)
    for i = 1, #self.frontList do
        table.insert(self.showList, { id = self.frontList[i].id, data = self.frontList[i], selectType = _isOneStep })
    end
    for i = 1, #self.backList do
        table.insert(self.showList, { id = self.backList[i].id, data = self.backList[i], selectType = false })
    end
end

local function UpdateSelectExp(self)
    assert(allCardDebris)
    self.selectExp = 0
    for _, v in pairs(self.collectionList) do
        if v ~= nil then
            local cardDebrisData = allCardDebris[v.id]
            if cardDebrisData and cardDebrisData.Award ~= nil and #cardDebrisData.Award > 0 then
                self.selectExp = self.selectExp + v.haveNum * cardDebrisData.Award[1].Val
            end
        end
    end
    self.currentGetNumUIText:SetText(DataUtil.GetDataNumDes(self.selectExp))
end

local function OnSelectItem(self, _realIndex, _isAdd)
    local dataIndex = _realIndex + 1
    local cmp = self.gridUIWrapGroup3D:GetComponentByIndex(_realIndex)
    if cmp ~= nil and dataIndex > 0 then
        if _isAdd then
            self.collectionList[dataIndex] = self.showList[dataIndex].data
            --TODO:从cmp到左边收集点的动画
        else
            self.collectionList[dataIndex] = nil
        end
        self.showList[dataIndex].selectType = _isAdd
    end
    UpdateSelectExp(self)
end

local function UpdateResources(self)
    self.expPoolNumUIText:SetText(DataUtil.GetDataNumDes(BackpackData:GetInstance():GetItemNumById(CoinDefine.SkillExp) ))

end

local function OnRefresh(self, _isOneStep)
    -- 各组件刷新
    self.expIconUIImage:SetSpriteName(SpriteDefine.Coin_Icon_SkillExp)
    self.expPoolIconUIImage:SetSpriteName(SpriteDefine.Coin_Icon_SkillExp)
    self.collectionList = {}
    UpdateSelectExp(self)
    FilterShowList(self, _isOneStep)
    self.currentGetNumUIText:SetText(DataUtil.GetDataNumDes(self.selectExp))
    self.gridUIWrapGroup3D:SetLength(#self.showList)
    self.gridUIWrapGroup3D:SetGridPositionByIndex(0)
    if #self.showList>0 then
        self.null_obj:SetActive(false)
    else
        self.null_obj:SetActive(true)
    end

    --UpdateView(self)
    self:UpdateResources()
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_GET_SKILL_EXP_ON_SELECT_ITEM, self.OnSelectItem)
    self:AddUIListener(UIMessageNames.ON_SKILL_EXP_NUM_CHANGE, self.UpdateResources)
    self:AddUIListener(UIMessageNames.UI_GET_SKILL_EXP_REFRESH, self.OnRefresh)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_GET_SKILL_EXP_ON_SELECT_ITEM, self.OnSelectItem)
    self:RemoveUIListener(UIMessageNames.ON_SKILL_EXP_NUM_CHANGE, self.UpdateResources)
    self:RemoveUIListener(UIMessageNames.UI_GET_SKILL_EXP_REFRESH, self.OnRefresh)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UIGetSkillExpView.OnCreate = OnCreate
UIGetSkillExpView.OnEnable = OnEnable
UIGetSkillExpView.OnRefresh = OnRefresh
UIGetSkillExpView.OnAddListener = OnAddListener
UIGetSkillExpView.OnRemoveListener = OnRemoveListener
UIGetSkillExpView.OnDestroy = OnDestroy
UIGetSkillExpView.OnSelectItem = OnSelectItem
UIGetSkillExpView.UpdateResources = UpdateResources

return UIGetSkillExpView
