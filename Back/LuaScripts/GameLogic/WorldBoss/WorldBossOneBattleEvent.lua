--[[
    世界Boss战斗事件
]]
local WorldBossOneBattleEvent = BaseClass("WorldBossOneBattleEvent")

local Event_Prefab_Path = "Art/WorldBoss/EventPrefab/"

local function __init(self)
    self.battleEvent = nil
    self.type = nil
    self.eventID = nil
    self.hadTrigger = nil

    --参数
    self.param1 = nil
    self.param2 = nil
    self.param3 = nil
    self.param4 = nil
end

local function __delete(self)

end

local function OnDestroy(self)
    self.type = nil
    self.eventID = nil
    self.hadTrigger = nil
    if self.battleEvent.objPath ~= nil then
        GameObjectPool:GetInstance():RecycleGameObject(self.battleEvent.objPath, self.battleEvent.gameObject)
        self.battleEvent = nil
    end

    self.param1 = nil
    self.param2 = nil
    self.param3 = nil
    self.param4 = nil
end

--创建一个事件
local function InitEvent(self, root, prefabPath, cellPos, scale, id)
    self.eventID = id
    self.type = DRBossData:GetInstance().element_event_info[id].ElementType
    --陷阱和机关，没有obj
    if self.type == CommDefine.DRBossEventType.Trap then
        local temp = {}
        temp.cellPos = cellPos
        self.battleEvent = temp
        return
    end

    local path = Event_Prefab_Path .. prefabPath .. ".prefab"
    local pos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(cellPos.x, cellPos.y, 0)
    GameObjectPool:GetInstance():GetGameObjectAsync(path, function(go)
        if not IsNull(go) then
            go.transform:SetParent(root)
            go.transform.localPosition = Vector3.New(pos.x, pos.y, 0)
            go.transform.localScale = Vector3.New(scale, scale, scale)
            go:SetActive(true)
            local temp = {}
            temp.gameObject = go
            temp.objPath = prefabPath
            temp.cellPos = cellPos

            self.battleEvent = temp
        end
    end)
end

--创建一个3D事件
local function Init3DEvent(self, root, prefabPath, cellPos, scale, id)
    self.eventID = id
    self.type = DRBossData:GetInstance().element_event_info[id].ElementType
    --陷阱和机关，没有obj
    if self.type == CommDefine.DRBossEventType.Trap then
        local temp = {}
        temp.cellPos = cellPos
        self.battleEvent = temp
        return
    end

    local path = Event_Prefab_Path .. prefabPath .. ".prefab"
    local pos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(cellPos.x, cellPos.y, 0)
    GameObjectPool:GetInstance():GetGameObjectAsync(path, function(go)
        if not IsNull(go) then
            go.transform:SetParent(root)
            go.transform.localPosition = Vector3.New(pos.x, pos.y, 0)
            go.transform.localScale = Vector3.New(scale, scale, scale)
            go:SetActive(true)
            local temp = {}
            temp.gameObject = go
            temp.objPath = prefabPath
            temp.cellPos = cellPos

            self.battleEvent = temp
        end
    end)
end

--设置事件的参数
local function SetEventParams(self, paramList)
    self.param1 = paramList[1]
    self.param2 = paramList[2]
    self.param3 = paramList[3]
    self.param4 = paramList[4]


end

--触发对应事件的效果
local function ResponseEvent(self, teamID, param)
    local eventInfo = nil
    if self.eventID == 0 then
        eventInfo = {}
        eventInfo.ElementType = CommDefine.DRBossEventType.EliteMonster
    else
        eventInfo = DRBossData:GetInstance().element_event_info[self.eventID]
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_WORLD_BOSS_GAME_EVENT, teamID, self.eventID)
    if eventInfo.ElementType == CommDefine.DRBossEventType.Building then
        --进入建筑物
        UISpecial:GetInstance():UITipText("进入建筑")
    elseif eventInfo.ElementType == CommDefine.DRBossEventType.Barrier then
        UISpecial:GetInstance():UITipText("前方有障碍物")
    elseif eventInfo.ElementType == CommDefine.DRBossEventType.Item then
        --捡起物品
        UISpecial:GetInstance():UITipText("获得物品")
    elseif eventInfo.ElementType == CommDefine.DRBossEventType.EliteMonster then
        UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200005), "是否进入战斗",
                DataUtil.GetClientText(200006), DataUtil.GetClientText(200007), function()
                    --进入战斗
                    DRBossData:GetInstance():SendExploreEvent(1, 1)
                end, nil)
    elseif eventInfo.ElementType == CommDefine.DRBossEventType.RandomItem then
        --捡起物品
        UISpecial:GetInstance():UITipText("获得随机物品")
    elseif eventInfo.ElementType == CommDefine.DRBossEventType.Trap then
        --触发陷阱
        UISpecial:GetInstance():UITipText("触发陷阱")
    elseif eventInfo.ElementType == CommDefine.DRBossEventType.TreasureBox then
        --打开宝箱
        UISpecial:GetInstance():UITipText("打开宝箱")
    end
end


--设置模型方向
local function SetModelDir(self, curCellPos, targetCellPos)
    local offsetX = targetCellPos.x - curCellPos.x
    local offsetY = targetCellPos.y - curCellPos.y
    if offsetX > 0 and offsetY == 0 then
        self.model3D.gameObject.transform.rotation = Quaternion.Euler(0, 90, 0)
    elseif offsetX < 0 and offsetY == 0 then
        self.model3D.gameObject.transform.rotation = Quaternion.Euler(0, 270, 0)
    elseif offsetX == 0 and offsetY > 0 then
        self.model3D.gameObject.transform.rotation = Quaternion.Euler(0, 0, 0)
    elseif offsetX == 0 and offsetY < 0 then
        self.model3D.gameObject.transform.rotation = Quaternion.Euler(0, 180, 0)
    end
end

WorldBossOneBattleEvent.__init = __init
WorldBossOneBattleEvent.__delete = __delete
WorldBossOneBattleEvent.OnDestroy = OnDestroy
WorldBossOneBattleEvent.InitEvent = InitEvent
WorldBossOneBattleEvent.Init3DEvent = Init3DEvent
WorldBossOneBattleEvent.ResponseEvent = ResponseEvent
WorldBossOneBattleEvent.SetEventParams = SetEventParams

return WorldBossOneBattleEvent