--[[
-- 控制层
--]]

local UINationSceneFX = BaseClass("UINationSceneFX", UIBaseNationComponent)
local base = UIBaseNationComponent

local Screen = CS.UnityEngine.Screen
local Cloud_Path = "UI/Prefabs/Other/NationCloud"

local cloudMoveTime = 45
local cloudStartFadeTime = 40
local OriginalAlphaValue = 0.78

local function PlayTween(self, index)
    local obj = self.cloudPrefabItemList[index]
    local pos = obj.rectTrans.anchoredPosition3D
    local distance = obj.modelData.distance --移动
    obj.Tween[1] = LuaTweener.UIMoveTo(obj.transform, Vector3.New(pos.x, pos.y, pos.z), Vector3.New(pos.x + distance, pos.y, pos.z), cloudMoveTime, EaseFormula.Linear, function()
        GameObjectPool:GetInstance():RecycleGameObject(obj.pathName, obj.gameObject)
        self.cloudPrefabItemList[index] = nil
    end)

    --渐变，
    obj.Tween[2] = LuaTweener.UIFadeTo(obj.image, 0, OriginalAlphaValue, 3, EaseFormula.Linear)
    local function CallBackTween()
        TimerManager:GetInstance():SimpleTimerStop(obj.timer)
        obj.Tween[3] = LuaTweener.UIFadeTo(obj.image, OriginalAlphaValue, 0, 3, EaseFormula.Linear)
    end
    obj.timer = TimerManager:GetInstance():SimpleTimerArgs(cloudStartFadeTime, CallBackTween, nil, true)
end

local function CreateCloudItem(self, modelData)
    local danPath = string.format("%s.prefab", Cloud_Path)
    GameObjectPool:GetInstance():GetGameObjectAsync(danPath, function(go)
        if not IsNull(go) then
            --统计obj的index
            self.cloudCount = self.cloudCount + 1

            local objData = { index = nil, transform = go.transform, gameObject = go, pathName = danPath, modelData = modelData, image = nil, timer = nil, rectTrans = nil, Tween = {} }
            objData.index = self.cloudCount
            local pos = modelData.pos

            go.transform:SetParent(self.cloudRootTran)
            go.transform.position = Vector3.New(pos.x, pos.y, pos.z)
            go.transform.rotation = Vector3.zero
            go.transform.localScale = Vector3.one

            objData.rectTrans = UIUtil.FindComponent(go.transform, typeof(CS.UnityEngine.RectTransform))

            objData.image = UIImage.New(self, go)
            objData.image:OnCreate(AtlasConfig.DynamicNationTex)
            objData.image:SetSpriteName(modelData.imageRes)
            objData.image:SetNativeSize()
            objData.image:SetAlphaVal(0)

            self.cloudPrefabItemList[objData.index] = objData
            PlayTween(self, objData.index)
        end
    end)
end

local function GenerateCloudParams(self)
    math.randomseed(tostring(os.time()):reverse():sub(1, 6))

    local centerPos = self.cameraManager.centerHitPoint
    local radius = math.modf(math.sqrt(self.cameraManager.circleCenterSqrtDistance) / 2)

    local function GenerateRandomPos(self)
        local pos = {}
        pos = {}
        pos.x = centerPos.x - math.random(math.modf(radius * 0.6), radius)
        pos.y = math.random(-radius, radius) + centerPos.y
        pos.z = 0
        for _, v in pairs(self.cloudPrefabItemList) do
            if Vector3.Distance(v.modelData.pos, pos) < 4 then
                GenerateRandomPos(self)
            end
        end
        return pos
    end

    local data = {}
    data.pos = GenerateRandomPos(self)
    data.distance = math.modf((Screen.width / 2) * 0.5)

    local num = math.random(1, 3)
    if num == 1 then
        data.imageRes = "ui_t_c2_840"
    elseif num == 2 then
        data.imageRes = "ui_t_c2_841"
    else
        data.imageRes = "ui_t_c2_842"
    end

    return data
end

local function OnDataMsgStartCreateCloudTimer(self)
    if self.cloudTimer ~= nil then
        return
    end

    local time = 1
    local function CallBack()
        time = time + 1
        if time > math.random(8, 10) then
            if self.cloudRootTran.childCount < 3 then
                local data = self:GenerateCloudParams()
                self:CreateCloudItem(data)
            end
            time = 0
        end
    end

    self.cloudTimer = TimerManager:GetInstance():SimpleTimerArgs(1, CallBack, nil, false, false)
end

local function OnDataMsgStopCreateCloudTimer(self)
    if self.cloudTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.cloudTimer)
        self.cloudTimer = nil
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    --设置3d坐标
    self.transform.position = Vector3.New(0, 0, 0)
    self.transform.localScale = Vector3.New(1, 1, 1)

    self.cloudCount = 0

    --各个根节点
    self.cloudRootTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot/mask/CloudRoot")

    --prefab的List
    self.cloudPrefabItemList = {}
end

local function OnEnable(self)
    base.OnEnable(self)

    self.cameraManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().cameraManager

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnDisable(self)
    base.OnDisable(self)

end

local function OnAddListener(self)
    base.OnAddListener(self)

    self:AddDataListener(DataMessageNames.ON_NATION_EASY_TOUCH_SWIPE_END, OnDataMsgStartCreateCloudTimer)
    self:AddDataListener(DataMessageNames.ON_NATION_EASY_TOUCH_SWIPE_START, OnDataMsgStopCreateCloudTimer)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)

    self:RemoveDataListener(DataMessageNames.ON_NATION_EASY_TOUCH_SWIPE_END, OnDataMsgStartCreateCloudTimer)
    self:RemoveDataListener(DataMessageNames.ON_NATION_EASY_TOUCH_SWIPE_START, OnDataMsgStopCreateCloudTimer)
end

local function OnDestroy(self)
    base.OnDestroy(self)

    self.cloudCount = 0
    if self.cloudTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.cloudTimer)
        self.cloudTimer = nil
    end

    if table.length(self.cloudPrefabItemList) > 0 then
        for _, v in pairs(self.cloudPrefabItemList) do
            if v.gameObject ~= nil then
                if v.timer ~= nil then
                    TimerManager:GetInstance():SimpleTimerStop(v.timer)
                end
                GameObjectPool:GetInstance():RecycleGameObject(v.pathName, v.gameObject)
                for _, w in ipairs(v.Tween) do
                    LuaTweener.StopTweener(w)
                end
            end
        end
    end
end

UINationSceneFX.OnCreate = OnCreate
UINationSceneFX.OnEnable = OnEnable
UINationSceneFX.OnRefresh = OnRefresh
UINationSceneFX.OnDisable = OnDisable
UINationSceneFX.OnAddListener = OnAddListener
UINationSceneFX.OnRemoveListener = OnRemoveListener
UINationSceneFX.OnDestroy = OnDestroy
UINationSceneFX.GenerateCloudParams = GenerateCloudParams
UINationSceneFX.CreateCloudItem = CreateCloudItem

return UINationSceneFX