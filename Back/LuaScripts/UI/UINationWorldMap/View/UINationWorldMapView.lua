--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationWorldMapView = BaseClass("UINationWorldMapView", UIBaseView)
local base = UIBaseView

local NationUtil = require "GameLogic.Nation.NationUtil"
local CityItemPath = "UI/Prefabs/Common/UINationMapItem.prefab"
local LineItemPath = "UI/Prefabs/Common/UINationMapLineItem.prefab"
local Screen = CS.UnityEngine.Screen
local EventTriggerType = CS.UnityEngine.EventSystems.EventTriggerType
local EventTrigger = CS.UnityEngine.EventSystems.EventTrigger

local mapSizeRate = 40  --缩放比例1:20

local function TileMapPosToUIPos(self, buildID)
    --按比例缩放到UI上的坐标
    local uiPosX = NationUtil.GetXByCellId(buildID)
    local uiPosY = NationUtil.GetYByCellId(buildID)

    --获得Unity世界Pos
    local untiyPos = self.nationMapManager:GetGridUnityCellToWorldByIntXYZ(uiPosX, uiPosY, 0)

    local uiPos = {}
    --缩放比例1:20
    uiPos.x = untiyPos.x * mapSizeRate
    uiPos.y = untiyPos.y * mapSizeRate

    return uiPos

    --uiPosX = uiPosX * mapSizeRate
    --uiPosY = uiPosY * mapSizeRate
    ----倾斜45度后的坐标
    --local biasPos = {}
    --biasPos.y = math.sqrt(uiPosX * uiPosX + uiPosY * uiPosY) * math.sin(math.pi / 4 + math.atan(uiPosY / uiPosX))
    --biasPos.x = math.sqrt(uiPosX * uiPosX + uiPosY * uiPosY) * math.cos(math.pi / 4 + math.atan(uiPosY / uiPosX))
    --
    --return biasPos
end

local function OnUIMsgClickPointPos(self, pos)
    --Logger.Log("屏幕尺寸width:  " .. Screen.width .. "   height：  " .. Screen.height)
    --Logger.Log("parentCanvasRect：x ： " .. self.parentCanvasRect.sizeDelta.x .. "  y :  " .. self.parentCanvasRect.sizeDelta.y)
    pos.x = (pos.x / Screen.width) * self.parentCanvasRect.sizeDelta.x
    pos.y = (pos.y / Screen.height) * self.parentCanvasRect.sizeDelta.y

    --Logger.Log("鼠标点击的屏幕内的坐标：x ： " .. pos.x .. "  y :  " .. pos.y)
    pos.x = pos.x - self.parentCanvasRect.sizeDelta.x / 2
    --Logger.Log("map的坐标：x ： " .. self.mapRootRectTrans.anchoredPosition.x .. "  y :  " .. self.mapRootRectTrans.anchoredPosition.y)
    local unityPosX = (pos.x - self.mapRootRectTrans.anchoredPosition.x) / mapSizeRate
    local unityPosY = ((pos.y - 160) - self.mapRootRectTrans.anchoredPosition.y) / mapSizeRate  --160为prefab底部，bg的高
    --Logger.Log("点击的坐标：x ： " .. unityPosX * mapSizeRate .. "  y :  " .. unityPosY * mapSizeRate)
    local cellPos = self.nationMapManager:GetGridUnityWorldToCell(Vector3.New(unityPosX, unityPosY, 0))
    local posX = cellPos.x
    local posY = cellPos.y
    --Logger.Log("cell的坐标：x ： " .. posX .. "  y :  " .. posY)

    local function GetPosPointStr(self, posX, posY)
        if posX < 0 or posY < 0 then
            return nil
        end

        local cellID = NationUtil.GetCellId(posX, posY)
        local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(math.modf(cellID))
        if buildInfo ~= nil then
            local posX, posY = NationUtil.GetXYByCellId(buildInfo.BuildId)
            self.positionUIText:SetText(buildInfo.Name .. string.format("（%s，%s）", posX, posY))
            UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_WORLD_MAP_REFRESH_POSITION, cellID)
            self.markPos.localPosition = Vector3.New(unityPosX * mapSizeRate, unityPosY * mapSizeRate, 0)
            return true
        else
            return nil
        end
    end

    local tempStr = GetPosPointStr(self, posX, posY)
    if tempStr == nil then
        for i = 1, 10 do
            local tempStr = GetPosPointStr(self, posX + i, posY)
            if tempStr ~= nil then
                return
            end
            local tempStr = GetPosPointStr(self, posX + i, posY + i)
            if tempStr ~= nil then
                return
            end
            local tempStr = GetPosPointStr(self, posX + i, posY - i)
            if tempStr ~= nil then
                return
            end
            local tempStr = GetPosPointStr(self, posX, posY + i)
            if tempStr ~= nil then
                return
            end
            local tempStr = GetPosPointStr(self, posX, posY - i)
            if tempStr ~= nil then
                return
            end
            local tempStr = GetPosPointStr(self, posX - i, posY)
            if tempStr ~= nil then
                return
            end
            local tempStr = GetPosPointStr(self, posX - i, posY - i)
            if tempStr ~= nil then
                return
            end
            local tempStr = GetPosPointStr(self, posX - i, posY + i)
            if tempStr ~= nil then
                return
            end
            for j = 1, i - 1 do
                local tempStr = GetPosPointStr(self, posX + i, posY + j)
                if tempStr ~= nil then
                    return
                end
                local tempStr = GetPosPointStr(self, posX + i, posY - j)
                if tempStr ~= nil then
                    return
                end
                local tempStr = GetPosPointStr(self, posX - i, posY + j)
                if tempStr ~= nil then
                    return
                end
                local tempStr = GetPosPointStr(self, posX - i, posY - j)
                if tempStr ~= nil then
                    return
                end

                local tempStr = GetPosPointStr(self, posX + j, posY + i)
                if tempStr ~= nil then
                    return
                end
                local tempStr = GetPosPointStr(self, posX + j, posY - i)
                if tempStr ~= nil then
                    return
                end
                local tempStr = GetPosPointStr(self, posX - j, posY + i)
                if tempStr ~= nil then
                    return
                end
                local tempStr = GetPosPointStr(self, posX - j, posY - i)
                if tempStr ~= nil then
                    return
                end
            end
        end
    end
    Logger.Log("没有找到！！！！")
end

--初始化标记的点
local function InitPosMarkUI(self, uiPos, buildID, name)
    self.markPos.localPosition = Vector3.New(uiPos.x, uiPos.y, 0)
    self.mapRootRectTrans.anchoredPosition = Vector3.New(-uiPos.x, -uiPos.y + 420, 0)
    local posX, posY = NationUtil.GetXYByCellId(buildID)
    self.positionUIText:SetText(name .. string.format("（%s，%s）", posX, posY))
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_WORLD_MAP_REFRESH_POSITION, buildID)
end

--动态生成世界地图
local function GenerateWorldMap(self)
    self.cityMapList = {}
    self.cityLineMapList = {}
    for _, v in pairs(NationMapInfoData:GetInstance():GetNationalMap()) do
        GameObjectPool:GetInstance():GetGameObjectAsync(CityItemPath, function(go)
            local objData = { gameObj = go, nameText = nil, cityImage = nil, imageStr = nil }
            local uiPos = TileMapPosToUIPos(self, v.BuildId)
            go.transform:SetParent(self.BuildRoot)
            go.transform.localScale = Vector3.one
            go.transform.localPosition = Vector3.New(uiPos.x, uiPos.y, 0)
            objData.nameText = UIUtil.FindText(go.transform, "Text")
            objData.nameText.text = v.Name
            objData.maskImage = UIUtil.FindImage(go.transform, "Mask")
            objData.cityImage = UIUtil.FindImage(go.transform, "City")
            objData.imageStr = self.model.cityTypeList[v.Type].icon
            if v.Type == NationUtil.BUILDING_TYPE_YU_DU then
                InitPosMarkUI(self, uiPos, v.BuildId, v.Name)
            end
            UIUtil.CommonLoadImg(objData.cityImage, AtlasConfig.DynamicNationTex, objData.imageStr)

            if v.Type == NationUtil.BUILDING_TYPE_TOWN then
                if NationTownData:GetInstance():IsNationTownDataActiveById(v.BuildId) == false then
                    objData.maskImage.gameObject:SetActive(true)
                else
                    objData.maskImage.gameObject:SetActive(false)
                end
            else
                objData.maskImage.gameObject:SetActive(false)
            end

            self.cityMapList[v.BuildId] = objData
        end)
    end

    for k, v in pairs(self.nationMapManager.cacheCellIdToAllLinkCellIdMap) do
        for l, w in pairs(v) do
            local roadAID = k * 100000000 + w
            local roadAInfo = NationMapInfoData:GetInstance().national_road_cost[tostring(roadAID)]
            local roadBID = w * 100000000 + k
            local roadBInfo = NationMapInfoData:GetInstance().national_road_cost[tostring(roadBID)]
            local roadInfo = roadAInfo or roadBInfo
            if roadInfo == nil then
                Logger.LogError("roadInfo is null!!!")
            end
            if self.cityLineMapList[tostring(roadInfo.RoadId)] == nil then
                self.cityLineMapList[tostring(roadInfo.RoadId)] = {}
                local uiPosA = TileMapPosToUIPos(self, k)
                local uiPosB = TileMapPosToUIPos(self, w)
                GameObjectPool:GetInstance():GetGameObjectAsync(LineItemPath, function(go)
                    local objData = { gameObj = go, image = nil }
                    go.transform:SetParent(self.RoadRoot)
                    go.transform.localScale = Vector3.one
                    go.transform.localPosition = Vector3.New((uiPosB.x + uiPosA.x) / 2, (uiPosB.y + uiPosA.y) / 2, 0)
                    local length = Vector2.Distance(uiPosB, uiPosA)
                    local rectTransform = UIUtil.FindComponent(go.transform, typeof(CS.UnityEngine.RectTransform))
                    rectTransform.sizeDelta = Vector2.New(length, 10)
                    local KValue = (uiPosB.y - uiPosA.y) / (uiPosB.x - uiPosA.x)

                    go.transform.localRotation = Quaternion.Euler(0, 0, math.atan(KValue) * 180 / math.pi)

                    local image = UIUtil.FindImage(go.transform, "")
                    objData.image = image

                    self.cityLineMapList[tostring(roadInfo.RoadId)] = objData
                end)
            end
        end
    end
end

--注册事件
local function RegisterAction(self, eventId, fun)
    local eventEntry = EventTrigger.Entry()
    eventEntry.eventID = eventId
    eventEntry.callback:AddListener(Bind(self, fun))
    self.triggerObj.triggers:Add(eventEntry)
end
local function OnScrollRectPointerDown(self, pointerEventData)
    self.pointerPos = pointerEventData.position
end
local function OnScrollRectPointerUp(self, pointerEventData)
    if self.pointerPos == pointerEventData.position then
        OnUIMsgClickPointPos(self, pointerEventData.position)
    end
end
--开始拖拽
local function OnScrollRectBeginDrag(self, pointerEventData)
    self.parent_scroll_rect:OnBeginDrag(pointerEventData)
end
--拖拽中
local function OnScrollRectDrag(self, pointerEventData)
    self.parent_scroll_rect:OnDrag(pointerEventData)
end
--结束拖拽
local function OnScrollRectEndDrag(self, pointerEventData)
    self.parent_scroll_rect:OnEndDrag(pointerEventData)
end

local function OnValueChangedShowBuildName(self, value)
    if value then
        for _, v in pairs(self.cityMapList) do
            v.nameText.gameObject:SetActive(true)
        end
    else
        for _, v in pairs(self.cityMapList) do
            v.nameText.gameObject:SetActive(false)
        end
    end
end

local function OnUIMsgRefreshActiveCity(self, townID)
    local cityData = self.cityMapList[townID]
    if cityData ~= nil then
        local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(townID)
        if buildInfo.Type == NationUtil.BUILDING_TYPE_TOWN then
            if NationTownData:GetInstance():IsNationTownDataActiveById(townID) == false then
                cityData.maskImage.gameObject:SetActive(true)
            else
                cityData.maskImage.gameObject:SetActive(false)
            end
        end
    end
end

local function OnUIMsgRefreshRoadLine(self)
    for _, v in pairs(self.model.targetPathList) do
        local buildAID = math.modf(v / 100000000)
        local buildBID = v % 100000000
        local buildObj = self.cityMapList[buildAID]
        UIUtil.CommonLoadImg(buildObj.cityImage, AtlasConfig.DynamicNationTex, "ui_dtex_Item_1603001")
        buildObj = self.cityMapList[buildBID]
        UIUtil.CommonLoadImg(buildObj.cityImage, AtlasConfig.DynamicNationTex, "ui_dtex_Item_1603001")

        local lineObj = self.cityLineMapList[v]
        lineObj.image.color = CS.UnityEngine.Color.green
    end
    for _, w in pairs(self.model.hidePathList) do
        local buildAID = math.modf(w / 100000000)
        local buildBID = w % 100000000
        local buildObj = self.cityMapList[buildAID]
        UIUtil.CommonLoadImg(buildObj.cityImage, AtlasConfig.DynamicNationTex, buildObj.imageStr)
        buildObj = self.cityMapList[buildBID]
        UIUtil.CommonLoadImg(buildObj.cityImage, AtlasConfig.DynamicNationTex, buildObj.imageStr)

        local lineObj = self.cityLineMapList[w]
        lineObj.image.color = CS.UnityEngine.Color.white
    end
end

local function OnValueChangedShowRoadLine(self, value)
    if value then
        self.ctrl:OnClickNavigationBtn(true)
    else
        self.ctrl:OnClickNavigationBtn(false)
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.parentCanvasRect = UIUtil.FindComponent(self.holder.transform, typeof(CS.UnityEngine.RectTransform), "")
    self.nationMapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager

    self.TitleBar = UIUtil.FindTrans(self.transform, "TopLeft")
    UIUtil.CreatCloseBtnComponent(self, self.TitleBar.transform, function(go)
        self.closeComponent = go
    end, function()
        self.ctrl:CloseSelf()
    end, function()
        self.ctrl:CloseSelf()
    end, DataUtil.GetClientText(200400), false, 0, true)

    self.resourceBarParent = UIUtil.FindTrans(self.transform, "resourceBarParent")
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent, UIWindowNames.UINationWorldMap, ResourceBarType.NATION_MAIN, self, true)

    self.turnUIButton = self:AddComponent(UIButton, "Bottom/Turn_UIButton")
    self.turnUIButton:SetOnClick(function()
        self.ctrl:TurnToPosPoint()
    end)

    self.buildNameUIToggle = self:AddComponent(UIToggle, "Bottom/BuildName_UIToggle")
    self.buildNameUIToggle:SetValueChanged(function(value)
        OnValueChangedShowBuildName(self, value)
    end)

    self.navigateUIToggle = self:AddComponent(UIToggle, "Bottom/Navigate_UIToggle")
    self.navigateUIToggle:SetValueChanged(function(value)
        OnValueChangedShowRoadLine(self, value)
    end)

    self.turnButtonUIText = self:AddComponent(UIText, "Bottom/TurnButton_UIText")

    self.positionUIText = self:AddComponent(UIText, "Bottom/Position_UIText")

    self.typeCityTab = {}
    for i = 1, 6 do
        self.typeCityTab[i] = {}
        self.typeCityTab[i].icon = self:AddComponent(UIImage, "Bottom/Grid/Item" .. i .. "/CityImage" .. i, AtlasConfig.DynamicNationTex)
        self.typeCityTab[i].text = self:AddComponent(UIText, "Bottom/Grid/Item" .. i .. "/CityText" .. i)
    end

    self.parent_scroll_rect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.ScrollRect), "MapScrollView")
    self.mapRoot = UIUtil.FindTrans(self.transform, "MapScrollView/Viewport/Content")
    self.BuildRoot = UIUtil.FindTrans(self.transform, "MapScrollView/Viewport/Content/BuildRoot")
    self.RoadRoot = UIUtil.FindTrans(self.transform, "MapScrollView/Viewport/Content/RoadRoot")
    self.mapRootRectTrans = UIUtil.FindComponent(self.mapRoot, typeof(CS.UnityEngine.RectTransform))

    self.markPos = UIUtil.FindTrans(self.transform, "MapScrollView/Viewport/Content/PosMark")

    ---生成世界地图，（地图不会动态变化，所以放在create里。减少实例化频繁调用）
    coroutine.start(GenerateWorldMap(self))

    --底部城市类型图标
    for k, v in ipairs(self.model.cityTypeList) do
        self.typeCityTab[k].text:SetText(v.name)
        self.typeCityTab[k].icon:SetSpriteName(v.icon)
    end

    self.triggerObj = self.mapRoot.gameObject:AddComponent(typeof(EventTrigger))
    RegisterAction(self, EventTriggerType.PointerDown, OnScrollRectPointerDown)
    RegisterAction(self, EventTriggerType.PointerUp, OnScrollRectPointerUp)
    RegisterAction(self, EventTriggerType.BeginDrag, OnScrollRectBeginDrag)
    RegisterAction(self, EventTriggerType.Drag, OnScrollRectDrag)
    RegisterAction(self, EventTriggerType.EndDrag, OnScrollRectEndDrag)

    self.hadCreate = false
end

local function OnEnable(self)
    base.OnEnable(self)

    if self.hadCreate then
        for k, v in pairs(self.cityMapList) do
            local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(k)
            if buildInfo.Type == NationUtil.BUILDING_TYPE_TOWN then
                if NationTownData:GetInstance():IsNationTownDataActiveById(k) == false then
                    v.maskImage.gameObject:SetActive(true)
                else
                    v.maskImage.gameObject:SetActive(false)
                end
            end
        end
    end

    self.hadCreate = true
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新
    Logger.Log("打开地图界面结束，时间： " .. TimeSyncManager:GetInstance():GetSimulationJavaMS() % 10000)
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_WORLD_MAP_REFRESH_ROAD_LINE, OnUIMsgRefreshRoadLine)
    self:AddUIListener(UIMessageNames.UI_NATION_WORLD_MAP_TOWN_ACTIVE, OnUIMsgRefreshActiveCity)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_WORLD_MAP_REFRESH_ROAD_LINE, OnUIMsgRefreshRoadLine)
    self:RemoveUIListener(UIMessageNames.UI_NATION_WORLD_MAP_TOWN_ACTIVE, OnUIMsgRefreshActiveCity)
end

local function OnDisable(self)
    base.OnDisable(self)

end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    self.hadCreate = nil
    if self.closeComponent ~= nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf()
    end
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UINationWorldMap)
end

UINationWorldMapView.OnCreate = OnCreate
UINationWorldMapView.OnEnable = OnEnable
UINationWorldMapView.OnRefresh = OnRefresh
UINationWorldMapView.OnAddListener = OnAddListener
UINationWorldMapView.OnRemoveListener = OnRemoveListener
UINationWorldMapView.OnDisable = OnDisable
UINationWorldMapView.OnDestroy = OnDestroy

return UINationWorldMapView
