---
--- 队伍人物和时间对象持有者
--- DateTime: 2019/7/18 16:08
---
local NationMarchPersonHolderEntity = BaseClass("NationMarchPersonHolderEntity", UIBaseNationComponent)
local base = UIBaseNationComponent

local NationUtil = require "GameLogic.Nation.NationUtil"
local ItemInfo = DataUtil.GetData("item")

local function OnCreate(self, viewCtrl)
    base.OnCreate(self)
    self.viewCtrl = viewCtrl
    self.agentCtrl = self.transform:GetComponent(typeof(CS.Nation.NationAgentCtrl))
    --self.timerText = UIUtil.FindComponent(self.transform,UIText,"border/timer")
    self.timerText = self:AddComponent(UIText, "border/timer")
    self.playerNameText = self:AddComponent(UIText, "border/playerName")
    self.battleResultImage = self:AddComponent(UIImage, "border/battleResult", AtlasConfig.Language)
    self.battleResultImage.gameObject:SetActive(false)
    self.playerIconImage = self:AddComponent(UIImage, "border/icon", AtlasConfig.DynamicTex)
    self.shadowImage = self:AddComponent(UIImage, "shadow", AtlasConfig.DynamicNationTex)
    --self.playerIconFrameImage = self:AddComponent(UIImage, "border/iconFrame", AtlasConfig.DynamicTex)


    --newNationTeamTime
    --self.borderImg = UIUtil.FindComponent(self.transform,UIImage,"border")
    self.borderImg = self:AddComponent(UIImage, "border", AtlasConfig.DynamicNationTex)
    self.borderImgBtn = self:AddComponent(UIButton, "border")
    self.borderImgBtn:SetOnClick(function()
        if self.__onClickCallbackFunc ~= nil then
            self.__onClickCallbackFunc()
        end
    end)
    --self.borderImg:SetAtlasConfig(AtlasConfig.DynamicTex)
    --self.personBtn = UIUtil.FindComponent(self.transform,UIButton,"person")
    self.clickBtn = self:AddComponent(UIButton, "clickBtn")
    self.clickBtn:SetOnClick(function()
        if self.__onClickCallbackFunc ~= nil then
            self.__onClickCallbackFunc()
        end
    end)
    --self.personBtn = self:AddComponent(UIButton,"person")
    self.spriteRenderer = self:AddComponent(UIImage, "person")
    --self.spriteRenderer = UIUtil.FindTrans(self.transform, "person"):GetComponent(typeof(CS.UnityEngine.SpriteRenderer))
    self.spriteRenderer:SetEnabled(false)
end

local function __EnSureCreateModel3D(self)

    if self.model3D ~= nil then
        return
    end
    local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
    local myModel3D = GameObjectPool:GetInstance():TryGetFromCache(NationDefine.MAP_MARCH_3D_MODEL_FILE_NAME)
    local model3DTran = myModel3D.transform

    model3DTran:SetParent(nationProxy.model3DRoot)
    model3DTran.localPosition = Vector3.zero
    model3DTran.localRotation = Quaternion.Euler(0, 180, 0)
    model3DTran.localScale = Vector3.one
    myModel3D:SetActive(true)
    --self.spriteRenderer.enabled = true
    --myModel3D.layer = NationDefine.NATION_2D_CHAR_PARAMS.LAYER_NONE
    local modelGo = {}
    modelGo.gameObject = myModel3D
    modelGo.transform = model3DTran
    modelGo.animator = model3DTran:GetComponent(typeof(CS.UnityEngine.Animator))
    modelGo.animator:Play("walk", 0)
    self.model3D = modelGo
    --Logger.LogErrorVars(" self.viewCtrl.dynamicModelTextureSize ",self.viewCtrl.dynamicModelTextureSize)
    nationProxy:AddCharacter2DRenderer(self.model3D.gameObject, nil, self.spriteRenderer.unity_uiimage, self.viewCtrl.dynamicModelTextureSize, self.viewCtrl.dynamicModelTextureSize)
    self.viewCtrl:CalcDynamicModelTextureSize()
end

local function DoInit(self, nationMapManager, campIndex, currentTime, startPos, targetPos, startTime, endTime, playerName, playerIconID, battleResult, __onClickCallbackFunc, __onTweenEndCallback, __onTweenUpdateCallback)
    --self.nationArmyPath = nationArmyPath
    --self.spriteRenderer.enabled = false
    --self.spriteRenderer.enabled = false
    self.spriteRenderer:SetEnabled(false)
    local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
    self:SetBorderImgByCampIndex(campIndex)
    self.playerNameText:SetText(playerName)
    if playerIconID ~= nil then
        self.playerIconImage:SetSpriteName(ItemInfo[playerIconID].Icon)
    else
        Logger.LogErrorVars("玩家头像不存在 玩家名称 : ", playerName, " 服务器没有下发头像 head 在 NationArmyPath")
    end

    if currentTime == nil then
        currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    end
    self:DoAgentMoveLogic(nationMapManager, startPos, targetPos, startTime, endTime, currentTime)
    self:DoTimeLogic(startTime, endTime, currentTime)

    self.__onClickCallbackFunc = __onClickCallbackFunc
    self.__onTweenEndCallback = __onTweenEndCallback
    --self.__onSelfTweenUpdateCallback = __onTweenUpdateCallback
    self:ShowBattleResult(battleResult)
end

local function SetBorderImgByCampIndex(self, campIndex)
    if campIndex == NationDefine.NATION_MARCH_CAMP_FLAG.SELF then
        self.borderImg:SetSpriteName("ui_t_c2_749")
        self.shadowImage:SetSpriteName("ui_t_c2_751")
    elseif campIndex == NationDefine.NATION_MARCH_CAMP_FLAG.UNION then
        self.borderImg:SetSpriteName("ui_t_c2_754")
        self.shadowImage:SetSpriteName("ui_t_c2_752")
    else
        self.borderImg:SetSpriteName("ui_t_c2_750")
        self.shadowImage:SetSpriteName("ui_t_c2_753")
    end
end

local function DoTimeLogic(self, startTime, endTime, currentTime)
    self:__DisposeTimer()
    if currentTime == nil then
        currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    end

    local formatTime
    local showTime
    if currentTime >= endTime then
        -- 超过结束时间
        showTime = 0
        formatTime = UIUtil.GetFinialTime(showTime)
    else
        self.timer = SyncTimer.New(SyncTimer.MODE_STEP, startTime,
                500, false, self.OnTimerCallback, { endTime = endTime, resultShowEndTime = startTime + 2000, superSelf = self })
        self.timer:Start()
        showTime = math.floor((endTime - currentTime) / 1000)
        if showTime <= 0 then
            showTime = 0
        end
        formatTime = UIUtil.GetFinialTime(showTime)

    end
    self.timerText:SetText(formatTime)
end

local function OnTimerCallback(selfTimer, obj)
    local superSelf = obj.superSelf
    local endTime = obj.endTime
    local resultShowEndTime = obj.resultShowEndTime
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    local showTime = math.floor((endTime - currentTime) / 1000)
    local formatTime
    if currentTime >= endTime then
        showTime = 0
        formatTime = UIUtil.GetFinialTime(showTime)
        superSelf:__DisposeTimer()
    else
        formatTime = UIUtil.GetFinialTime(showTime)
    end
    superSelf.timerText:SetText(formatTime)

    if currentTime >= resultShowEndTime then
        superSelf.battleResultImage.gameObject:SetActive(false)
    end
end



-- 路径移动
local function DoAgentMoveLogic(self, nationMapManager, startPos, targetPos, startTime, endTime, currentTime)

    self:__CleanAgentRunData()

    if currentTime == nil then
        currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    end
    local remindTime = endTime - currentTime
    if remindTime < 0 then
        remindTime = 0
    end
    local dValRate = NationUtil.GetTimeBeginEndRate(startTime, endTime, currentTime)
    --Logger.LogErrorVars("DoAgentMoveLogic dValRate : ",dValRate)
    local duration = endTime - startTime -- ms持续时间
    local addDuration = (duration) / 1000
    local foundLinkRoadMode, linkRoadIdArr = nationMapManager:FindLinkRoadByABId(startPos, targetPos)

    if foundLinkRoadMode == NationDefine.NATION_FOUND_ROUND_LINK.NONE then
        linkRoadIdArr = {}
        linkRoadIdArr[1] = startPos
        linkRoadIdArr[2] = targetPos
        local unityVec3Arr = {}

        local isWarCellStartPos = NationMapInfoData:GetInstance():IsMapPosIsWarCell(startPos)
        local isWarCellTargetPos = NationMapInfoData:GetInstance():IsMapPosIsWarCell(targetPos)

        local startUnityPos = nationMapManager:GetGridUnityCellToWorldByIntXYZ(
                NationUtil.GetXByCellId(startPos),
                NationUtil.GetYByCellId(startPos),
                0)
        startUnityPos = Vector3.New(startUnityPos.x, startUnityPos.y + (isWarCellStartPos
                and NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.WAR_CELL or NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.OTHER_BUILDING), startUnityPos.z)

        table.insert(unityVec3Arr, startUnityPos)
        local targetUnityPos = nationMapManager:GetGridUnityCellToWorldByIntXYZ(
                NationUtil.GetXByCellId(targetPos),
                NationUtil.GetYByCellId(targetPos),
                0)
        targetUnityPos = Vector3.New(targetUnityPos.x, targetUnityPos.y + (isWarCellTargetPos
                and NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.WAR_CELL or NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.OTHER_BUILDING), targetUnityPos.z)

        table.insert(unityVec3Arr, targetUnityPos)
        --for i = 1, table.length(linkRoadIdArr) do
        --    local lingRoadId = linkRoadIdArr[i]
        --    local v = nationMapManager:GetGridUnityCellToWorldByIntXYZ(
        --            NationUtil.GetXByCellId(lingRoadId) + FLY_OFFSET,
        --            NationUtil.GetYByCellId(lingRoadId) + FLY_OFFSET,
        --            0)
        --    table.insert(unityVec3Arr,v)
        --end
        self:__MoveToPath(unityVec3Arr, dValRate, addDuration, false, nil)
    else
        -- 曲线路径
        --local isWarCellStartPos = NationMapInfoData:GetInstance():IsMapPosIsWarCell(startPos)
        --local isWarCellTargetPos = NationMapInfoData:GetInstance():IsMapPosIsWarCell(targetPos)
        --if isWarCellTargetPos then
        --    linkRoadIdArr  = {}
        --    linkRoadIdArr[1] = startPos
        --    linkRoadIdArr[2] = targetPos
        --    local unityVec3Arr = {}
        --
        --    for i = 1, table.length(linkRoadIdArr) do
        --        local lingRoadId = linkRoadIdArr[i]
        --        local v = nationMapManager:GetGridUnityCellToWorldByIntXYZ(
        --                NationUtil.GetXByCellId(lingRoadId),
        --                NationUtil.GetYByCellId(lingRoadId),
        --                0)
        --        table.insert(unityVec3Arr,v)
        --    end
        --    self:__MoveToPath(unityVec3Arr,dValRate,addDuration,false,nil)
        --else
        --    local P0 = Vector3.New(linkRoadIdArr.CostP0[1],linkRoadIdArr.CostP0[2],0) -- worldPosition
        --    local P1 = Vector3.New(linkRoadIdArr.CostP1[1],linkRoadIdArr.CostP1[2],0)
        --    local P2 = Vector3.New(linkRoadIdArr.CostP2[1],linkRoadIdArr.CostP2[2],0)
        --    local P3 = Vector3.New(linkRoadIdArr.CostP3[1],linkRoadIdArr.CostP3[2],0)
        --
        --    if foundLinkRoadMode == NationDefine.NATION_FOUND_ROUND_LINK.FORWARD then
        --        self:__MoveToBezier(P0,Vector3.zero,P1,P2,P3,dValRate,addDuration,nil)
        --    else
        --        local startWorldPos = P0 + P3
        --        local worldP1 = P0 + P1
        --        local worldP2 = P0 + P2
        --        self:__MoveToBezier(startWorldPos,Vector3.zero,worldP2 - startWorldPos,worldP1 - startWorldPos,-P3,dValRate,addDuration,nil)
        --    end
        --end

        local P0 = Vector3.New(linkRoadIdArr.CostP0[1], linkRoadIdArr.CostP0[2], 0) -- worldPosition
        local P1 = Vector3.New(linkRoadIdArr.CostP1[1], linkRoadIdArr.CostP1[2], 0)
        local P2 = Vector3.New(linkRoadIdArr.CostP2[1], linkRoadIdArr.CostP2[2], 0)
        local P3 = Vector3.New(linkRoadIdArr.CostP3[1], linkRoadIdArr.CostP3[2], 0)

        if foundLinkRoadMode == NationDefine.NATION_FOUND_ROUND_LINK.FORWARD then
            self:__MoveToBezier(P0, Vector3.zero, P1, P2, P3, dValRate, addDuration, nil)
        else
            local startWorldPos = P0 + P3
            local worldP1 = P0 + P1
            local worldP2 = P0 + P2
            self:__MoveToBezier(startWorldPos, Vector3.zero, worldP2 - startWorldPos, worldP1 - startWorldPos, -P3, dValRate, addDuration, nil)
        end
    end
end

local function OnEnable(self)
    base.OnEnable(self)

end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    self:Dispose()
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
end

local function __OnTweenBeginCallback(self, paramObj)
    -- need show SomeThing
end

local function __OnTweenUpdateCallback(self, paramObj, nextPos, curPos, valRate)
    -- 设置模型的方向
    -- 更新模型的朝向问题TestAddOneMarch
    local curLuaVector3 = nil
    --Logger.LogErrorVars(" __OnTweenUpdateCallback valRate : ",valRate)
    if self.model3D == nil then
        -- 没有模型
        local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        local cameraManager = nationProxy.cameraManager
        if cameraManager.centerHitPoint == nil then
            return
        end

        curLuaVector3 = NationUtil.ConvertUnityVector3ToLuaVector3(curPos)
        --self.centerHitPoint = centerHitPoint
        --self.circleCenterSqrtDistance = sqrtDistance


        local curSqrtDistance = NationUtil.SqrtDistance(curLuaVector3, cameraManager.centerHitPoint)
        --local curSqrtDistance =   Vector3.Distance(curLuaVector3,cameraManager.centerHitPoint)
        if curSqrtDistance < cameraManager.circleCenterSqrtDistance + NationDefine.NATION_2D_CHAR_PARAMS.CIRCLE_IN_BOUND then
            -- 需要显示了
            --Logger.LogErrorVars(" __OnTweenUpdateCallback  __EnSureCreateModel3D")
            self:__EnSureCreateModel3D()
        else
            -- 什么也不做
            --Logger.LogErrorVars(" 什么也不做 : ",curSqrtDistance," 结果 :",cameraManager.circleCenterSqrtDistance + NationDefine.NATION_2D_CHAR_PARAMS.CIRCLE_IN_BOUND)
            return
        end
    else
        -- 有模型了 判断出去
        curLuaVector3 = NationUtil.ConvertUnityVector3ToLuaVector3(curPos)
        local nextLuaVector3 = NationUtil.ConvertUnityVector3ToLuaVector3(nextPos)
        local nextXProject = Vector3.ProjectOnPlane(nextLuaVector3, Vector3.forward);
        local curXProject = Vector3.ProjectOnPlane(curLuaVector3, Vector3.forward);
        local quaternion = Quaternion.Euler(90, 0, -45);
        local dir = quaternion:MulVec3(nextXProject:Sub(curXProject))
        if dir == Vector3.zero then
            --Logger.LogErrorVars(" __onTweenUpdateCallback dir is Zero nextXProject ", nextXProject, " curXProject : ", curXProject)
        else
            self.model3D.transform.forward = NationUtil.ConvertLuaVector3ToUnityVector3(dir)
        end

        local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        local cameraManager = nationProxy.cameraManager
        if cameraManager.centerHitPoint == nil then
            return
        end

        local curSqrtDistance = NationUtil.SqrtDistance(curLuaVector3, cameraManager.centerHitPoint)
        --local curSqrtDistance = Vector3.Distance(curLuaVector3,cameraManager.centerHitPoint)
        if curSqrtDistance > cameraManager.circleCenterSqrtDistance + NationDefine.NATION_2D_CHAR_PARAMS.CIRCLE_OUT_BOUND then
            -- 需要不显示
            --Logger.LogErrorVars(" __OnTweenUpdateCallback  __Dispose3DModel")
            self:__Dispose3DModel()
        else
            -- 什么也不做
            return
        end
    end

    --if self.__onSelfTweenUpdateCallback ~= nil then
    --    self.__onSelfTweenUpdateCallback(paramObj,nextPos,curPos)
    --end
end

local function __OnTweenEndCallback(self, paramObj)
    -- need sync team st
    --Logger.LogErrorVars(" __OnTweenEndCallback end")
    self:__CleanAgentRunData()
    self:__Dispose3DModel()
    if self.__onTweenEndCallback ~= nil then
        self.__onTweenEndCallback()
    end
end
--
local function __CleanAgentRunData(self)
    if not IsNull(self.agentCtrl) then
        self.agentCtrl:CleanRunData()
    end
    --Logger.LogErrorVars("")

end

local function __Dispose3DModel(self)
    if self.model3D ~= nil then
        --Logger.LogErrorVars(" __Dispose3DModel 11111111111111")
        local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        nationProxy:RemoveCharacter2DRenderer(self.model3D.gameObject)
        --self.spriteRenderer.enabled = false
        self.spriteRenderer:SetEnabled(false)
        GameObjectPool:GetInstance():RecycleGameObject(NationDefine.MAP_MARCH_3D_MODEL_FILE_NAME, self.model3D.gameObject)
        self.viewCtrl:CalcDynamicModelTextureSize()
    end
    self.model3D = nil
end

local function __DisposeAgent(self)
    self:__CleanAgentRunData()
    self:__Dispose3DModel()
    self.__onClickCallbackFunc = nil
    self.__onTweenEndCallback = nil
    --self.__onSelfTweenUpdateCallback = nil
    self.agentCtrl = nil
end

local function __DisposeTimer(self)
    if self.timer ~= nil then
        self.timer:Stop()
        self.timer = nil
    end
end


--释放资源
local function Dispose(self)
    self:__DisposeTimer()
    self:__DisposeAgent()
    self.viewCtrl = nil
end

--[[
    bezier移动
]]
local function __MoveToBezier(self, position, P0, P1, P2, P3, dValRate, duration, paramObj)
    if self.agentCtrl == nil then
        return
    end
    self.agentCtrl.tweenBeginCallback = Bind(self, self.__OnTweenBeginCallback)
    self.agentCtrl.tweenUpdateCallback = Bind(self, self.__OnTweenUpdateCallback)
    self.agentCtrl.tweenEndCallback = Bind(self, self.__OnTweenEndCallback)
    self.agentCtrl:MoveByBezier(position, P0, P1, P2, P3, dValRate, duration, paramObj)
end

--[[
    移动到指定目标点
]]
local function __MoveToPath(self, unityVec3ListPath, dValRate, duration, moveToPath, paramObj)
    if self.agentCtrl == nil then
        return
    end
    self.agentCtrl.tweenBeginCallback = Bind(self, self.__OnTweenBeginCallback)
    self.agentCtrl.tweenUpdateCallback = Bind(self, self.__OnTweenUpdateCallback)
    self.agentCtrl.tweenEndCallback = Bind(self, self.__OnTweenEndCallback)
    if type(unityVec3ListPath) == CS.UnityEngine.Vector3 then
        self.agentCtrl:MoveToPos(unityVec3ListPath, duration, moveToPath, paramObj)
        return
    end
    self.agentCtrl:MoveToPath(unityVec3ListPath, dValRate, duration, moveToPath, paramObj)
end

local function SetAgentCtrlActive(self, active)
    self.agentCtrl:SetSelfActive(active)
end

local function StopTween(self)
    if not IsNull(self.agentCtrl) then
        self.agentCtrl:StopTween()
    end
end

local function BugFixModel3DWalk(self)
    if self.model3D ~= nil then
        self.model3D.animator:Play("walk", 0)
    end
end

local function ShowBattleResult(self, result)
    if result == NationDefine.TEAM_BATTLE_RESULT.EMPTY then
        self.battleResultImage.gameObject:SetActive(false)
    elseif result == NationDefine.TEAM_BATTLE_RESULT.VICTORY then
        self.battleResultImage:SetSpriteName("ui_t_c2_811")
        self.battleResultImage.gameObject:SetActive(true)
    elseif result == NationDefine.TEAM_BATTLE_RESULT.DEUCE then
        self.battleResultImage:SetSpriteName("ui_t_c2_810")
        self.battleResultImage.gameObject:SetActive(true)
    elseif result == NationDefine.TEAM_BATTLE_RESULT.DEFEAT then
        self.battleResultImage:SetSpriteName("ui_t_c2_812")
        self.battleResultImage.gameObject:SetActive(true)
    end
end

NationMarchPersonHolderEntity.OnCreate = OnCreate
NationMarchPersonHolderEntity.OnEnable = OnEnable
NationMarchPersonHolderEntity.OnDestroy = OnDestroy
NationMarchPersonHolderEntity.OnDisable = OnDisable
NationMarchPersonHolderEntity.OnAddListener = OnAddListener
NationMarchPersonHolderEntity.OnRemoveListener = OnRemoveListener

NationMarchPersonHolderEntity.__OnTweenBeginCallback = __OnTweenBeginCallback
NationMarchPersonHolderEntity.__OnTweenEndCallback = __OnTweenEndCallback
NationMarchPersonHolderEntity.__OnTweenUpdateCallback = __OnTweenUpdateCallback

NationMarchPersonHolderEntity.__CleanAgentRunData = __CleanAgentRunData
NationMarchPersonHolderEntity.__MoveToPath = __MoveToPath
NationMarchPersonHolderEntity.__MoveToBezier = __MoveToBezier
NationMarchPersonHolderEntity.__DisposeAgent = __DisposeAgent
NationMarchPersonHolderEntity.__Dispose3DModel = __Dispose3DModel

NationMarchPersonHolderEntity.__DisposeTimer = __DisposeTimer
NationMarchPersonHolderEntity.__EnSureCreateModel3D = __EnSureCreateModel3D

NationMarchPersonHolderEntity.DoInit = DoInit
NationMarchPersonHolderEntity.SetAgentCtrlActive = SetAgentCtrlActive
NationMarchPersonHolderEntity.SetBorderImgByCampIndex = SetBorderImgByCampIndex
NationMarchPersonHolderEntity.DoTimeLogic = DoTimeLogic
NationMarchPersonHolderEntity.OnTimerCallback = OnTimerCallback
NationMarchPersonHolderEntity.DoAgentMoveLogic = DoAgentMoveLogic
NationMarchPersonHolderEntity.StopTween = StopTween

NationMarchPersonHolderEntity.Dispose = Dispose
NationMarchPersonHolderEntity.BugFixModel3DWalk = BugFixModel3DWalk
NationMarchPersonHolderEntity.ShowBattleResult = ShowBattleResult

return NationMarchPersonHolderEntity