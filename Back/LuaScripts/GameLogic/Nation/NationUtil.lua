--[[
    国战工具类
]]
local NationUtil = {}

--格子ID偏移量
local CELL_ID_BIT = 10000


--路的id规则位数
local ROAD_ID_RULE_BIT = 100000000;

--[[
国战地块类型
1.接战区外圈
2.接战区内圈
3.建筑本身
4.接战区阻碍区块
]]
local CELL_TYPE_OUTSIDE = 1
local CELL_TYPE_INNER = 2
local CELL_TYPE_KERNEL = 3
local CELL_TYPE_UNUSERD = 4

--[[资源类型]]
local ResType = {
    Wood = 1, --木头， 银木
    Iron = 2, --铁，   赤铁
    Stone = 3, --石     精石
    Food = 4, --粮     灵谷
    Ore = 5, --矿     混合矿
}

--[[
国战建筑主要类型
1.域都
2.卫都
3.关隘
4.城镇
5.资源区
6.讨伐区
]]
local BUILDING_TYPE_YU_DU = 1
local BUILDING_TYPE_WE_DU = 2
local BUILDING_TYPE_GUAN_AI = 3
local BUILDING_TYPE_TOWN = 4
local BUILDING_TYPE_RESOURCE = 5
local BUILDING_TYPE_PUNITIVE = 6

--[[
国战建筑二级类型
1.出生点
]]
local BUILDING_SUB_UNDEFINE = 0
local BUILDING_SUB_BORN = 1

--[[
国战所属域
]]
local TERRITORY_1 = 1
local TERRITORY_2 = 2
local TERRITORY_3 = 3
local TERRITORY_4 = 4
local TERRITORY_5 = 5
local TERRITORY_6 = 6
local TERRITORY_7 = 7

--[[
国战地形
1.冰原
2.丘陵
3.现代
4.森林
5.荒原
6.古城
7.中心
8.常规/无地形
]]
local TERRAIN_ICE_FIELD = 1
local TERRAIN_HILL = 2
local TERRAIN_MODERN = 3
local TERRAIN_FOREST = 4
local TERRAIN_WASTELAND = 5
local TERRAIN_CASTLE = 6
local TERRAIN_CENTER = 7
local TERRAIN_NORAML = 8

local NationMainView = {
    "UINationMain",
    "UITestMain",
}

local function GetCellId(x, y)
    return x * CELL_ID_BIT + y
end

local function GetXByCellId(cellId)
    if cellId == nil then
        return
    end
    return math.modf(cellId / CELL_ID_BIT)
end

local function GetYByCellId(cellId)
    if cellId == nil then
        return
    end
    return math.fmod(cellId, CELL_ID_BIT)
end

local function GetXYByCellId(cellId)
    if cellId == nil then
        return
    end
    return math.modf(cellId / CELL_ID_BIT), math.fmod(cellId, CELL_ID_BIT)
end

--获取剩余时间
local function GetCurrentTimeValueRate(currentTime, startTime, endTime)
    --currentTime = math.modf(currentTime)
    --Logger.LogVars("currentTime ,",currentTime," startTime ： ",startTime," endTime ： ",endTime)
    --currentTime = tonumber(currentTime)
    startTime = tonumber(startTime)
    endTime = tonumber(endTime)
    if currentTime > endTime then
        currentTime = endTime
    elseif currentTime < startTime then
        currentTime = startTime
    end

    local remindTime = currentTime - startTime
    local duration = endTime - startTime -- ms持续时间
    local dValRate = (remindTime) / (duration) -- 剩余进度
    if dValRate > 1 then
        dValRate = 1
    elseif dValRate < 0 then
        dValRate = 0
    end
    return dValRate
end




--通过地形科技类型获取军团增益
local function GetTerrainTechAddByArmyGroupId(armyGroupId, terrain, techType)
    if terrain == nil then
        return 0
    end

    local nationCrop = NationMapInfoData:GetInstance():GetNationalCropsById(armyGroupId)
    local effects = nationCrop.Effect
    if effects == nil then
        return 0
    end
    local spcTerrain = nil
    local spcType = nil
    local add = 0

    for k, v in ipairs(effects) do
        spcTerrain = v.Terrain
        if spcTerrain ~= terrain then

        else
            spcType = v.Type
            if spcType ~= techType then

            else
                add = add + v.Value
            end
        end
    end
    return add
end

local function GetTwoCellIdDistance(idA, idB)
    local x1 = NationUtil.GetXByCellId(idA)
    local x2 = NationUtil.GetXByCellId(idB)

    local y1 = NationUtil.GetYByCellId(idA)
    local y2 = NationUtil.GetYByCellId(idB)
    return NationUtil.GetTwoPointDistance(x1, x2, y1, y2)
end

local function GetTwoPointDistance(x1, x2, y1, y2)
    return math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end

--生成路的id规则
local function GetRoadIdByAB(pointA, pointB)
    return pointA * ROAD_ID_RULE_BIT + pointB;
end

local function GetPointAByRoadId(roadId)
    return math.modf(roadId / ROAD_ID_RULE_BIT)
end

local function getPointBByRoadId(roadId)
    return math.fmod(roadId, ROAD_ID_RULE_BIT)
end

local function GetPointABByRoadId(roadId)
    return math.modf(roadId / ROAD_ID_RULE_BIT), math.fmod(roadId, ROAD_ID_RULE_BIT)
end

local function GetBuildingNameByType(type)
    if type == BUILDING_TYPE_YU_DU then
        return "域都"
    elseif type == BUILDING_TYPE_WE_DU then
        return "卫都"
    elseif type == BUILDING_TYPE_GUAN_AI then
        return "关隘"
    elseif type == BUILDING_TYPE_TOWN then
        return "城镇"
    elseif type == BUILDING_TYPE_RESOURCE then
        return "资源区"
    else
        return "讨伐区"
    end
end

local function GetCellTerrainByType(type)
    if type == TERRAIN_ICE_FIELD then
        return "冰原"
    elseif type == TERRAIN_HILL then
        return "丘陵"
    elseif type == TERRAIN_MODERN then
        return "现代"
    elseif type == TERRAIN_FOREST then
        return "森林"
    elseif type == TERRAIN_WASTELAND then
        return "荒原"
    elseif type == TERRAIN_CASTLE then
        return "古城"
    elseif type == TERRAIN_CENTER then
        return "中心"
    else
        return "常规"
    end
end

local function GetCellTypeNameByType(type)
    if type == CELL_TYPE_OUTSIDE then
        return "接战区外圈"
    elseif type == CELL_TYPE_INNER then
        return "接战区内圈"
    elseif type == CELL_TYPE_KERNEL then
        return "建筑本身"
    else
        return "接战区阻碍区块"
    end
end

local function GetResNameByType(type)
    if type == ResType.Food then
        return "灵谷"
    elseif type == ResType.Iron then
        return "赤铁"
    elseif type == ResType.Ore then
        return "混合矿"
    elseif type == ResType.Stone then
        return "精石"
    elseif type == ResType.Wood then
        return "银木"
    end
end

local function GetCityIconByType(type)
    if type == BUILDING_TYPE_YU_DU then
        return "ui_dtex_Nationwar_017"
    elseif type == BUILDING_TYPE_WE_DU then
        return "ui_dtex_Nationwar_016"
    elseif type == BUILDING_TYPE_GUAN_AI then
        return "ui_dtex_Nationwar_014"
    elseif type == BUILDING_TYPE_TOWN then
        return "ui_dtex_Nationwar_013"
    elseif type == BUILDING_TYPE_RESOURCE then
        return "ui_dtex_Nationwar_018"
    elseif type == BUILDING_TYPE_PUNITIVE then
        return "ui_dtex_Nationwar_015"
    end
end

--计算ab两点消耗的时间
local function GridCostTimeSecond(a, b, armyGroupId, teamCardTables, behaviorType)
    local time = 0
    local nationMapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager
    local foundLinkRoadMode, linkRoadIdArr = nationMapManager:FindLinkRoadByABId(a, b)
    local distance = nil

    local targetCellId = nil
    local an = nil
    local bn = nil
    local nationalGlobal = NationMapInfoData:GetInstance():GetNationalGlobal()
    if foundLinkRoadMode == NationDefine.NATION_FOUND_ROUND_LINK.NONE then
        linkRoadIdArr = {}
        distance = GetTwoCellIdDistance(a, b)
        an = nationalGlobal.MoveFlyAn
        bn = nationalGlobal.MoveFlyBn
    else
        -- 直接路径
        linkRoadIdArr = {}
        distance = GetTwoCellIdDistance(a, b)
        --if foundLinkRoadMode == NationDefine.NATION_FOUND_ROUND_LINK.FORWARD then
        --    --取a地形
        --    targetCellId = a
        --else
        --    targetCellId = b
        --end

        an = nationalGlobal.MoveWalkAn
        bn = nationalGlobal.MoveWalkBn

        --table.insert(linkRoadIdArr,1,a)
        --table.insert(linkRoadIdArr,#linkRoadIdArr + 1,b)
        --distance = table.length(linkRoadIdArr)
        --time = table.length(linkRoadIdArr) * DataUtil.GetData("global")[10019].valueN
    end

    --local GridSpeed = DataUtil.GetData("global")[10019].valueN
    --天赋加成

    local terrain = nil
    if targetCellId == nil then
    else
        terrain = NationMapInfoData:GetInstance():GetTerrainByCellId(targetCellId)
    end
    local add = 0
    --科技加成
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.GRID_SPEED)
    --军团加成
    add = add + NationTeamData:GetInstance().GetMyNationTeamEffectAddByArmyGroupIdMapIdAndType(
            armyGroupId, b, NationDefine.NATION_TECH_TYPE.GRID_SPEED)
    -- 天赋加成
    add = add + NationCardData:GetInstance():GetAllNationCardTalentEffectAddByType(
            NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.GRID_SPEED)
    -- 移动类型加成
    add = add + NationUtil.__GetGirdCostTeamBehaviorTypeAdd(behaviorType, nationalGlobal)

    ---- 特殊军团加成 提升无当玄军行军速度
    --add = add + NationTeamData:GetInstance().GetMyNationTeamEffectAddByArmyGroupIdMapIdAndType(
    --        armyGroupId,b,NationDefine.NATION_TECH_TYPE.WU_DANG_XUAN_JUN_UP)

    if behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BATTLE then
        --科技加成
        add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.BANDITS_SPEED)
        --军团加成
        add = add + NationTeamData:GetInstance().GetMyNationTeamEffectAddByArmyGroupIdMapIdAndType(
                armyGroupId, b, NationDefine.NATION_TECH_TYPE.BANDITS_SPEED)

    elseif behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE then
        --科技加成
        add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.RES_SPEED)
        --军团加成
        add = add + NationTeamData:GetInstance().GetMyNationTeamEffectAddByArmyGroupIdMapIdAndType(
                armyGroupId, b, NationDefine.NATION_TECH_TYPE.RES_SPEED)

        ---- 特殊军团加成 提升隐灵甲士资源区行军速度
        --add = add + NationTeamData:GetInstance().GetMyNationTeamEffectAddByArmyGroupIdMapIdAndType(
        --        armyGroupId,b,NationDefine.NATION_TECH_TYPE.YIN_LING_JIA_SHI_UP)
    end


    -- 行军加速 所在队伍 百分比
    if teamCardTables ~= nil then
        local cardIds = table.values(teamCardTables)
        add = add + NationCardData:GetInstance():GetCardListTalentEffectAddByType(
                cardIds, NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.MARCH_SPEED)
    end
    --MARCH_SPEED

    -- s convert to ms
    time = (distance * an + bn)
    time = time / (1 + add)
    time = math.modf(time)
    return time
end

local function __GetGirdCostTeamBehaviorTypeAdd(behaviorType, nationalGlobal)
    if behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.TRANSFER then
        -- 调动
        return nationalGlobal.FunctionSpdAdd[1]
    elseif behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND then
        -- 驻守
        return nationalGlobal.FunctionSpdAdd[4]
    elseif behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BATTLE then
        --剿匪
        return nationalGlobal.FunctionSpdAdd[2]
    elseif behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.PUNITIVE then
        -- 讨伐区
        return nationalGlobal.FunctionSpdAdd[3]
    elseif behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE then
        -- 资源区
        return nationalGlobal.FunctionSpdAdd[3]
    elseif behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL then
        -- WARCELL
        return nationalGlobal.FunctionSpdAdd[3]
    elseif behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_BREAK then
        -- 攻城战，破城
        return nationalGlobal.FunctionSpdAdd[5]
    elseif behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_KILL then
        -- 攻城战，杀敌
        return nationalGlobal.FunctionSpdAdd[6]
    else
        return 0
    end
end


--获取建筑的名字坐标字符串 镇魂街(1000,5)
local function GetBuildingFormatNamePositionStr(buildId)
    local cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(buildId)
    local name = nil
    if cellInfo == nil and buildInfo == nil then
        return nil
    end

    if buildInfo ~= nil then
        name = buildInfo.Name
    else
        name = cellInfo.Name
    end

    local xInt, yInt = NationUtil.GetXYByCellId(buildId)
    local text = string.format("%s(%d,%d)", name, xInt, yInt)
    return text
    --	self.oncePositionText:SetText(buildInfo.Name.."("..NationUtil.GetXByCellId(_teamData.prevTownId)..","..NationUtil.GetYByCellId(_teamData.prevTownId)..")")
end

local function CloseAllWindowsReturnMainView()
    local windowsStack = UIManager:GetInstance():GetWindowStack()
    local isMainView = false
    local window = nil
    for i = #windowsStack, 1, -1 do
        for _, v in ipairs(NationMainView) do
            if windowsStack[i] == v then
                isMainView = true
                break
            end
            isMainView = false
        end
        if isMainView == false then
            window = UIManager:GetInstance():GetWindow(windowsStack[i])
            if window.Ctrl.CloseSelf ~= nil then
                window.Ctrl:CloseSelf()
            end
        end
    end
end

-- 贝塞尔函数
local function CalculateTargetBezierPoint(t, p0, p1, p2, p3)
    t = Mathf.Clamp01(t)
    local u = 1 - t
    local tt = t * t
    local uu = u * u
    local result = Vector3.New(p0.x, p0.y, p0.z)
    result = result + p1 * 3 * uu * t
    result = result + p2 * 3 * tt * u
    result = result + p3 * tt * t
    return result
end


--获取开始和结束的时间节点
local function GetTimeBeginEndRate(startTime, endTime, currentTime)
    if currentTime == nil then
        currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    end

    local remindTime = endTime - currentTime
    local duration = endTime - startTime -- ms持续时间
    if remindTime < 0 then
        remindTime = 0
    end
    local dValRate
    if duration < 0 then
        duration = 0
    end

    if duration == 0 then
        dValRate = 1
    else
        dValRate = 1 - (remindTime) / (duration) -- 剩余进度
        if Mathf.Approximately(dValRate, 0) then
            dValRate = 0
        end
    end

    if dValRate > 1 then
        dValRate = 1
    elseif dValRate < 0 then
        dValRate = 0
    end

    return dValRate
end
--跳转到一个坐标
local function TurnToOnePositionByPointData(posID, subPosID, areaID)
    if SceneManager:GetInstance():DoseSceneIsSceneConfig(SceneConfig.NationScene) then
    else
        ----切换到国战场景
        --local callback = function()
        --    SceneManager:GetInstance():SwitchScene(SceneConfig.NationScene)
        --end
        --NationCtrlManager:GetInstance():GetNationLoginData(true, callback)
        NationCtrlManager:GetInstance():EnterNationLogicNew()
        return
    end

    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(posID)
    local targetID = posID
    if subPosID and subPosID ~= 0 and buildInfo.Type ~= BUILDING_TYPE_PUNITIVE and buildInfo.Type ~= BUILDING_TYPE_RESOURCE then
        targetID = subPosID
    end

    local tilePosX, tilePosY = GetXYByCellId(targetID)
    local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
    local pos = nationProxy.mapManager:GetGridUnityCellToWorldByIntXYZ(tilePosX, tilePosY, 0)
    nationProxy:SetCMCameraLookTransformPosition(pos.x, pos.y, true)

    if areaID and areaID ~= 0 and buildInfo.Type == BUILDING_TYPE_PUNITIVE then
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationPunitiveMain, posID, { subPosID = subPosID, areaID = areaID })
    elseif subPosID and subPosID ~= 0 and buildInfo.Type == BUILDING_TYPE_RESOURCE then
        if UIManager:GetInstance():CheckWindowTop(UIWindowNames.UINationResourcesMain) then
            UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_SET_FIND_TARGET_RES, posID, subPosID)
        else
            UIManager:GetInstance():OpenWindow(UIWindowNames.UINationResourcesMain, posID, subPosID)
        end
    else
        NationSceneUIManager:GetInstance():CloseWindow(UIWindowNames.UINationTurnToMark)
        NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationTurnToMark, pos)
    end
end

--替换坐标文本，为超链接文本
local function ReplacePosPointText(str)
    local a = string.match(str, "%(%d+%,%d+%)")
    local b = string.match(str, "%d+%,%d+")
    if a == nil and b == nil then
        return str
    end

    local posX, posY = nil
    if a then
        local index = string.find(a, "%,")
        posX = string.sub(a, 2, index - 1)
        posY = string.sub(a, index + 1, -2)
    elseif b then
        local index = string.find(b, "%,")
        posX = string.sub(b, 1, index - 1)
        posY = string.sub(b, index + 1)
    end

    if posX == nil or posY == nil then
        return str
    end
    local buildID = GetCellId(posX, posY)
    local cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(buildID)
    local richText = str
    if cellInfo ~= nil then
        local name = cellInfo.Name .. "Lv." .. cellInfo.BuildLv
        richText = string.format("<color=#21C839><a href=JumpToPos_%s_%s>%s(%s,%s)</a></color>", buildID, cellInfo.BuildId, name, posX, posY)
    elseif buildInfo ~= nil then
        richText = string.format("<color=#21C839><a href=JumpToPos_%s>%s(%s,%s)</a></color>", buildID, buildInfo.Name, posX, posY)
    else
        return str
    end

    --local tempA = string.format("%%(%s,%s%%)", posX, posY)
    --local tempB = b
    local patText = a and string.format("%%(%s,%s%%)", posX, posY) or b
    return string.gsub(str, patText, richText)
end

--判断是否有过路权限(仅限建筑)，接战区的在NationTownData里
local function CheckCanAttackByBuildID(buildID, isOutSide)
    --判断是否为攻城战建筑,和接战的内圈。（不包括外圈）
    if isOutSide ~= true then
        local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(buildID)
        if buildInfo.Type == BUILDING_TYPE_YU_DU or buildInfo.Type == BUILDING_TYPE_WE_DU or buildInfo.Type == BUILDING_TYPE_GUAN_AI then
            for _, v in ipairs(NationTownData:GetInstance().siegeBuildWarCellData[buildID]) do
                if NationTownData:GetInstance():CanAttackWarCellByWarCellID(v) then
                    return true
                end
            end
            return false
        end
    end

    --获取与该建筑相邻的所有建筑ID
    local allAroundCells = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager:FindCellIdAllLinkCellIds(buildID)
    --玩家有联盟
    if NationUnionData:GetInstance():GetNationUnionId() ~= 0 then
        --若为，联盟内其他玩家已激活的城镇
        if NationUnionData:GetInstance():BuildIsActiveByBuildID(buildID) ~= false then
            return true
        end
        --再判断是否有相邻的已经激活的城镇
        for _, v in ipairs(allAroundCells) do
            if NationUnionData:GetInstance():BuildIsActiveByBuildID(v) ~= false then
                return true
            end
        end
        --再判断玩家自己
        for _, v in ipairs(allAroundCells) do
            if NationTownData:GetInstance():IsNationTownDataActiveById(v) then
                return true
            end
        end
    else
        --玩家没有联盟
        for _, v in ipairs(allAroundCells) do
            if NationTownData:GetInstance():IsNationTownDataActiveById(v) then
                return true
            end
        end
    end
    return false
end

-- 旧的队伍卡牌数据的转换工具类
local function __GetNationTeamCardsDoubleRowDataHelper(cardIndex)
    local line = math.modf((cardIndex - 1) / NationDefine.NATION_TEAM_CARD_INDEX.HOST3) -- 为 0 第一行 为 1 第二行
    local cardPosition = math.fmod(cardIndex, NationDefine.NATION_TEAM_CARD_INDEX.HOST3) -- 余数
    local enumCardMainType = line + 1
    if cardPosition == 0 then
        cardPosition = NationDefine.NATION_TEAM_CARD_INDEX.HOST3
    end
    return cardPosition, enumCardMainType
end

local function __GetNationTeamCardsIndexDataHelper(cardPosition, enumCardMainType)
    if enumCardMainType == 1 then
        -- 第一行
        return cardPosition
    else
        return cardPosition + NationDefine.NATION_TEAM_CARD_INDEX.HOST3
    end
end

--获取摄像机对某长度的视锥体四个角世界坐标
local function GetCameraFovFusumCorners(theCamera, distance)
    if IsNull(theCamera) then
        return
    end

    if distance == nil then
        --distance = theCamera.nearClipPlane
        distance = theCamera.farClipPlane
    end

    local corners = {}
    local halfFOV = (theCamera.fieldOfView * 0.5) * Mathf.Deg2Rad
    local aspect = theCamera.aspect
    local height = distance * Mathf.Tan(halfFOV);
    local width = height * aspect;
    local tx = theCamera.transform
    local unityTxPostion = tx.position
    local unityTxRight = tx.right
    local unityTxUp = tx.up
    local unityTxForward = tx.forward
    local backupTxPostion = Vector3(unityTxPostion.x, unityTxPostion.y, unityTxPostion.z)
    local backupTxRight = Vector3(unityTxRight.x, unityTxRight.y, unityTxRight.z)
    local backupTxUp = Vector3(unityTxUp.x, unityTxUp.y, unityTxUp.z)
    local backupTxForward = Vector3(unityTxForward.x, unityTxForward.y, unityTxForward.z)

    local tempVec3 = nil
    -- UpperLeft
    tempVec3 = Vector3(Vector3.Get(backupTxPostion)):Sub(Vector3(Vector3.Get(backupTxRight)):Mul(width))
    tempVec3 = tempVec3:Add((Vector3(Vector3.Get(backupTxUp)):Mul(height)))
    tempVec3 = tempVec3:Add((Vector3(Vector3.Get(backupTxForward)):Mul(distance)))
    table.insert(corners, tempVec3)

    --
    -- UpperRight
    tempVec3 = Vector3(Vector3.Get(backupTxPostion)):Add(Vector3(Vector3.Get(backupTxRight)):Mul(width))
    tempVec3 = tempVec3:Add((Vector3(Vector3.Get(backupTxUp)):Mul(height)))
    tempVec3 = tempVec3:Add((Vector3(Vector3.Get(backupTxForward)):Mul(distance)))
    table.insert(corners, tempVec3)

    -- LowerLeft
    tempVec3 = Vector3(Vector3.Get(backupTxPostion)):Sub(Vector3(Vector3.Get(backupTxRight)):Mul(width))
    tempVec3 = tempVec3:Sub((Vector3(Vector3.Get(backupTxUp)):Mul(height)))
    tempVec3 = tempVec3:Add((Vector3(Vector3.Get(backupTxForward)):Mul(distance)))
    table.insert(corners, tempVec3)

    --LowerRight
    tempVec3 = Vector3(Vector3.Get(backupTxPostion)):Add(Vector3(Vector3.Get(backupTxRight)):Mul(width))
    tempVec3 = tempVec3:Sub((Vector3(Vector3.Get(backupTxUp)):Mul(height)))
    tempVec3 = tempVec3:Add((Vector3(Vector3.Get(backupTxForward)):Mul(distance)))
    table.insert(corners, tempVec3)

    return corners
end

local function ConvertUnityVector3ToLuaVector3(unityVector3)
    return Vector3(unityVector3.x, unityVector3.y, unityVector3.z)
end

local function ConvertLuaVector3ToUnityVector3(luaVector3)
    return CS.UnityEngine.Vector3(luaVector3.x, luaVector3.y, luaVector3.z)
end

local function ConvertUnityVector2ToLuaVector2(unityVector2)
    return Vector2(unityVector2.x, unityVector2.y)
end

local function ConvertLuaVector2ToUnityVector2(luaVector2)
    return CS.UnityEngine.Vector2(luaVector2.x, luaVector2.y, luaVector2.z)
end

local function SqrtDistance(va, vb)
    return (va.x - vb.x) ^ 2 + (va.y - vb.y) ^ 2 + (va.z - vb.z) ^ 2
end
--static Vector3 CalculateTargetBezierPoint(float t, Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3)
--{
--t = Mathf.Clamp01(t);
--float u = 1 - t;
--float tt = t * t;
--float uu = u * u;
--
--//Vector3 p0 = Vector3.zero;
--p0 += 3 * uu * t * p1;
--p0 += 3 * tt * u * p2;
--p0 += tt * t * p3;
--
--return p0;
--}

NationUtil.GetCellId = GetCellId
NationUtil.GetXByCellId = GetXByCellId
NationUtil.GetYByCellId = GetYByCellId
NationUtil.GetXYByCellId = GetXYByCellId

NationUtil.GetRoadIdByAB = GetRoadIdByAB
NationUtil.GetPointAByRoadId = GetPointAByRoadId
NationUtil.getPointBByRoadId = getPointBByRoadId
NationUtil.GetPointABByRoadId = GetPointABByRoadId

NationUtil.GetCityIconByType = GetCityIconByType
NationUtil.GetBuildingNameByType = GetBuildingNameByType
NationUtil.GetCellTerrainByType = GetCellTerrainByType
NationUtil.GetCellTypeNameByType = GetCellTypeNameByType
NationUtil.GetTwoPointDistance = GetTwoPointDistance
NationUtil.GetTwoCellIdDistance = GetTwoCellIdDistance
NationUtil.GetCurrentTimeValueRate = GetCurrentTimeValueRate
NationUtil.GridCostTimeSecond = GridCostTimeSecond
NationUtil.GetTerrainTechAddByArmyGroupId = GetTerrainTechAddByArmyGroupId
NationUtil.__GetGirdCostTeamBehaviorTypeAdd = __GetGirdCostTeamBehaviorTypeAdd

NationUtil.GetBuildingFormatNamePositionStr = GetBuildingFormatNamePositionStr
NationUtil.GetResNameByType = GetResNameByType
NationUtil.CalculateTargetBezierPoint = CalculateTargetBezierPoint
NationUtil.GetTimeBeginEndRate = GetTimeBeginEndRate

NationUtil.CloseAllWindowsReturnMainView = CloseAllWindowsReturnMainView
NationUtil.TurnToOnePositionByPointData = TurnToOnePositionByPointData
NationUtil.ReplacePosPointText = ReplacePosPointText
NationUtil.CheckCanAttackByBuildID = CheckCanAttackByBuildID
NationUtil.__GetNationTeamCardsDoubleRowDataHelper = __GetNationTeamCardsDoubleRowDataHelper
NationUtil.__GetNationTeamCardsIndexDataHelper = __GetNationTeamCardsIndexDataHelper
NationUtil.GetCameraFovFusumCorners = GetCameraFovFusumCorners
NationUtil.ConvertUnityVector3ToLuaVector3 = ConvertUnityVector3ToLuaVector3
NationUtil.ConvertLuaVector3ToUnityVector3 = ConvertLuaVector3ToUnityVector3
NationUtil.ConvertUnityVector2ToLuaVector2 = ConvertUnityVector2ToLuaVector2
NationUtil.ConvertLuaVector2ToUnityVector2 = ConvertLuaVector2ToUnityVector2
NationUtil.SqrtDistance = SqrtDistance

NationUtil.BUILDING_TYPE_YU_DU = BUILDING_TYPE_YU_DU
NationUtil.BUILDING_TYPE_WE_DU = BUILDING_TYPE_WE_DU
NationUtil.BUILDING_TYPE_GUAN_AI = BUILDING_TYPE_GUAN_AI
NationUtil.BUILDING_TYPE_TOWN = BUILDING_TYPE_TOWN
NationUtil.BUILDING_TYPE_RESOURCE = BUILDING_TYPE_RESOURCE
NationUtil.BUILDING_TYPE_PUNITIVE = BUILDING_TYPE_PUNITIVE

NationUtil.BUILDING_SUB_UNDEFINE = BUILDING_SUB_UNDEFINE
NationUtil.BUILDING_SUB_BORN = BUILDING_SUB_BORN

NationUtil.TERRITORY_1 = TERRITORY_1
NationUtil.TERRITORY_2 = TERRITORY_2
NationUtil.TERRITORY_3 = TERRITORY_3
NationUtil.TERRITORY_4 = TERRITORY_4
NationUtil.TERRITORY_5 = TERRITORY_5
NationUtil.TERRITORY_6 = TERRITORY_6
NationUtil.TERRITORY_7 = TERRITORY_7

NationUtil.TERRAIN_ICE_FIELD = TERRAIN_ICE_FIELD
NationUtil.TERRAIN_HILL = TERRAIN_HILL
NationUtil.TERRAIN_MODERN = TERRAIN_MODERN
NationUtil.TERRAIN_FOREST = TERRAIN_FOREST
NationUtil.TERRAIN_WASTELAND = TERRAIN_WASTELAND
NationUtil.TERRAIN_CASTLE = TERRAIN_CASTLE
NationUtil.TERRAIN_CENTER = TERRAIN_CENTER
NationUtil.TERRAIN_NORAML = TERRAIN_NORAML

NationUtil.CELL_TYPE_OUTSIDE = CELL_TYPE_OUTSIDE
NationUtil.CELL_TYPE_INNER = CELL_TYPE_INNER
NationUtil.CELL_TYPE_KERNEL = CELL_TYPE_KERNEL
NationUtil.CELL_TYPE_UNUSERD = CELL_TYPE_UNUSERD

return ConstClass("NationUtil", NationUtil)