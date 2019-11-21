--[[
-- 国战玩家联盟数据
--]]
local NationUnionData = BaseClass("NationUnionData", Singleton)
local NationUnionItemData = {
    id = 0, --联盟id
    name = "", --联盟名称
    notice = "", --联盟公告
    apply = 0, --审批设置 0-关闭申请，1-任何人申请即加入，2-申请审批 参考 NationDefine.NATION_UNION_APPLY_DEFINE
    leaderUid = 0, -- 领导者uid
    leaderName = "", --领导者名称
    level = 0, --联盟等级
    exp = 0, --联盟经验
    members = 0, --成员个数
    region = 0, --所属域
    citys = 0, --占领城池数
    force = 0, --势力值
    isApply = false, --是否申请了这个公会 给公会列表用的字段
    occupyBuildList = {}
}

local NationMemberData = {
    uid = 0, --唯一id
    name = "", --名字
    head = "", --头像
    frame = "", --头像框
    contribution = 0, --总贡献
    contributionWeek = 0, --本周贡献
    militaryExploits = 0, --本周战功
    region = 0, --所属域
    force = 0, --势力值
    position = 0, --职位
}
--local NationTeamItem = DataClass("NationTeamItem", NationTeamItemData)
local NationUnionItem = BaseClass("NationUnionItem", NationUnionItemData)
local NationMemberItem = BaseClass("NationMemberItem", NationMemberData)

local function __init(self)
    self.myNationUnion = nil -- 我的公会信息
    self.myMember = nil -- 我在工会中的信息
    self.isInitData = false -- 是否数据已经获得过
    --self.unionId = nil -- 我的联盟id
    self.staticDataInit = false -- 静态数据是否第一次初始化
    self.UnionMaxLevelData = nil -- 最高联盟等级
    --self.unionMembers={}--当前联盟成员
    local GlobalData = DataUtil.GetData("global")
    for i, v in pairs(GlobalData) do
        if v.Key == "ReserveForceSpdSec" then
            self.armyReserveSpdSec = v.valueN
        elseif v.Key == "ReserveForceNum" then
            self.armyReserveSpdNum = v.valueN
        end
    end

    --联盟内所有玩家已经激活的城镇的并集
    self.activeBuildList = {}

    --占领城池的资源加成
    self.occupyBuff = {}
end

local function __delete(self)
    self:__DeleteTimers()
    self.myNationUnion = nil
    self.isInitData = false
    --self.unionId = nil -- 我的联盟id
    self.myMember = nil
    self.UnionMaxLevelData = nil
end

local function __StaticInit(self)
    if self.isInitData then
        return
    end
    self.national_alliance_Level = NationMapInfoData:GetInstance().national_alliance_Level
    local UnionMaxLevel, UnionMaxLevelData = self:GetNationUnionMaxLevelAndData()
    self.UnionMaxLevelData = UnionMaxLevelData
end

--[[
     获取联盟最高等级和对象
]]
local function GetNationUnionMaxLevelAndData(self)
    local level = #self.national_alliance_Level
    local levelData = self.national_alliance_Level[#self.national_alliance_Level]
    return level, levelData
end

--[[
    通过经验获取联盟等级对象和等级
]]
local function GetNationUnionExpLevelAndData(self, unionExp)
    local levelData = nil
    local level = 0
    for i, v in ipairs(self.national_alliance_Level) do
        if (unionExp >= v.Exp) then
            levelData = v
            level = i
        else
            break
        end
    end

    if levelData == nil then
        Logger.LogError("error give a unionExp is " .. unionExp)
        return 1, self.national_alliance_Level[1]
    end

    return level, levelData
end


-- 解析玩家联盟经验数据
local function ParseNationUserUnionExpByPassivePush(self, data, hasEvent)
    if data == nil or data._is_null then
        return
    end

    local exp = 0
    exp = math.max(exp, self:__ParseNationUserUnionExp(data.syscBandits))
    exp = math.max(exp, self:__ParseNationUserUnionExp(data.syscCrusade))
    exp = math.max(exp, self:__ParseNationUserUnionExp(data.syscResource))
    self:UpdateNationUnionExpByInitiativePush(exp, hasEvent)
end


-- 解析玩家联盟经验数据
local function __ParseNationUserUnionExp(self, data)
    if data == nil or data._is_null then
        return 0
    end
    local maxExp = 0
    for i, v in ipairs(data) do
        maxExp = math.max(maxExp, v.unionExp)
    end
    maxExp = math.modf(maxExp)
    Logger.LogVars(" __ParseNationUserUnionExp data maxExp", maxExp)
    return maxExp
end


--解析玩家的联盟数据
local function ParseNationUserUnionData(self, msgData, hasEvent)
    local isDataNull = msgData == nil or msgData._is_null
    local union = nil
    if not isDataNull then
        union = msgData.union
    end

    self:__StaticInit()
    if union == nil or union._is_null then
        -- 未加入联盟数据初始化
        self.isInitData = true
        self.myNationUnion = nil
        --self.unionId = 0
        self.myMember = nil
        NationUnionData:GetInstance():SetNationUnionId(0)
        Logger.LogVars("ParseNationUserUnionData msgData == nil ： ")
        if hasEvent then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
        end
    else
        -- 加入联盟数据初始化
        self.isInitData = true
        self:ParseNationUnionMyUnionData(union, false)
        self:ParseNationUnionMyMemberData(msgData.member, false)
        if msgData.activeTown ~= nil then
            self:ParseNationUnionActiveBuildData(msgData.activeTown)
        end

        if hasEvent then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
        end
    end
end

--解析联盟内所有成员已经激活的城镇数据
local function ParseNationUnionActiveBuildData(self, msgData, isUpdate)
    if msgData == nil or msgData._is_null then
        Logger.LogErrorVars("ParseNationUnionActiveBuildData 服务器推送了空的空的空的 联盟内所有成员已经激活的城镇~")
    else
        self.activeBuildList = {}
        for _, v in ipairs(msgData) do
            if self.activeBuildList[v] == nil then
                self.activeBuildList[v] = v
            else
                self.activeBuildList[v] = v
            end
        end

        if isUpdate then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_BUILD_ACTIVE_UPDATE)
        end
    end
end

--解析联盟我的成员数据
local function ParseNationUnionMyMemberData(self, data, hasEvent)
    if data == nil or data._is_null then
        return
    end

    local isCreate = false -- 是否创建
    if self.myMember == nil then
        self.myMember = NationMemberItem.New()
        isCreate = true
    end

    self.myMember.uid = math.modf(data.uid)
    self.myMember.name = data.name
    self.myMember.frame = math.modf(data.frame)
    self.myMember.head = math.modf(data.head)
    self.myMember.contribution = math.modf(data.contribution)
    self.myMember.contributionWeek = math.modf(data.contributionWeek)
    self.myMember.militaryExploits = math.modf(data.militaryExploits)
    self.myMember.region = math.modf(data.region)
    self.myMember.force = math.modf(data.force)
    self.myMember.position = math.modf(data.position)

    Logger.LogVars("ParseNationUnionMyMemberData self.myMember ： ", self.myMember)

    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
    end
end


-- 解析联盟我的联盟数据
local function ParseNationUnionMyUnionData(self, data, hasEvent)
    if data == nil or data._is_null then
        return
    end

    local isCreate = false -- 是否创建
    if self.myNationUnion == nil then
        self.myNationUnion = NationUnionItem.New()
        isCreate = true
    end

    self.myNationUnion.id = math.modf(data.id)
    --self.unionId = self.myNationUnion.id
    NationUnionData:GetInstance():SetNationUnionId(self.myNationUnion.id)
    self.myNationUnion.name = data.name
    self.myNationUnion.notice = data.notice
    self.myNationUnion.apply = math.modf(data.apply)
    if data.leaderUid ~= nil then
        self.myNationUnion.leaderUid = math.modf(data.leaderUid)
    end

    self.myNationUnion.leaderName = data.leaderName

    self.myNationUnion.exp = math.modf(data.exp)
    self.myNationUnion.members = math.modf(data.members)
    self.myNationUnion.region = math.modf(data.region)
    self.myNationUnion.citys = math.modf(data.citys)
    self.myNationUnion.force = math.modf(data.force)
    self.myNationUnion.isApply = data.isApply

    self.myNationUnion.occupyBuildList = {}
    for _, v in ipairs(data.buildingId) do
        self.myNationUnion.occupyBuildList[v] = v
    end

    self:CalculateOccupyBuildBuff()

    local level, levelData = self:GetNationUnionExpLevelAndData(self.myNationUnion.exp)
    self.myNationUnion.level = level
    self.myNationUnion.currentNationalUnionLevelData = levelData

    Logger.LogVars("ParseNationUnionMyUnionData self.myNationUnion ： ", self.myNationUnion)

    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
    end
end

--更新审批设置
local function UpdateMyNationApplySetting(self, apply)
    if self.myNationUnion == nil then
        return
    end
    self.myNationUnion.apply = apply
end

--更新我的联盟公告
local function UpdateMyNationNotice(self, notice)
    if self.myNationUnion == nil then
        return
    end
    self.myNationUnion.notice = notice
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
end

--更新我的联盟成员个数，todo，delete
local function UpdateMyNationMembersCount(self, members)
    if self.myNationUnion == nil then
        return
    end
    self.myNationUnion.members = math.modf(members)
    --DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
end

--更新我的联盟占领城池的数据
local function UpdateMyUnionOccupyBuildListInfo(self, msgData)
    if self.myNationUnion == nil then
        return
    end

    self.myNationUnion.occupyBuildList = {}
    for _, v in ipairs(msgData.buildingId) do
        self.myNationUnion.occupyBuildList[v] = v
    end
end

--更新联盟的简要信息（显示用信息）
local function UpdateMyUnionSimpleInfo(self, msgData)
    if self.myNationUnion == nil then
        return
    end

    self.myNationUnion.leaderName = msgData.leaderName
    self.myNationUnion.leaderUid = msgData.leaderUid
    self.myNationUnion.notice = msgData.notice
    self.myNationUnion.members = math.modf(msgData.members)
    self.myNationUnion.force = math.modf(msgData.force)
end

--更新禅让盟主
local function UpdateGrantUnion(self, uid, name)
    self.myMember.position = NationDefine.NATION_UNION_POSITION.MEMBER
    self.myNationUnion.leaderUid = math.modf(uid)
    self.myNationUnion.leaderName = name
    --DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
end

--更新联盟我的成员职位信息
local function UpdateNationUnionMyMemberPosition(self, position, hasEvent)
    if self.myMember == nil then
        return
    end
    self.myMember.position = math.modf(position)
    Logger.LogVars("UpdateNationUnionMyMemberPosition self.myMember ： ", self.myMember)
    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
    end
end

--更新联盟我的联盟盟主信息
local function UpdateNationUnionLeaderInfo(self, data, hasEvent)

    if data == nil or data._is_null then
        return
    end

    if self.myNationUnion == nil then
        return
    end

    if data.leaderId ~= nil then
        self.myNationUnion.leaderUid = math.modf(data.leaderId)
    end
    self.myNationUnion.leaderName = data.leaderName
    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
    end
end

--更新联盟经验增加
local function UpdateNationUnionExpByInitiativePush(self, exp, hasEvent)
    if exp <= 0 then
        return
    end

    local unionId, myNationUnion = self:GetPlayerNationUnionData()
    if myNationUnion == nil then
        return
    end
    Logger.LogVars("UpdateNationUnionExpByInitiativePush add exp ", exp)
    local realExp = exp
    if realExp > self.UnionMaxLevelData.Exp then
        realExp = self.UnionMaxLevelData.Exp
    end
    myNationUnion.exp = realExp
    local level, levelData = self:GetNationUnionExpLevelAndData(myNationUnion.exp)
    myNationUnion.level = level
    myNationUnion.currentNationalUnionLevelData = levelData

    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH)
    end
end

-- 获取我的联盟数据
local function GetPlayerNationUnionData(self)
    return self:GetNationUnionId(), self.myNationUnion, self.myMember
end

--获取我的联盟资源产量加成（百分比）
local function GetPlayerNationUnionResourceAddition(self)
    if self.myNationUnion == nil then
        return 0
    end
    local currentNationalUnionLevelData = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(self.myNationUnion.level)
    return currentNationalUnionLevelData.SourceAdd
end

local function CalculateOccupyBuildBuff(self)
    --初始化
    self.occupyBuff[NationDefine.ITEM_WOOD_ID] = 0
    self.occupyBuff[NationDefine.ITEM_IRON_ID] = 0
    self.occupyBuff[NationDefine.ITEM_STONE_ID] = 0
    self.occupyBuff[NationDefine.ITEM_FOOD_ID] = 0

    if self.myNationUnion.occupyBuildList ~= nil then
        local buildInfo = nil
        for k, v in pairs(self.myNationUnion.occupyBuildList) do
            buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(v)
            for j, w in ipairs(buildInfo.OtherProp) do
                self.occupyBuff[w.Id] = self.occupyBuff[w.Id] + w.Val
            end
        end
    end
end

--获取某类型资源加成数值（固定值）
local function GetOccupyBuildBuffByResourceId(self, resId)
    if self.occupyBuff == nil then
        return 0
    end
    local val = self.occupyBuff[resId]
    if val == nil then
        return 0
    end
    return val
end

--工具函数创建联盟数据
local function UtilCreateNationUnionData(data, updateData, round2Int)
    if data == nil then
        return nil
    end
    local nationUnion = nil
    if updateData ~= nil then
        nationUnion = updateData
    else
        nationUnion = {}
    end

    nationUnion.id = round2Int and math.modf(data.id) or data.id
    nationUnion.name = data.name
    nationUnion.notice = data.notice
    nationUnion.apply = round2Int and math.modf(data.apply) or data.apply
    --if data.leaderUid ~= nil then
    nationUnion.leaderUid = round2Int and math.modf(data.leaderUid) or data.leaderUid
    --end
    nationUnion.leaderName = data.leaderName
    nationUnion.level = round2Int and math.modf(data.level) or data.level
    nationUnion.exp = round2Int and math.modf(data.exp) or data.exp
    nationUnion.members = round2Int and math.modf(data.members) or data.members
    nationUnion.region = round2Int and math.modf(data.region) or data.region
    nationUnion.citys = round2Int and math.modf(data.citys) or data.citys
    nationUnion.force = round2Int and math.modf(data.force) or data.force
    nationUnion.isApply = round2Int and math.modf(data.isApply) or data.isApply
    nationUnion.currentNationalUnionLevelData = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(nationUnion.level)
    nationUnion.nextNationalUnionLevelData = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(nationUnion.level + 1)
    nationUnion.regionData = NationMapInfoData:GetInstance():GetNationalAscriptionById(nationUnion.region)
    return nationUnion
end

--工具函数创建联盟成员数据
local function UtilCreateNationMemberData(data, updateData, round2Int)
    if data == nil then
        Logger.LogVars(" UtilCreateNationMemberData is nil~")
        return nil
    end

    local nationMember = nil
    if updateData ~= nil then
        nationMember = updateData
    else
        nationMember = {}
    end
    nationMember.uid = round2Int and math.modf(data.uid) or data.uid
    nationMember.name = data.name
    nationMember.frame = round2Int and math.modf(data.frame) or data.frame
    nationMember.head = round2Int and math.modf(data.head) or data.head --id 不是图片的str path
    nationMember.contribution = round2Int and math.modf(data.contribution) or data.contribution
    nationMember.contributionWeek = round2Int and math.modf(data.contributionWeek) or data.contributionWeek
    nationMember.militaryExploits = round2Int and math.modf(data.militaryExploits) or data.militaryExploits
    nationMember.region = round2Int and math.modf(data.region) or data.region
    nationMember.force = round2Int and math.modf(data.force) or data.force
    nationMember.position = round2Int and math.modf(data.position) or data.position
    nationMember.positionData = NationMapInfoData:GetInstance():GetNationalAllianceAuthorityById(nationMember.position)
    nationMember.regionData = NationMapInfoData:GetInstance():GetNationalAscriptionById(nationMember.region)

    return nationMember
end

local function ExitUnion(self, hasEvent)
    self:ParseNationUserUnionData(nil, hasEvent)
end

--获取国战联盟id
local function GetNationUnionId(self)
    return UserData:GetInstance().nationUnionId
    --return self.unionId
end

--设置国战联盟id
local function SetNationUnionId(self, id)
    UserData:GetInstance().nationUnionId = id
    --self.unionId = id
end

local function BuildIsActiveByBuildID(self, buildID)
    if self.myNationUnion == nil then
        return false
    end
    --先判断是否是联盟占领的攻城建筑
    --Logger.LogVars("BuildIsActiveByBuildID 111111111111 #### ")
    local isActiveOcc = self.myNationUnion.occupyBuildList[buildID]
    local gotVal
    if isActiveOcc == nil then
        gotVal = false
    else
        if not isActiveOcc then
            gotVal = false
        else
            gotVal = true
        end
    end
    if gotVal then
        return isActiveOcc
    end
    isActiveOcc = self.activeBuildList[buildID]
    if isActiveOcc == nil then
        return false
    else
        return isActiveOcc
    end
end

NationUnionData.__init = __init
NationUnionData.__delete = __delete
NationUnionData.__StaticInit = __StaticInit
NationUnionData.__ParseNationUserUnionExp = __ParseNationUserUnionExp

NationUnionData.ParseNationUserUnionData = ParseNationUserUnionData
NationUnionData.ParseNationUnionMyUnionData = ParseNationUnionMyUnionData
NationUnionData.ParseNationUnionMyMemberData = ParseNationUnionMyMemberData
NationUnionData.ParseNationUnionActiveBuildData = ParseNationUnionActiveBuildData
NationUnionData.ParseNationUserUnionExpByPassivePush = ParseNationUserUnionExpByPassivePush

NationUnionData.GetNationUnionMaxLevelAndData = GetNationUnionMaxLevelAndData
NationUnionData.GetNationUnionExpLevelAndData = GetNationUnionExpLevelAndData

NationUnionData.CalculateOccupyBuildBuff = CalculateOccupyBuildBuff
NationUnionData.GetOccupyBuildBuffByResourceId = GetOccupyBuildBuffByResourceId
NationUnionData.GetPlayerNationUnionResourceAddition = GetPlayerNationUnionResourceAddition
NationUnionData.GetPlayerNationUnionData = GetPlayerNationUnionData
NationUnionData.UpdateMyNationApplySetting = UpdateMyNationApplySetting
NationUnionData.UpdateMyNationNotice = UpdateMyNationNotice
NationUnionData.UpdateNationUnionMyMemberPosition = UpdateNationUnionMyMemberPosition
NationUnionData.UpdateNationUnionLeaderInfo = UpdateNationUnionLeaderInfo
NationUnionData.UpdateNationUnionExpByInitiativePush = UpdateNationUnionExpByInitiativePush
NationUnionData.UpdateMyNationMembersCount = UpdateMyNationMembersCount
NationUnionData.UpdateMyUnionSimpleInfo = UpdateMyUnionSimpleInfo
NationUnionData.UpdateMyUnionOccupyBuildListInfo = UpdateMyUnionOccupyBuildListInfo
NationUnionData.UpdateGrantUnion = UpdateGrantUnion

NationUnionData.UtilCreateNationUnionData = UtilCreateNationUnionData
NationUnionData.UtilCreateNationMemberData = UtilCreateNationMemberData
NationUnionData.ExitUnion = ExitUnion
NationUnionData.GetNationUnionId = GetNationUnionId
NationUnionData.SetNationUnionId = SetNationUnionId
NationUnionData.BuildIsActiveByBuildID = BuildIsActiveByBuildID

--NationUnionData.NationUnionItem = NationUnionItem

return NationUnionData