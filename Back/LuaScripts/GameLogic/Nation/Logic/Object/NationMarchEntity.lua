---
--- 队伍控制器
--- DateTime: 2019/7/18 16:08
---
local NationMarchEntity=BaseClass("NationMarchEntity", UIBaseNationComponent)
local NationUtil = require "GameLogic.Nation.NationUtil"
local base = UIBaseNationComponent
local NationMarchPersonHolderEntity = require"GameLogic.Nation.Logic.Object.NationMarchPersonHolderEntity"
local NationMarchLineHolderEntity = require"GameLogic.Nation.Logic.Object.NationMarchLineHolderEntity"
--local NationMarch3DModelHolderEntity = require"GameLogic.Nation.Logic.Object.NationMarch3DModelHolderEntity"
local function OnCreate(self,viewCtrl)
    base.OnCreate(self)
    self.viewCtrl = viewCtrl
    --local roleGameObj = GameObjectPool:GetInstance():TryGetFromCache(NationDefine.MAP_MARCH_ROLE_FILE_NAME)
    self.nationMarchPersonHolderEntity = NationMarchPersonHolderEntity.New(self.transform,"") -- 地图小人 需要换成sprite
    self.nationMarchPersonHolderEntity:OnCreate(self.viewCtrl)
    local lineGameObj = GameObjectPool:GetInstance():TryGetFromCache(NationDefine.MAP_MARCH_LINE_TEMPLATE)
    --lineGameObj.SetActive(true)
    self.nationMarchLineHolderEntity = NationMarchLineHolderEntity.New(lineGameObj.transform,"") -- 地图的路线
    self.nationMarchLineHolderEntity:OnCreate()
    self.nationMarchLineHolderEntity.gameObject:SetActive(true)
end

--获取线的显示类型 1我自己的线 2 敌人的线 3 盟友的线
local function GetNationMarchCampByArmyPath( uid,unionId)
    if uid == UserData:GetInstance().roleID then -- 我自己的线
        return NationDefine.NATION_MARCH_CAMP_FLAG.SELF
    else
        local myUnionId = NationUnionData:GetInstance():GetNationUnionId()
        if myUnionId == 0 then
            return NationDefine.NATION_MARCH_CAMP_FLAG.ENEMY
        else
            if myUnionId == unionId then
                return  NationDefine.NATION_MARCH_CAMP_FLAG.UNION
            else
                return  NationDefine.NATION_MARCH_CAMP_FLAG.ENEMY
            end
        end
    end
end

local function DoInit(self,nationArmyPath)
    self.nationArmyPath = nationArmyPath
    Logger.LogVars(" NationMarchEntity   nationArmyPath : ",nationArmyPath)
    local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
    self.nationMapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager
    --local linkRoadIdArr = nil
    local foundLinkRoadMode,linkRoadIdArr = self.nationMapManager:FindLinkRoadByABId(nationArmyPath.startPos, nationArmyPath.targetPos)

    local campIndex = self.GetNationMarchCampByArmyPath(self.nationArmyPath.uid,self.nationArmyPath.unionId)
    local marchLineMat = nationProxy:GetMarchLineMatByIndex(campIndex)
    self.nationMarchLineHolderEntity:SetSharedMaterial(marchLineMat)
    self.nationMarchLineHolderEntity:SetName(string.format("path_%s|%s|%s",self.nationArmyPath.name
    ,self.nationArmyPath.unionName,self.nationArmyPath.uid))

    if foundLinkRoadMode == NationDefine.NATION_FOUND_ROUND_LINK.NONE then -- 直飞
        self.nationMarchLineHolderEntity:SetSegmentNum(2)
        local isWarCellStartPos = NationMapInfoData:GetInstance():IsMapPosIsWarCell(self.nationArmyPath.startPos)
        local isWarCellTargetPos = NationMapInfoData:GetInstance():IsMapPosIsWarCell(self.nationArmyPath.targetPos)

        local startPos = self.nationMapManager:GetGridUnityCellToWorldByIntXYZ(
                NationUtil.GetXByCellId(self.nationArmyPath.startPos),
                NationUtil.GetYByCellId(self.nationArmyPath.startPos),
                0)
        startPos = Vector3.New(startPos.x,startPos.y + (isWarCellStartPos
                and NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.WAR_CELL or NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.OTHER_BUILDING) ,startPos.z)
        local targetPos = self.nationMapManager:GetGridUnityCellToWorldByIntXYZ(
                NationUtil.GetXByCellId(self.nationArmyPath.targetPos),
                NationUtil.GetYByCellId(self.nationArmyPath.targetPos),
                0)
        targetPos = Vector3.New(targetPos.x,targetPos.y + (isWarCellTargetPos
                and NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.WAR_CELL or NationDefine.MAP_MARCH_LINE_MAP_POS_OFFSET.OTHER_BUILDING) ,targetPos.z)

        self.nationMarchLineHolderEntity:SetPoints(nationProxy:GetSceneMarchRootObj().transform,startPos,
                Vector3.zero,Vector3.zero,targetPos - startPos)
    else


        local P0 = Vector3.New(linkRoadIdArr.CostP0[1],linkRoadIdArr.CostP0[2],0) -- worldPosition
        local P1 = Vector3.New(linkRoadIdArr.CostP1[1],linkRoadIdArr.CostP1[2],0)
        local P2 = Vector3.New(linkRoadIdArr.CostP2[1],linkRoadIdArr.CostP2[2],0)
        local P3 = Vector3.New(linkRoadIdArr.CostP3[1],linkRoadIdArr.CostP3[2],0)
        self.nationMarchLineHolderEntity:SetSegmentNum(20)
        if foundLinkRoadMode == NationDefine.NATION_FOUND_ROUND_LINK.FORWARD then -- 正向
            self.nationMarchLineHolderEntity:SetPoints(nationProxy:GetSceneMarchRootObj().transform,P0,
                    P1,P2,P3)
            --Logger.LogErrorVars("foundLinkRoadMode FORWARD")
        else-- 反向
            local startWorldPos = P0 + P3
            local worldP1 = P0 + P1
            local worldP2 = P0 + P2
            self.nationMarchLineHolderEntity:SetPoints(nationProxy:GetSceneMarchRootObj().transform, startWorldPos,
                    worldP2 - startWorldPos,worldP1 - startWorldPos,-P3)
            --Logger.LogErrorVars("foundLinkRoadMode BACKWARD")
        end
    end

    self.nationMarchLineHolderEntity:ForceUpdateMe()
    self.nationMarchPersonHolderEntity:DoInit(self.nationMapManager,campIndex,currentTime
    ,self.nationArmyPath.startPos,self.nationArmyPath.targetPos
    ,self.nationArmyPath.startTime,self.nationArmyPath.endTime,
            nationArmyPath.name,nationArmyPath.head,nationArmyPath.battleResult,
            BindCallback(self,self.__onClickCallback),
            BindCallback(self,self.__onTweenEndCallback)
            --,BindCallback(self,self. __onTweenUpdateCallback)
    )



end

local function __onClickCallback(self)
    -- 根据参数打开界面
    if self.nationArmyPath == nil then
        return
    end
    local marchId = self.nationArmyPath.marchId
    local uid = self.nationArmyPath.uid
    local teamId = self.nationArmyPath.teamId
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, marchId,uid,teamId)
end

local function __onTweenUpdateCallback(self,nextPos,curPos,valRate)

end

local function __onTweenEndCallback(self)
    --结束释放资源
    --self:CleanRunData()
    local marchId = self.nationArmyPath.marchId
    self:Dispose()
    --Logger.LogErrorVars("__onTweenEndCallback RecycleGameObject ")
    --GameObjectPool:GetInstance():RecycleGameObject(NationDefine.MAP_MARCH_ROLE_FILE_NAME, self.gameObject)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_MARCH_GO_END,marchId)
end

--local function CleanRunData(self)
--    self.nationMarchPersonHolderEntity:CleanRunData()
--    self.nationMarchLineHolderEntity:CleanRunData()
--    self.nationArmyPath = nil
--end

local function OnEnable(self)
    base.OnEnable(self)

end

local function Dispose(self)
    --结束释放资源
    --Logger.LogErrorVars("NationMarchEntity Dispose")
    self.nationMarchPersonHolderEntity:Dispose()
    self.nationMarchLineHolderEntity:Dispose()
    self.nationArmyPath = nil
    self.viewCtrl = nil
    GameObjectPool:GetInstance():RecycleGameObject(NationDefine.MAP_MARCH_ROLE_FILE_NAME, self.gameObject)
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
    --self:AddDataListener(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE, self.__onNationMarchListRemove)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    --self:RemoveDataListener(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE, self.__onNationMarchListRemove)
end


local function BugFixModel3DWalk(self)
    if self.nationMarchPersonHolderEntity ~= nil then
        self.nationMarchPersonHolderEntity:BugFixModel3DWalk()
    end
end


NationMarchEntity.OnCreate = OnCreate
NationMarchEntity.OnEnable = OnEnable
NationMarchEntity.OnDestroy = OnDestroy
NationMarchEntity.OnDisable = OnDisable
NationMarchEntity.OnAddListener = OnAddListener
NationMarchEntity.OnRemoveListener = OnRemoveListener



NationMarchEntity.__onTweenEndCallback=__onTweenEndCallback
NationMarchEntity.__onTweenUpdateCallback=__onTweenUpdateCallback

NationMarchEntity.__onClickCallback=__onClickCallback

NationMarchEntity.DoInit=DoInit
NationMarchEntity.Dispose=Dispose
--NationMarchEntity.CleanRunData=CleanRunData
NationMarchEntity.GetNationMarchCampByArmyPath=GetNationMarchCampByArmyPath
NationMarchEntity.BugFixModel3DWalk=BugFixModel3DWalk

return NationMarchEntity