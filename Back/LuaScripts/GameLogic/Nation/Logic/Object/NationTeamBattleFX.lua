--[[
    国战，队伍战斗特效
]]
local NationTeamBattleFX = BaseClass("NationTeamBattleFX")

local NationUtil = require "GameLogic.Nation.NationUtil"
local BattleEffect_Path = "Art/EffectRes/Common/FX_c_gz_fight"

local function __init(self)
    self.tweenData = {}
end

local function __delete(self)

end

local function OnDestroy(self)
    if self.tweenTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.tweenTimer)
        self.tweenTimer = nil
    end

    if self.tweenData.objPath ~= nil then
        GameObjectPool:GetInstance():RecycleGameObject(self.tweenData.objPath, self.tweenData.gameObject)
        self.tweenData = nil
    end

    self.tweenData = {}
end

local function OnCreate(self, targetPosID, secondPosID)
    local cellPos = {}
    local cellInfo = NationMapInfoData:GetInstance().national_battleZone[secondPosID]
    local offsetY = nil
    if cellInfo ~= nil then
        cellPos.x, cellPos.y = NationUtil.GetXYByCellId(secondPosID)
        offsetY = NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.WAR_CELL
    else
        cellPos.x, cellPos.y = NationUtil.GetXYByCellId(targetPosID)
        offsetY = NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.OTHER_BUILDING
    end

    local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
    local root = nationProxy.sceneMarch.transform
    local path = BattleEffect_Path .. ".prefab"
    local pos = nationProxy.mapManager:GetGridUnityCellToWorldByIntXYZ(cellPos.x, cellPos.y, 0)
    GameObjectPool:GetInstance():GetGameObjectAsync(path, function(go)
        if not IsNull(go) then
            go.transform:SetParent(root)
            go.transform.position = Vector3.New(pos.x, pos.y + offsetY, 0)
            go.transform.localScale = Vector3.New(1, 1, 1)
            go:SetActive(false)
            go:SetActive(true)

            local temp = {}
            temp.gameObject = go
            temp.objPath = path

            self.tweenData = temp
            self:TimerRecycleBattleFXPrefab()
        end
    end)
end

local function TimerRecycleBattleFXPrefab(self)
    local function callBack()
        TimerManager:GetInstance():SimpleTimerStop(self.tweenTimer)
        self.tweenTimer = nil

        if self.tweenData.objPath ~= nil then
            GameObjectPool:GetInstance():RecycleGameObject(self.tweenData.objPath, self.tweenData.gameObject)
            self.tweenData = {}
        end
    end
    self.tweenTimer = TimerManager:GetInstance():SimpleTimerArgs(4, callBack, nil, true)
end

NationTeamBattleFX.__init = __init
NationTeamBattleFX.__delete = __delete
NationTeamBattleFX.OnDestroy = OnDestroy
NationTeamBattleFX.OnCreate = OnCreate
NationTeamBattleFX.TimerRecycleBattleFXPrefab = TimerRecycleBattleFXPrefab

return NationTeamBattleFX