local UINationTurnToMark = BaseClass("UINationTurnToMark", UIBaseNationComponent)
local base = UIBaseNationComponent

local PREFAB_PATH = "UI/Prefabs/Other/NationMark"
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseWindow(self)
    NationSceneUIManager:GetInstance():CloseWindow(UIWindowNames.UINationTurnToMark)
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.sizeChangeTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot").transform
    self.sizeChangeTran.localScale = Vector3.New(NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_X, NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_Y, 1)
    self.root = UIUtil.FindTrans(self.transform, "SizeChangeRoot")
end

local function OnEnable(self, worldPos)
    base.OnEnable(self)
    self:CreateMarkItem(worldPos)
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.markTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.markTimer)
        self.markTimer = nil
    end

    self:RecycleMarkItem()
end

local function OnAddListener(self)
    base.OnAddListener(self)

    self:AddUIListener(UIMessageNames.UI_NATION_BUILDINFO_CLOSE, CloseWindow)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)

    self:RemoveUIListener(UIMessageNames.UI_NATION_BUILDINFO_CLOSE, CloseWindow)
end

local function TweenTimer(self, pos)
    local offsetY = 0
    local value = 5
    local function timerCallBack(self)
        offsetY = offsetY + value
        self.prefabObj.transform.localPosition = Vector3.New(pos.x, pos.y + 110 + offsetY, pos.z)
        if offsetY >= 30 then
            value = -5
        elseif offsetY <= 0 then
            value = 5
        end
    end
    self.markTimer = TimerManager:GetInstance():SimpleTimerArgs(0.05, timerCallBack, self, false, false)
end

local function CreateMarkItem(self, pos)
    self.pathName = string.format("%s.prefab", PREFAB_PATH)
    GameObjectPool:GetInstance():GetGameObjectAsync(self.pathName, function(go)
        if not IsNull(go) then
            self.prefabObj = go
            go.transform.localPosition = Vector3.New(pos.x, pos.y, 0)
            go.transform:SetParent(self.root)
            go.transform.localScale = Vector3.one
            go.transform.rotation = Vector3.zero
            local tempPos = go.transform.localPosition
            go.transform.localPosition = Vector3.New(tempPos.x, tempPos.y + 115, tempPos.z)

            TweenTimer(self, tempPos)
        end
    end)
end

local function RecycleMarkItem(self)
    GameObjectPool:GetInstance():RecycleGameObject(self.pathName, self.prefabObj)
end

UINationTurnToMark.OnCreate = OnCreate
UINationTurnToMark.OnEnable = OnEnable
UINationTurnToMark.OnDisable = OnDisable
UINationTurnToMark.OnAddListener = OnAddListener
UINationTurnToMark.OnRemoveListener = OnRemoveListener
UINationTurnToMark.CreateMarkItem = CreateMarkItem
UINationTurnToMark.RecycleMarkItem = RecycleMarkItem
UINationTurnToMark.CloseWindow = CloseWindow

return UINationTurnToMark