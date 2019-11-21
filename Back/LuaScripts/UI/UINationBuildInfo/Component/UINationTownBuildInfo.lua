local UINationTownBuildInfo = BaseClass("UINationTownBuildInfo", UIBaseNationComponent)
local base = UIBaseNationComponent

local UINationBanditsItem = require "UI.UINationBuildInfo.Component.UINationBanditsItem"
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseWindow(self)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_DEF_RECOVER_TOWN_ACTIVE,self.buildingId,false)
    NationSceneUIManager:GetInstance():CloseWindow(UIWindowNames.UINationTownBuildInfo)
end
--打开剿匪tip
local function OnClickBanditsItem(self, itemData)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationBanditsTip, self.buildingId, itemData.wipeData.PointId)
    CloseWindow(self)
end

--收藏坐标
local function CollectThisPoint(self)
    local collectID = self.collectPosID
    if collectID ~= nil then
        NationCollectPosData:GetInstance():DeletePointData(collectID)
    else
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationCollectPoint, self.buildingId)
    end
    CloseWindow(self)
end
--分享坐标
local function ShareThisPoint(self)
    local temp = {}
    temp.posID = self.buildingId
    temp.subPosID = 0
    temp.areaID = 0
    temp.infoID = 0

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPositionShare, temp)
end

local function OnClickOpenTeamConfig(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationTeamConfiguration, self.buildingId)
    CloseWindow(self)
end

local function OnClickTeamMove(self)
    if NationTeamData:GetInstance():DoseAllTeamCardsEmpty() then
        UISpecial:GetInstance():UITipText("未配置队伍，请先配置队伍")
        return
    end
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationSelectTeamBattle, { NationDefine.NATION_TEAM_BEHAVIOR_TYPE.TRANSFER, self.buildingId })
    CloseWindow(self)
end

local function OnDataMsgTownDataChange(self, townId)
    if self.buildingId ~= townId then
        return
    end
    self:OnRefresh()
end

local function OnDataMsgTownDefRecoverRemove(self, data)
    if  not self.__IsDefRecoverElementContainsTownId(data,self.buildingId) then
        return
    end
    self:OnRefresh()
end

local function OnDataMsgTownDefRecoverAdd(self, data)
    if not self.__IsDefRecoverElementContainsTownId(data,self.buildingId) then
        return
    end
    self:OnRefresh()
end

--获取需要显示的城镇剿匪点
local function GetFilterRemindLevelIds(levelIds, staticTownData)
    local wipeOuts = staticTownData.WipeOut
    local arr = table.keys(wipeOuts)
    for i, v in ipairs(levelIds) do
        if wipeOuts[v] ~= nil then
            table.removebyvalue(arr, v)
        end
    end
    return arr
end


local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
        self.sizeChangeTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot").transform
        self.sizeChangeTran.localScale = Vector3.New(NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_X, NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_Y, 1)

        self.titleImageUIImage = self:AddComponent(UIImage, "SizeChangeRoot/mask/root/activeGroup/Bg/infoTop/titleImage_UIImage")
        self.titleTextUIText = self:AddComponent(UIText, "SizeChangeRoot/mask/root/activeGroup/Bg/infoTop/titleText_UIText")
        self.cityStaticTextUIText = self:AddComponent(UIText, "SizeChangeRoot/mask/root/activeGroup/Bg/infoTop/cityStaticText_UIText")

        self.cityStaticValueTextUIText = self:AddComponent(UIText, "SizeChangeRoot/mask/root/activeGroup/Bg/infoTop/cityStaticValueText_UIText")
        self.landformTextUIText = self:AddComponent(UIText, "SizeChangeRoot/mask/root/activeGroup/Bg/infoTop/landformText_UIText")
        self.landformNameTextUIText = self:AddComponent(UIText, "SizeChangeRoot/mask/root/activeGroup/Bg/infoTop/landformNameText_UIText")
        self.redifTextUIText = self:AddComponent(UIText, "SizeChangeRoot/mask/root/activeGroup/Bg/infoTop/redifText_UIText")
        self.redifValueTextUIText = self:AddComponent(UIText, "SizeChangeRoot/mask/root/activeGroup/Bg/infoTop/redifValueText_UIText")
        self.infoText = self:AddComponent(UIText, "SizeChangeRoot/mask/root/activeGroup/Bg/bottomInfo/infoText")

        self.activeGroup = UIUtil.FindTrans(self.transform, "SizeChangeRoot/mask/root/activeGroup").gameObject
        self.inactive_Group = UIUtil.FindTrans(self.transform, "SizeChangeRoot/mask/root/inactive_Group").gameObject
        self.configuration_text=self:AddComponent(UIText,"SizeChangeRoot/mask/root/activeGroup/Buttons/configButton/ConfigurationText")
        self.redeploy_text=self:AddComponent(UIText,"SizeChangeRoot/mask/root/activeGroup/Buttons/redeployButton/RedeployText")

        self.pos1=self:AddComponent(UIText,"SizeChangeRoot/mask/root/inactive_Group/pos1")

        self.pos2=self:AddComponent(UIText,"SizeChangeRoot/mask/root/inactive_Group/pos2")
        self.connect_line=self:AddComponent(UIImage,"SizeChangeRoot/mask/root/ConnetLine")


        self.gridUIWrapGroup3D = self:AddComponent(UIWrapGroup3D, "SizeChangeRoot/mask/root/inactive_Group/Scroll View/Content", UINationBanditsItem)

        self.configUIButton = self:AddComponent(UIButton, "SizeChangeRoot/mask/root/activeGroup/Buttons/configButton")
        self.configUIButton:SetOnClick(function()
            OnClickOpenTeamConfig(self)
        end)

        self.redeployUIButton = self:AddComponent(UIButton, "SizeChangeRoot/mask/root/activeGroup/Buttons/redeployButton")
        self.redeployUIButton:SetOnClick(function()
            OnClickTeamMove(self)
        end)

        self.collectButton = self:AddComponent(UIButton, "SizeChangeRoot/mask/root/collectButton")
        self.collectButton_UIImage = self:AddComponent(UIImage, "SizeChangeRoot/mask/root/collectButton/collectBtnImage", AtlasConfig.DynamicNationTex)
        self.collectButton:SetOnClick(function()
            CollectThisPoint(self)
        end)

        self.shareButton = self:AddComponent(UIButton, "SizeChangeRoot/mask/root/shareButton")
        self.shareButton:SetOnClick(function()
            ShareThisPoint(self)
        end)

    self.cityStaticTextUIText:SetText(DataUtil.GetClientText(200010))
    self.landformTextUIText:SetText(DataUtil.GetClientText(200011))
    self.redifTextUIText:SetText(DataUtil.GetClientText(200012))
    self.configuration_text:SetText(DataUtil.GetClientText(200018))
    self.redeploy_text:SetText(DataUtil.GetClientText(200019))
end

local function OnEnable(self, buildingId)
    base.OnEnable(self)
    self.buildingId = buildingId
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_DEF_RECOVER_TOWN_ACTIVE,self.buildingId,true)

    self.mapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager

    --设置3d坐标
    local tilePosX, tilePosY = NationUtil.GetXYByCellId(buildingId)
    local pos = self.mapManager:GetGridUnityCellToWorldByIntXYZ(tilePosX, tilePosY, 0)
    self.transform.position = Vector3.New(pos.x, pos.y, 0)
    self.transform.localScale = Vector3.New(0.6, 0.6, 1)

    if NationCollectPosData:GetInstance():GetPosPointIDByData(self.buildingId) then
        self.collectButton_UIImage:SetSpriteName("ui_t_c2_630")
    else
        self.collectButton_UIImage:SetSpriteName("ui_t_c2_592")
    end
    

    self:OnRefresh()
end

local function OnRefresh(self)
    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(self.buildingId)
    local nationTownData = NationTownData:GetInstance():GetNationTownDataById(self.buildingId)

    if nationTownData == nil then
        self.status = NationDefine.NATION_TOWN_STATUS.INACTIVE
        self.armyReserve = buildInfo.ReserveForce
        self.levelIds = {}

    else
        self.status = nationTownData.status
        self.armyReserve = math.modf(nationTownData.calcArmyReserve)
        self.levelIds = {}
        for i, v in ipairs(nationTownData.levelIds) do
            table.insert(self.levelIds, v)
        end
        table.sort(self.levelIds, function(a, b)
            return a < b
        end)
    end

    --local townId = math.modf(v.townId)
    --local pos =math.modf(v.pos)
    --local endTime = math.modf(v.endTime)
    --local defRecoverId = NationTownData:GetInstance().GetDefRecoverId(townId,pos)

    if self.status == NationDefine.NATION_TOWN_STATUS.INACTIVE then
        --未激活
        local allTownDefRecoverData = NationTownData:GetInstance():GetNationDefRecoverDataByTownId(self.buildingId)
        local remindLevelIds = GetFilterRemindLevelIds(self.levelIds, buildInfo)
        self.wipeStaticDataList = {}
        for i, v in ipairs(remindLevelIds) do
            local item = {}
            local defRecoverData = self.__GetDefRecoverElementByPos(allTownDefRecoverData ,v)
            item.wipeData = buildInfo.WipeOut[v]
            item.defRecoverData = defRecoverData
            table.insert(self.wipeStaticDataList, item)
        end

        ---UI
        self.activeGroup:SetActive(false)
        self.inactive_Group:SetActive(true)

        self.collectButton:SetActive(false)
        self.shareButton:SetActive(false)
        self.connect_line:SetActive(false)
        local length = table.length(self.wipeStaticDataList)
        self.gridUIWrapGroup3D:SetLength(length)
        self.gridUIWrapGroup3D:SetGridPositionByIndex(0)
    else
        -- 已激活
        ---UI
        self.activeGroup:SetActive(true)
        self.inactive_Group:SetActive(false)
        self.collectButton:SetActive(true)
        self.shareButton:SetActive(true)
        self.connect_line:SetActive(true)
        local statusName = self.status == NationDefine.NATION_TOWN_STATUS.INACTIVE and "未激活" or "已激活"

        self.titleTextUIText:SetText(buildInfo.Name)
        self.cityStaticValueTextUIText:SetText(statusName)
        self.landformNameTextUIText:SetText(NationUtil.GetCellTerrainByType(buildInfo.Terrain))
        self.redifValueTextUIText:SetText(self.armyReserve.."/"..buildInfo.ReserveForce)
        self.infoText:SetText(buildInfo.Des)
    end
end

local function __IsDefRecoverElementContainsTownId(arr, townId)
    if arr == nil then
        return false
    end

    for j, v in ipairs(arr) do
        if v.townId == townId then
            return true
        end
    end
    return false
end



local function __GetDefRecoverElementByPos(arr, levelId)
    if arr == nil then
        return nil
    end

    for j, v in ipairs(arr) do
        if v.pos == levelId then
            return v
        end
    end
    return nil
end

local function OnDisable(self)

end

local function OnDisable(self)
    base.OnDisable(self)

    self.buildingId = nil
    self.mapManager = nil
    self.status = nil
    self.armyReserve = nil
    self.levelIds = {}
    self.wipeStaticDataList = {}
end

local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH, OnDataMsgTownDataChange)
    self:AddUIListener(UIMessageNames.UI_NATION_BUILDINFO_CLOSE, CloseWindow)
    self:AddDataListener(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_REMOVE, OnDataMsgTownDefRecoverRemove)
    self:AddDataListener(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_ADD, OnDataMsgTownDefRecoverAdd)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self:RemoveDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH, OnDataMsgTownDataChange)
    self:RemoveUIListener(UIMessageNames.UI_NATION_BUILDINFO_CLOSE, CloseWindow)
    self:RemoveDataListener(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_REMOVE, OnDataMsgTownDefRecoverRemove)
    self:RemoveDataListener(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_ADD, OnDataMsgTownDefRecoverAdd)

end

UINationTownBuildInfo.OnCreate = OnCreate
UINationTownBuildInfo.OnEnable = OnEnable
UINationTownBuildInfo.OnRefresh = OnRefresh
UINationTownBuildInfo.OnDisable = OnDisable
UINationTownBuildInfo.OnAddListener = OnAddListener
UINationTownBuildInfo.OnRemoveListener = OnRemoveListener
UINationTownBuildInfo.__GetDefRecoverElementByPos = __GetDefRecoverElementByPos
UINationTownBuildInfo.__IsDefRecoverElementContainsTownId = __IsDefRecoverElementContainsTownId

UINationTownBuildInfo.CloseWindow = CloseWindow
UINationTownBuildInfo.OnClickBanditsItem = OnClickBanditsItem

return UINationTownBuildInfo