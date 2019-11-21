local UINationRoadblockTip = BaseClass("UINationRoadblockTip", UIBaseNationComponent)
local base = UIBaseNationComponent

local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseWindow(self)
    NationSceneUIManager:GetInstance():CloseWindow(UIWindowNames.UINationRoadblockTip)
end

local function CollectThisPoint(self)
    local collectID = self.collectPosID
    if collectID ~= nil then
        NationCollectPosData:GetInstance():DeletePointData(collectID)
    else
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationCollectPoint, self.buildingId)
    end
    CloseWindow(self)
end

local function ShareThisPoint(self)
    local temp = {}
    temp.posID = self.buildingId
    temp.subPosID = 0
    temp.areaID = 0
    temp.infoID = 0

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPositionShare, temp)
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    --组建初始化
    self.sizeChangeTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot").transform
    self.sizeChangeTran.localScale = Vector3.New(NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_X, NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_Y, 1)
    
    self.titleImageUIImage = self:AddComponent(UIImage, "SizeChangeRoot/root/Bg/infoTop/titleImage_UIImage", AtlasConfig.DynamicTex)
    self.titleText_UIText = self:AddComponent(UIText, "SizeChangeRoot/root/TitleName")
    self.infoText_UIText = self:AddComponent(UIText, "SizeChangeRoot/root/infoText")

    self.titleText_UIText:SetText("障碍物")
    self.infoText_UIText:SetText("特殊地形,不可占领")
    --self.collectBtn = self:AddComponent(UIButton, "SizeChangeRoot/root/Bg/infoTop/collectBtn")
    --self.collectBtn_UIImage = self:AddComponent(UIImage, "SizeChangeRoot/root/Bg/infoTop/collectBtn/collectBtnImage", AtlasConfig.DynamicNationTex)
    --self.config_text=self:AddComponent(UIText,"SizeChangeRoot/root/Buttons/configButton/ConfigText")
    --self.collectBtn:SetOnClick(function()
    --    CollectThisPoint(self)
    --end)
    --
    --self.shareBtn = self:AddComponent(UIButton, "SizeChangeRoot/root/Bg/infoTop/shareBtn")
    --self.shareBtn:SetOnClick(function()
    --    ShareThisPoint(self)
    --end)
end

local function OnEnable(self, cellID)
    base.OnEnable(self)

    self.mapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager

    --设置3d坐标
    local tilePosX, tilePosY = NationUtil.GetXYByCellId(cellID)
    local pos = self.mapManager:GetGridUnityCellToWorldByIntXYZ(tilePosX, tilePosY, 0)
    self.transform.position = Vector3.New(pos.x, pos.y, 0)
    self.transform.localScale = Vector3.New(0.6, 0.6, 1)

    self.cellID = cellID

    ----坐标收藏
    --    --self.collectPosID = NationCollectPosData:GetInstance():GetPosPointIDByData(self.cellID)
    --    --
    --    ----显示UI
    --    --if self.collectPosID then
    --    --    self.collectBtn_UIImage:SetSpriteName("ui_t_c2_630")
    --    --else
    --    --    self.collectBtn_UIImage:SetSpriteName("ui_t_c2_592")
    --    --end

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnDisable(self)
    base.OnDisable(self)

    self.mapManager = nil
    self.cellID = nil
    self.collectPosID = nil
end

local function OnAddListener(self)
    base.OnAddListener(self)

    self:AddUIListener(UIMessageNames.UI_NATION_BUILDINFO_CLOSE, CloseWindow)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)

    self:RemoveUIListener(UIMessageNames.UI_NATION_BUILDINFO_CLOSE, CloseWindow)
end

UINationRoadblockTip.OnCreate = OnCreate
UINationRoadblockTip.OnEnable = OnEnable
UINationRoadblockTip.OnRefresh = OnRefresh
UINationRoadblockTip.OnDisable = OnDisable
UINationRoadblockTip.OnAddListener = OnAddListener
UINationRoadblockTip.OnRemoveListener = OnRemoveListener
UINationRoadblockTip.CloseWindow = CloseWindow

return UINationRoadblockTip