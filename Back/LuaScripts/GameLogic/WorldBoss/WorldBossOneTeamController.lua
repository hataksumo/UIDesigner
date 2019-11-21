--[[
    世界Boss全局总控口
]]
local WorldBossOneTeamController = BaseClass("WorldBossOneTeamController")

local char2DRenderer_path = "UI/Prefabs/Common/WorldBossCharacterImage.prefab"
local char3DModel_path = "Art/Roles/"

local function __init(self)
    self.sprite2D = nil
    self.model3D = nil
    self.curTweener = nil
    self.needSetCostCellList = {}

    --队伍ID
    self.isLocalPlayer = nil
    self.teamID = nil
    self.onlyTeamID = nil
    --属性值
    self.teamHP = nil
    self.teamMaxHP = nil
    self.teamSpirit = nil
    --刷新地图用，唯一标识 （每张地图，三个玩家，每个玩家三支队伍，共1-9）
    self.mapPosIndex = nil

    --非本地玩家用的参数
    self.movePathList = {}
end

local function __delete(self)

end

local function OnDestroy(self)
    if self.sprite2D ~= nil then
        GameObjectPool:GetInstance():RecycleGameObject(self.sprite2D.objPath, self.sprite2D.gameObject)
        self.sprite2D = nil
    end
    if self.model3D ~= nil then
        GameObjectPool:GetInstance():RecycleGameObject(self.model3D.objPath, self.model3D.gameObject)
        self.model3D = nil
    end
    self.curTweener = nil
    self.needSetCostCellList = {}

    self.teamID = nil
    self.isLocalPlayer = nil
    self.onlyTeamID = nil

    self.teamHP = nil
    self.teamMaxHP = nil
    self.teamSpirit = nil
    self.mapPosIndex = nil

    self.movePathList = {}
end

--初始化队伍属性等
local function InitTeamAttribute(self, roleID, index, teamID, hp, spirit)
    self.mapPosIndex = index
    self.teamID = teamID
    self.teamHP = hp
    self.teamMaxHP = hp
    self.teamSpirit = spirit
    self.isLocalPlayer = roleID == ClientData:GetInstance().user_id
    self.onlyTeamID = roleID * 10 + teamID
end

--实例化人物模型
local function InitPlayerModel(self, parent2D, parent3D, modelPath, initPos)
    local model3DPath = char3DModel_path .. modelPath
    local cellPos = {}
    cellPos.x = initPos.x
    cellPos.y = initPos.y
    cellPos.z = 0
    local pos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(cellPos.x, cellPos.y, cellPos.z)
    GameObjectPool:GetInstance():GetGameObjectAsync(char2DRenderer_path, function(go)
        if not IsNull(go) then
            go.transform:SetParent(parent2D)
            go.transform.localPosition = Vector3.New(pos.x, pos.y, 0)
            go.transform.localScale = Vector3.New(10, 10, 1)
            go:SetActive(true)
            local temp = {}
            temp.gameObject = go
            temp.objPath = char2DRenderer_path
            temp.spriteRenderer = go.transform:GetComponent(typeof(CS.UnityEngine.SpriteRenderer))
            temp.cellPos = cellPos
            temp.isMoving = false

            self.sprite2D = temp
        end
    end)
    GameObjectPool:GetInstance():GetGameObjectAsync(modelPath, function(go)
        if not IsNull(go) then
            go.transform:SetParent(parent3D)
            go.transform.localPosition = Vector3.zero
            go.transform.localRotation = Quaternion.Euler(0, 180, 0)
            go.transform.localScale = Vector3.New(1, 1, 1)
            go:SetActive(true)
            local modelGo = {}
            modelGo.gameObject = go
            modelGo.objPath = model3DPath
            modelGo.animator = go.transform:GetComponent(typeof(CS.UnityEngine.Animator))

            self.model3D = modelGo
        end
    end)

    --渲染3D模型到2D图片上
    local function Renderer2DSprite(self)
        coroutine.waituntil(function()
            return self.model3D ~= nil and self.sprite2D ~= nil
        end)
        WorldBossCtrlManager:GetInstance():Character2DRenderer(self.model3D.gameObject, self.sprite2D.spriteRenderer)
        Logger.Log("chara2DRenderer is over")
    end
    coroutine.start(Renderer2DSprite, self)
end

--ForWard = 1,
--BackWard = 2,
--LeftWard = 3,
--RightWard = 4,
--todo, delete
local function MoveOneTeam(self, dir)
    local curPos = self:GetGridUnityCellToWorldByIntXYZ(self.sprite2D.cellPos.x, self.sprite2D.cellPos.y, 0)
    local targetCellPos = nil
    local targetPos = nil
    if dir == 1 then
        self.model3D.gameObject.transform.rotation = Quaternion.Euler(0, 90, 0)
        targetCellPos = Vector3.New(self.sprite2D.cellPos.x + 1, self.sprite2D.cellPos.y, 0)
    elseif dir == 2 then
        self.model3D.gameObject.transform.rotation = Quaternion.Euler(0, 270, 0)
        targetCellPos = Vector3.New(self.sprite2D.cellPos.x - 1, self.sprite2D.cellPos.y, 0)
    elseif dir == 3 then
        self.model3D.gameObject.transform.rotation = Quaternion.Euler(0, 0, 0)
        targetCellPos = Vector3.New(self.sprite2D.cellPos.x, self.sprite2D.cellPos.y + 1, 0)
    elseif dir == 4 then
        self.model3D.gameObject.transform.rotation = Quaternion.Euler(0, 180, 0)
        targetCellPos = Vector3.New(self.sprite2D.cellPos.x, self.sprite2D.cellPos.y - 1, 0)
    end
    if IsHaveCollide(self, targetCellPos) then
        Logger.Log("碰撞到collider")
        return
    end

    --开始移动
    self.sprite2D.isMoving = true
    self.model3DList[1].animator:Play("walk", 0)

    targetPos = self:GetGridUnityCellToWorldByIntXYZ(targetCellPos.x, targetCellPos.y, 0)
    targetPos = Vector3.New(targetPos.x, targetPos.y, 0)
    curPos = Vector3.New(curPos.x, curPos.y, 0)
    LuaTweener.TransMoveTo(self.sprite2D.gameObject.transform, curPos, targetPos, 0.6, EaseFormula.Linear, function()
        --停止移动
        self.sprite2D.cellPos = targetCellPos
        self.sprite2D.isMoving = false
        self.model3DList[1].animator:Play("idle", 0)
        self.sprite2D = nil
    end)
    WorldBossCtrlManager:GetInstance():UpdateMap(targetCellPos, self.mapPosIndex)
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

local function Move2OneTeam(self, pathList, targetCellPos)
    local curPos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(self.sprite2D.cellPos.x, self.sprite2D.cellPos.y, 0)

    local index = 0
    local nextCellPos = nil
    local curCellPos = self.sprite2D.cellPos
    local nextWorldPos = nil
    local isEndPos = false

    if pathList.Length == 2 then
        isEndPos = true
    end
    --若刚开始移动的一格，是触发某些事件，不移动，只转向，触发事件
    nextCellPos = Vector3.New(pathList[1].X, pathList[1].Y, 0)
    if self:CheckTriggerStop(nextCellPos, isEndPos) then
        SetModelDir(self, curCellPos, nextCellPos)
        self.model3D.animator:Play("idle", 0)
        self.sprite2D.isMoving = false
        self:SendNetMsgUpdateTeamPos(nextCellPos, targetCellPos)
        return
    end

    --开始移动
    self.sprite2D.isMoving = true
    self.model3D.animator:Play("walk", 0)
    curPos = Vector3.New(curPos.x, curPos.y, 0)

    local function RecursionMove(curPos)
        index = index + 1
        if index > pathList.Length - 1 then
            --走完路径，停止移动
            self.sprite2D.cellPos = Vector3.New(pathList[index - 1].X, pathList[index - 1].Y, 0)
            self.model3D.animator:Play("idle", 0)
            self.sprite2D.isMoving = false
            return
        end
        ---开始下一次移动前准备
        --下次移动位置
        nextCellPos = Vector3.New(pathList[index].X, pathList[index].Y, 0)
        nextWorldPos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(nextCellPos.x, nextCellPos.y, 0)

        --设置人物下一次移动方向
        SetModelDir(self, curCellPos, nextCellPos)

        --判断下一格是否为目标点
        if nextCellPos.x == targetCellPos.x and nextCellPos.y == targetCellPos.y then
            isEndPos = true
        else
            isEndPos = false
        end
        --检测是否触发事件停止
        if self:CheckTriggerStop(nextCellPos, isEndPos) then
            self.sprite2D.cellPos = Vector3.New(pathList[index - 1].X, pathList[index - 1].Y, 0)
            self.model3D.animator:Play("idle", 0)
            self.sprite2D.isMoving = false
            return
        end

        ---开始移动
        --刷新地图
        WorldBossCtrlManager:GetInstance():UpdateMap(nextCellPos, self.mapPosIndex)
        --计时给服务器同步消息
        self.sendNetMsgTimer = TimerManager:GetInstance():SimpleTimerArgs(0.3, function()
            self:SendNetMsgUpdateTeamPos(nextCellPos, targetCellPos)
        end, nil, true, false)
        --播放动画
        self.curTweener = LuaTweener.TransMoveTo(self.sprite2D.gameObject.transform, curPos, nextWorldPos, 0.4, EaseFormula.Linear, function()
            ---移动完成
            --变更位置
            curCellPos = nextCellPos
            self.sprite2D.cellPos = curCellPos
            --移动完后，检测当前格是否发生事件
            --self:CheckTriggerEvent(curCellPos, targetCellPos)

            --开始下一次移动
            RecursionMove(nextWorldPos)
        end)
    end
    --开始播放移动动画
    RecursionMove(curPos)
end

--检测触发的事件，是否在事件前一格停下
local function CheckTriggerStop(self, nextCellPos, isEndPos)
    local key = WorldBossCtrlManager:GetInstance():GetEventKeyByCellPosXY(nextCellPos.x, nextCellPos.y)
    local event = WorldBossCtrlManager:GetInstance().allEventList[key]
    if event == nil then
        return false
    end

    if event.type == CommDefine.DRBossEventType.Barrier then
        --event:ResponseEvent(self.teamID)
        return true
    elseif event.type == CommDefine.DRBossEventType.TreasureBox and isEndPos then
        --event:ResponseEvent(self.teamID)
        return true
    elseif event.type == CommDefine.DRBossEventType.EliteMonster and isEndPos then
        --event:ResponseEvent(self.teamID)
        return true
    end
    return false
end

--检测触发事件, todo,delete
local function CheckTriggerEvent(self, cellPos, targetCellPos)
    local key = WorldBossCtrlManager:GetInstance():GetEventKeyByCellPosXY(cellPos.x, cellPos.y)
    local event = WorldBossCtrlManager:GetInstance().allEventList[key]
    if event == nil then
        return false
    end

    --(经过触发)
    if event.type == CommDefine.DRBossEventType.Item then
        event:ResponseEvent(self.teamID)
    elseif event.type == CommDefine.DRBossEventType.Trap then
        event:ResponseEvent(self.teamID)
    elseif event.type == CommDefine.DRBossEventType.RandomItem then
        event:ResponseEvent(self.teamID)
    end

    --点击，到目标点触发
    if cellPos.x == targetCellPos.x and cellPos.y == targetCellPos.y then
        event:ResponseEvent(self.teamID)
    end
end

--每次移动给服务器发送消息验证
local function SendNetMsgUpdateTeamPos(self, nextPos, targetCellPos)
    local msg_ID = MsgIDDefine.PBDRBOSS_EXPLORE_MOVE_REQUEST
    local msg = (MsgIDMap[msg_ID])()
    msg.teamId = self.teamID
    local endCo = msg.endCo
    endCo.x = targetCellPos.x
    endCo.y = targetCellPos.y
    local nextCo = msg.nextCo
    nextCo.x = nextPos.x
    nextCo.y = nextPos.y
    NetManager:GetInstance():SendMessage(msg_ID, msg, function(msg_obj)
        if msg_obj.OpCode == 0 then
            self:HandleNetMsgUpdateTeamData(msg_obj.Packages)
            if msg_obj.Packages.eventId == 0 then
                return
            end
            Logger.Log("事件ID： " .. msg_obj.Packages.eventId)

            local severEventID = msg_obj.Packages.eventId
            local severEventPos = msg_obj.Packages.eventCo
            --服务器纠正移动
            if msg_obj.Packages.isStop then
                local pos = msg_obj.Packages.co
                if self.sprite2D.cellPos.x ~= pos.x or self.sprite2D.cellPos.y ~= pos.y then
                    LuaTweener.StopTweener(self.curTweener)
                    self.sprite2D.cellPos = pos
                    self.model3D.animator:Play("idle", 0)
                    local unityPos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(pos.x, pos.y, 0)
                    self.sprite2D.gameObject.transform.position = unityPos
                    self.sprite2D.isMoving = false
                end
            end
            --事件处理(若我发送给服务器的坐标下一个坐标有事件，是不是就在这次返回给我触发事件了)
            local key = WorldBossCtrlManager:GetInstance():GetEventKeyByCellPosXY(severEventPos.x, severEventPos.y)
            local event = WorldBossCtrlManager:GetInstance().allEventList[key]
            --todo,待定
            if event == nil then
                Logger.Log("event is null")
                return false
            end
            local effect = msg_obj.Packages.effect
            if severEventID == event.eventID then
                local param = {}
                param[1] = effect.itemId
                Logger.Log("响应事件： ID为：" .. severEventID)
                event:ResponseEvent(self.teamID, param)
            end
        else
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            Logger.Log("EXPLORE_MOVE_REQUEST is error   opcode:  " .. msg_obj.OpCode)
        end
    end)
end

--队伍数据，更新（血量，行动力，buff）
local function HandleNetMsgUpdateTeamData(self, msgData)
    self.teamSpirit = msgData.spirit

    local msgEffect = msgData.msgEffect
    if msgEffect ~= nil then
        if msgEffect.teamHp ~= nil then
            self.teamHP = self.teamHP + msgEffect.teamHp
        end
        if msgEffect.spirit ~= nil then
            self.teamSpirit = self.teamSpirit + msgEffect.spirit
        end
    end

    DataManager:GetInstance():Broadcast(DataMessageNames.ON_WORLD_BOSS_TEAM_DATA_UPDATE, self.teamID, self.onlyTeamID)
end


--服务器推送的，开始移动（非本地玩家）
local function StartTeamMoveTween(self)
    local curWorldPos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(self.sprite2D.cellPos.x, self.sprite2D.cellPos.y, 0)
    local curCellPos = self.sprite2D.cellPos
    local nextWorldPos = nil
    local nextCellPos = {}
    local index = 1
    local eventData = nil

    local function OtherPlayerRecursionMove()
        if index > table.length(self.movePathList) then
            self.model3D.animator:Play("idle", 0)
            self.sprite2D.isMoving = false
            self.movePathList = {}
            return
        else
            eventData = self.movePathList[index].response
            nextCellPos.x = self.movePathList[index].nextCo.x
            nextCellPos.y = self.movePathList[index].nextCo.y
            nextCellPos.z = 0
            nextWorldPos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(nextCellPos.x, nextCellPos.y, 0)
        end

        --设置人物下一次移动方向
        --Logger.Log("curCellPos  x：" .. curCellPos.x .. " y: " .. curCellPos.y)
        --Logger.Log("nextCellPos  x：" .. nextCellPos.x .. " y: " .. nextCellPos.y)
        SetModelDir(self, curCellPos, nextCellPos)

        if eventData.eventId ~= 0 then
            UISpecial:GetInstance():UITipText("其他玩家的队伍，响应事件： ID为" .. eventData.eventId)
            --服务器纠正停止
            if eventData.isStop then
                local pos = eventData.co
                if self.sprite2D.cellPos.x ~= pos.x or self.sprite2D.cellPos.y ~= pos.y then
                    --若服务器纠正的位置为下次要移动的目标位置就，播移动动画，然后停止，否则直接纠正
                    if pos.x == nextCellPos.x and pos.y == nextCellPos.y then
                        --修改index，直接为该路径的最后一个点，递归后就正常停止
                        index = table.length(self.movePathList)
                    else
                        self.sprite2D.cellPos = pos
                        local unityPos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(pos.x, pos.y, 0)
                        self.sprite2D.gameObject.transform.position = unityPos
                        self.model3D.animator:Play("idle", 0)
                        self.sprite2D.isMoving = false
                        self.movePathList = {}
                        return
                    end
                end
            end
        else
            self.sprite2D.isMoving = true
            local info = self.model3D.animator:GetCurrentAnimatorStateInfo(0)
            if info:IsName("walk") == false then
                self.model3D.animator:Play("walk", 0)
            end
        end

        --刷新地图
        WorldBossCtrlManager:GetInstance():UpdateMap(nextCellPos, self.mapPosIndex)

        --坐标错误校验（一般情况下不会走这个if）
        if curWorldPos == nextWorldPos then
            Logger.LogError("下次移动的目标为当前位置")
            index = index + 1
            OtherPlayerRecursionMove()
        end

        self.curTweener = LuaTweener.TransMoveTo(self.sprite2D.gameObject.transform, curWorldPos, nextWorldPos, 0.4, EaseFormula.Linear, function()
            ---移动完成
            --变更位置
            curCellPos = Vector3.New(nextCellPos.x, nextCellPos.y, nextCellPos.z)
            curWorldPos = Vector3.New(nextWorldPos.x, nextWorldPos.y, nextWorldPos.z)
            self.sprite2D.cellPos = curCellPos

            --开始下一次移动
            index = index + 1
            OtherPlayerRecursionMove()
        end)
    end
    OtherPlayerRecursionMove()
end

--服务器推送的，队伍移动和触发的事件（非本地玩家）
local function NetMsgCallBackOtherPlayerTeamMove(self, msgData)
    if msgData.nextCo == nil then
        Logger.LogError("服务器数据错误  NetMsgCallBackOtherPlayerTeamMove")
        return
    end

    --添加到移动的路径里
    if table.length(self.movePathList) <= 0 then
        table.insert(self.movePathList, msgData)
        --Logger.LogError("启动动画")
        --启动动画
        StartTeamMoveTween(self)
    else
        --Logger.LogError("插入移动点， 坐标为： x: " .. msgData.nextCo.x .. " y: " .. msgData.nextCo.y)
        table.insert(self.movePathList, msgData)
    end
end

DRBossEventType = {
    Barrier = 1, --障碍物
    Building = 2, --建筑
    TreasureBox = 3, --宝箱
    Item = 4, --获得固定道具
    Trap = 5, --陷阱，机关
    RandomItem = 7, --获得随机道具
    EliteMonster = 8, --怪物
    Boss = 9, --领主
}

WorldBossOneTeamController.__init = __init
WorldBossOneTeamController.__delete = __delete
WorldBossOneTeamController.OnDestroy = OnDestroy
WorldBossOneTeamController.InitPlayerModel = InitPlayerModel
WorldBossOneTeamController.InitTeamAttribute = InitTeamAttribute
WorldBossOneTeamController.MoveOneTeam = MoveOneTeam
WorldBossOneTeamController.Move2OneTeam = Move2OneTeam
WorldBossOneTeamController.NetMsgCallBackOtherPlayerTeamMove = NetMsgCallBackOtherPlayerTeamMove
--local
WorldBossOneTeamController.SendNetMsgUpdateTeamPos = SendNetMsgUpdateTeamPos
WorldBossOneTeamController.CheckTriggerEvent = CheckTriggerEvent
WorldBossOneTeamController.CheckTriggerStop = CheckTriggerStop
WorldBossOneTeamController.HandleNetMsgUpdateTeamData = HandleNetMsgUpdateTeamData

return WorldBossOneTeamController