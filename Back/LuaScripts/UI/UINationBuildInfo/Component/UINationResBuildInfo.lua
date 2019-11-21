local UINationResBuildInfo = BaseClass("UINationResBuildInfo", UIBaseNationComponent)
local base = UIBaseNationComponent

local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseWindow(self)
    NationSceneUIManager:GetInstance():CloseWindow(UIWindowNames.UINationResBuildInfo)
end

local function Enter(self)
    if self.buildingType == NationUtil.BUILDING_TYPE_PUNITIVE then
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPunitiveMain, self.buildingId)
    elseif self.buildingType == NationUtil.BUILDING_TYPE_RESOURCE then
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationResourcesMain, self.buildingId)
    end
    CloseWindow(self)
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
    self.sizeChangeTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot").transform
    self.sizeChangeTran.localScale = Vector3.New(NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_X, NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_Y, 1)

    
    self.titleImageUIImage = self:AddComponent(UIImage, "SizeChangeRoot/root/Bg/infoTop/titleImage_UIImage", AtlasConfig.DynamicNationTex)
    self.titleTextUIText = self:AddComponent(UIText, "SizeChangeRoot/root/Bg/infoTop/titleText_UIText")
    self.landformTextUIText = self:AddComponent(UIText, "SizeChangeRoot/root/Bg/infoTop/landformText_UIText")
    self.landformNameTextUIText = self:AddComponent(UIText, "SizeChangeRoot/root/Bg/infoTop/landformNameText_UIText")
    self.infoText = self:AddComponent(UIText, "SizeChangeRoot/root/Bg/bottomInfo/infoText")

    self.collectBtn = self:AddComponent(UIButton, "SizeChangeRoot/root/Bg/infoTop/collectBtn")
    self.collectBtn_UIImage = self:AddComponent(UIImage, "SizeChangeRoot/root/Bg/infoTop/collectBtn/collectBtnImage", AtlasConfig.DynamicNationTex)
    self.config_text=self:AddComponent(UIText,"SizeChangeRoot/root/Buttons/configButton/ConfigText")
    self.collectBtn:SetOnClick(function()
        CollectThisPoint(self)
    end)

    self.shareBtn = self:AddComponent(UIButton, "SizeChangeRoot/root/Bg/infoTop/shareBtn")
    self.shareBtn:SetOnClick(function()
        ShareThisPoint(self)
    end)

    self.enterUIButton = self:AddComponent(UIButton, "SizeChangeRoot/root/Buttons/configButton")
    self.enterUIButton:SetOnClick(function()
        Enter(self)
    end)
end

local function OnEnable(self, buildingId)
    base.OnEnable(self)

    self.mapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager

    --设置3d坐标
    local tilePosX, tilePosY = NationUtil.GetXYByCellId(buildingId)
    local pos = self.mapManager:GetGridUnityCellToWorldByIntXYZ(tilePosX, tilePosY, 0)
    self.transform.position = Vector3.New(pos.x, pos.y, 0)
    self.transform.localScale = Vector3.New(0.6, 0.6, 1)

    self.buildingId = buildingId
    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(buildingId)

    self.buildingType = buildInfo.Type -- 保存一份建筑类型
    local terrainStr = NationUtil.GetCellTerrainByType(buildInfo.Terrain)
    local cityIcon = NationUtil.GetCityIconByType(buildInfo.Type)

    --坐标收藏
    self.collectPosID = NationCollectPosData:GetInstance():GetPosPointIDByData(self.buildingId)

    --显示UI
    if self.collectPosID then
        self.collectBtn_UIImage:SetSpriteName("ui_t_c2_630")
    else
        self.collectBtn_UIImage:SetSpriteName("ui_t_c2_592")
    end

    self.titleImageUIImage:SetSpriteName(cityIcon)
    self.titleTextUIText:SetText(buildInfo.Name)
    self.infoText:SetText(buildInfo.Des)
    self.landformTextUIText:SetText(DataUtil.GetClientText(200030))
    self.landformNameTextUIText:SetText(terrainStr)
    self.config_text:SetText(DataUtil.GetClientText(200033))
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnDisable(self)
    base.OnDisable(self)

    self.mapManager = nil
    self.buildingId = nil
    self.buildingType = nil
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

UINationResBuildInfo.OnCreate = OnCreate
UINationResBuildInfo.OnEnable = OnEnable
UINationResBuildInfo.OnRefresh = OnRefresh
UINationResBuildInfo.OnDisable = OnDisable
UINationResBuildInfo.OnAddListener = OnAddListener
UINationResBuildInfo.OnRemoveListener = OnRemoveListener
UINationResBuildInfo.CloseWindow = CloseWindow

return UINationResBuildInfo