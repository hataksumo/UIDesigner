---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/4/22 10:32
---

local UINationAllianceListModel = BaseClass("UINationAllianceListModel", UIBaseModel)
local base = UIBaseModel;

----单个联盟的数据结构
--local SingleAlianceData=
--{
--    --alianceName="",--名字
--    --lv=0,--等级
--    --curMember=0,--当前成员
--    --totalMember=0,--总成员
--    --belongsArea="",--所属域
--    --shiliValue="",--势力值
--    --state=0,--状态
--
--    id = 0,--联盟id
--    name = "",--联盟名称
--    notice= "",--联盟公告
--    apply = 0,--审批设置 0-关闭申请，1-任何人申请即加入，2-申请审批
--    leaderName= "",--领导者名称
--    level = 0,--联盟等级
--    exp = 0,--联盟经验
--    members = 0,--成员个数
--    maxMembers = 0,--最大成员个数
--    region = 0,--所属域
--    regionName = "",--所属域名称
--    citys = 0,--占领城池数
--    force = 0,--势力值
--    applyNeedForce = 0,--申请势力值要求
--    applyNeedLevel = 0,--申请声望等级要求
--    isApply = false,--是否申请了这个公会 给公会列表用的字段
--    IsMaxMembers = {}
--}

--local SingleAlianceDataModel = DataClass("SingleAlianceDataModel",SingleAlianceData);

-- 功能索引
local FUNC_INDEX ={
    UNION_LIST = 1, --现有联盟列表
    CREATE_UNION = 2, -- 创建联盟
    INVITE_LIST = 3, -- 邀请列表
}

-- 联盟列表二级功能索引
local UNION_LIST_SUB_FUNC_INDEX ={
    NORMAL_MODE = 1, -- 普通模式
    SEARCH_MODE = 2, --搜索模式
}


-- 申请设置索引
local APPLY_INDEX ={
    EVERY_ONE = 1, --任何人均可加入
    NEED_APPLY = 2, -- 需要申请待审批后加入
}

-- 申请协议状态码
local NATION_JOIN_PROTO_FUNC ={
    OK = 1, --申请
    CANCEL = 2, -- 取消申请
}


-- 可申请状态
local NATION_CAN_JOIN_STATE ={
    ALREADY_APPLY = 1, --已经申请过了
    CLOSE_APPLY = 2,--关闭申请
    NO_CONDITION = 3, --任何人申请即加入
    HAS_CONDITION = 4,--申请审批
}
-- 服务器返回申请状态
local NATION_SERVER_APPLY_JOIN_STATE ={
    JOIN_OK = 1, --加入成功
    APPLY_OK = 2,--申请成功
    UNION_BREAK_UP = 3, --工会解散
    CANCEL_APPLY = 4,--取消申请成功
}

-- 创建
local function OnCreate(self)
    base.OnCreate(self)

end



local function SendAddGetUnionListRequest (self,page)
    Logger.LogVars("  UINationAllianceListModel : SendAddGetUnionListRequest ",page)
    NationNetManager:GetInstance():SendAddGetUnionListRequest(page, Bind(self, self.OnSendAddGetUnionListRequest))
end





local function  OnNationUnionCanJoinListDataAdd (self,____,opCode,unionIndex,packages)
    --Logger.LogVars(" 增量获取可加入联盟列表 OnNationUnionCanJoinListDataAdd 2222 self :",self)
    --Logger.LogVars(" 增量获取可加入联盟列表 OnNationUnionCanJoinListDataAdd 3333 opCode :",opCode)
    --Logger.LogVars(" 增量获取可加入联盟列表 OnNationUnionCanJoinListDataAdd 4444 unionIndex :",unionIndex)
    --Logger.LogVars(" 增量获取可加入联盟列表 OnNationUnionCanJoinListDataAdd 5555 packages :",packages)
    if opCode ~= 0 then
        return
    end
    local unions = packages.union
    local countDown = packages.countDown
    local maxIndex = packages.maxIndex

    self.unionListPage = unionIndex
    self.unionListMaxPage = maxIndex
    self.joinUnionTimeStamp = tonumber(countDown)
    --Logger.LogVars("joinUnionTimeStamp ",self.joinUnionTimeStamp)
    for i, v in ipairs(unions) do
        if v.id ~= 0 then
            local  findUnion = self:FindUnionById(v.id)
            local isCreate = false
            if findUnion == nil then --未找到
                findUnion = {}
                findUnion.IsMaxMembers = function(self)
                    return self.members >= self.currentNationalUnionLevelData.Member
                end
                isCreate = true
            end

            findUnion.id = math.modf(v.id)
            findUnion.name = v.name
            findUnion.notice = v.notice
            findUnion.apply = math.modf(v.apply)
            findUnion.leaderUid = v.leaderUid
            findUnion.leaderName = v.leaderName
            findUnion.level = math.modf(v.level)
            --Logger.LogVars("OnNationUnionCanJoinListDataAdd findUnion .. ",findUnion )
            findUnion.currentNationalUnionLevelData = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(findUnion.level)
            --Logger.LogVars("OnNationUnionCanJoinListDataAdd findUnion.currentNationalUnionLevelData .. ",findUnion.currentNationalUnionLevelData )
            findUnion.nextNationalUnionLevelData = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(findUnion.level + 1)

            findUnion.exp = math.modf(v.exp)
            findUnion.members = math.modf(v.members)
            findUnion.region = math.modf(v.region)
            findUnion.regionData = NationMapInfoData:GetInstance():GetNationalAscriptionById(findUnion.region)


            findUnion.citys = math.modf(v.citys)
            findUnion.force = math.modf(v.force)
            findUnion.applyNeedForce = math.modf(v.applyNeedForce)
            findUnion.applyNeedLevel = math.modf(v.applyNeedLevel)
            findUnion.isApply = v.isApply


            --findUnion.maxMembers = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(findUnion.level).Member
            --findUnion.regionName = regionData.Name


            if isCreate then
                table.insert(self.alianceList,findUnion)
                self.alianceTable[findUnion.id] = findUnion
            end
        end
    end

    table.sort(self.alianceList,self.SortedByUnionId)
    self.subFuncIndex = self.UNION_LIST_SUB_FUNC_INDEX.NORMAL_MODE
    self.firstNotGetData = true

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_JOIN_UNION_LIST_FLUSH)

    --for i = 1, 20 do
    --
    --
    --    --singleData.alianceName="联盟"..i;
    --    --singleData.lv=i;
    --    --singleData.curMember=500+i;
    --    --singleData.totalMember=600;
    --    --singleData.belongsArea="燕";
    --    --singleData.shiliValue=20+i;
    --    --singleData.state=i%4;
    --    table.insert(self.alianceList,singleData);
    --end

    --params.callbackFunc(msg_obj.OpCode, params.unionIndex, msg_obj.Packages)
    --repeated Union union = 1;
    --optional int32 countDown = 2; // 可加入联盟倒计时（秒）
    --optional int32 maxIndex = 3; // 最大页数

end


local function OnSendAddGetUnionListRequest (self,opCode,unionIndex,packages)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_CAN_JOIN_LIST_DATA_ADD,self,opCode,unionIndex,packages)
end


--按照联盟id升序方式排序
local function SortedByUnionId(a,b)
    return a.id < b.id
end



local function OnEnable(self)
    base.OnEnable(self)

    local national_alliance_VarCfgs=NationMapInfoData:GetInstance().national_alliance_VarCfgs
    self.globalCreateUnionFameLevel = math.modf(national_alliance_VarCfgs.CreatLimit) -- 创建联盟声望等级限制
    self.globalJoinUnionFameLevel = math.modf(national_alliance_VarCfgs.JoinLimit) -- 加入联盟声望等级限制
    self.AllianceNameLength = math.modf(national_alliance_VarCfgs.AllianceNameLength) -- 联盟名称字符数
    self.globalCreateUnionCash = math.modf(national_alliance_VarCfgs.CreateCost) -- 创建联盟花费灵玉
    self.NoticeLimit = math.modf(national_alliance_VarCfgs.NoticeLimit) -- 联盟公告长度限制

    --加入联盟
    self.alianceTable={};
    self.alianceList={};
    self.funcIndex = self.FUNC_INDEX.UNION_LIST -- 默认是联盟列表页签
    self.subFuncIndex = self.UNION_LIST_SUB_FUNC_INDEX.NORMAL_MODE
    self.firstNotGetData = false -- 刚打开界面时候没有数据 需要请求
    self.unionListPage = 0 -- 获取联盟第一页吗？
    self.unionListMaxPage = 0 --最大页数
    self.joinUnionTimeStamp = 0 --加入联盟时间戳

    local unionId,dataMyNation = NationUnionData:GetInstance():GetPlayerNationUnionData()
    self.unionId = unionId
    if self.unionId ~= 0 then
        self.myNationUnion =   NationUnionData:GetInstance().UtilCreateNationUnionData(dataMyNation)
    else
        self.myNationUnion = {}
    end

    --创建联盟
    self.applyCondition={[self.APPLY_INDEX.EVERY_ONE]=DataUtil.GetClientText(200376),[self.APPLY_INDEX.NEED_APPLY]=DataUtil.GetClientText(200377)};
    self.creatConditon={}

    self.creatConditon[1]= string.format(DataUtil.GetClientText(200378),self.globalCreateUnionFameLevel)
    self.creatConditon[2]= string.format(DataUtil.GetClientText(200379),self.globalCreateUnionCash)

end


local function FindUnionById (self,unionId)
    if self.alianceTable == nil then
        return nil
    end
    return self.alianceTable[unionId]
end




local function RemoveUnionById (self,unionId)
    --local findUnion = self.alianceTable[unionId]
    self.alianceTable[unionId] = nil
    for i, v in ipairs(self.alianceList) do
        if v.id == unionId then
            table.remove(self.alianceList,i)
            return
        end
    end
end

local function  OnNationUnionSearchUnionData (self,sendSelf,opCode,searchName,packages)
  local union = packages.union
    Logger.LogVars("OnNationUnionSearchUnionData union",union," packages : ",packages)
    if union == nil or union._is_null then

        return
    end
    self.funcIndex = self.FUNC_INDEX.UNION_LIST -- 默认是联盟列表页签
    self.subFuncIndex = self.UNION_LIST_SUB_FUNC_INDEX.SEARCH_MODE
    self.unionListPage = 0 -- 获取联盟第一页吗？
    --self.unionListPage = unionIndex
    --self.unionListMaxPage = maxIndex
    --self.joinUnionTimeStamp = countDown

    self.alianceList = {}
    self.alianceTable = {}


    local  findUnion = self:FindUnionById(union.id)
    local isCreate = false
    if findUnion == nil then --未找到
        findUnion = {}
        findUnion.IsMaxMembers = function(self)
            return self.members >= self.currentNationalUnionLevelData.Member
        end
        isCreate = true
    end
    findUnion.id = math.modf(union.id)
    findUnion.name = union.name
    findUnion.notice = union.notice
    findUnion.apply = math.modf(union.apply)
    findUnion.leaderUid = union.leaderUid
    findUnion.leaderName = union.leaderName
    findUnion.level = math.modf(union.level)
    findUnion.currentNationalUnionLevelData = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(findUnion.level)
    findUnion.nextNationalUnionLevelData = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(findUnion.level + 1)

    findUnion.exp = math.modf(union.exp)
    findUnion.members = math.modf(union.members)
    findUnion.region = math.modf(union.region)
    findUnion.regionData = NationMapInfoData:GetInstance():GetNationalAscriptionById(findUnion.region)


    findUnion.citys = math.modf(union.citys)
    findUnion.force = math.modf(union.force)
    findUnion.applyNeedForce = math.modf(union.applyNeedForce)
    findUnion.applyNeedLevel = math.modf(union.applyNeedLevel)
    findUnion.isApply = union.isApply

    if isCreate then
        table.insert(self.alianceList,findUnion)
        self.alianceTable[findUnion.id] = findUnion
    end

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_SEARCH_LIST_FLUSH)
end

-- 某个tab资源释放
local function OnNationUnionJoinTabsResReset (self,tabIndex)
    ---- 功能索引
    --local FUNC_INDEX ={
    --    UNION_LIST = 1, --现有联盟列表
    --    CREATE_UNION = 2, -- 创建联盟
    --    INVITE_LIST = 3, -- 邀请列表
    --}
    --
    ---- 联盟列表二级功能索引
    --local UNION_LIST_SUB_FUNC_INDEX ={
    --    NORMAL_MODE = 1, -- 普通模式
    --    SEARCH_MODE = 2, --搜索模式
    --}


    if tabIndex == self.FUNC_INDEX.UNION_LIST then
        if self.subFuncIndex ==  self.UNION_LIST_SUB_FUNC_INDEX.NORMAL_MODE then

        else

        end
        self.unionListPage = 0 -- 获取联盟第一页吗？
        self.alianceList = {}
        self.alianceTable = {}
        self.firstNotGetData = false -- 刚打开界面时候没有数据 需要请求
        self.unionListMaxPage = 0 --最大页数
        --self.joinUnionTimeStamp = 0 --加入联盟时间戳
    elseif tabIndex == self.FUNC_INDEX.CREATE_UNION then

    else

    end

end

-- 某个tab切换目标
local function OnNationUnionJoinTabsResSwitch (self,tabIndex,lastTabIndex)


    if tabIndex == self.FUNC_INDEX.UNION_LIST then
        --if self.subFuncIndex ==  self.UNION_LIST_SUB_FUNC_INDEX.NORMAL_MODE then
        --    --
        --else
        --
        --end
        self:SendAddGetUnionListRequest(self.unionListPage)
    elseif tabIndex == self.FUNC_INDEX.CREATE_UNION then
        local backPack =  BackpackData:GetInstance()
        --self.stamina = backPack:GetItemNumById(CoinDefine.Stamina)
        --self.gold = backPack:GetItemNumById(CoinDefine.Gold)
        self.Diamond = backPack:GetItemNumById(CoinDefine.Diamond)
        self.fameLevel = NationPlayerData:GetInstance():GetCurrentNationFameData().fameLevel
    else
         self:SendGetUnionInviteListRequest()
    end
end

local function SendGetUnionInviteListRequest (self)
    NationNetManager:GetInstance():SendGetUnionInviteListRequest(Bind(self, self.OnNationSendGetUnionInviteListRequest))
end

--获取剩余时间
local function  GetJoinUnionCDTimeStamp (self)
    local endTime = self.joinUnionTimeStamp
    if endTime == nil then
        endTime = 0
    end
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    if currentTime > endTime then
        return 0 -- 没有倒计时
    else
        return endTime - currentTime
    end
end

local function  OnNationSendGetUnionInviteListRequest (self,opCode,packages)
    Logger.LogVars(" OnNationSendGetUnionInviteListRequest  opCode ",opCode)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_INVITE_LIST_GET,self,opCode,packages)
end


local function  OnNationUnionInviteListGet (superSelf,self,opCode,packages)
--local function  OnNationUnionInviteListGet (self,...)
    Logger.LogVars("OnNationUnionInviteListGet self  ",self)
    if opCode ~= 0 then
        return
    end
    local unions = packages.invitation

    --联盟邀请
    self.invitAlianceList={};
    --for i = 1, 20 do
    --    --local singleData=SingleAlianceDataModel.New();
    --    local singleData= {};
    --    singleData.name="联盟"..i;
    --    singleData.level=i;
    --    singleData.curMember=500+i;
    --    singleData.totalMember=600;
    --    singleData.belongsArea="燕";
    --    singleData.shiliValue=20+i;
    --    singleData.state=i%4;
    --    table.insert(self.invitAlianceList,singleData);
    --end
    if unions ~= nil and not unions._is_null then
        for i, v in ipairs(unions) do
            local  findUnion = nil
            local isCreate = false
            if findUnion == nil then --未找到
                findUnion = {}
                findUnion.IsMaxMembers = function(self)
                    return self.members >= self.currentNationalUnionLevelData.Member
                end
                isCreate = true
            end
            findUnion.id = math.modf(v.id)
            findUnion.name = v.name
            findUnion.notice = v.notice
            findUnion.apply = math.modf(v.apply)
            findUnion.leaderUid = v.leaderUid
            findUnion.leaderName = v.leaderName
            findUnion.level = math.modf(v.level)
            findUnion.currentNationalUnionLevelData = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(findUnion.level)
            findUnion.nextNationalUnionLevelData = NationMapInfoData:GetInstance():GetNationalAllianceLevelDataByLevel(findUnion.level + 1)

            findUnion.exp = math.modf(v.exp)
            findUnion.members = math.modf(v.members)
            findUnion.region = math.modf(v.region)
            findUnion.regionData = NationMapInfoData:GetInstance():GetNationalAscriptionById(findUnion.region)

            findUnion.citys = math.modf(v.citys)
            findUnion.force = math.modf(v.force)
            findUnion.applyNeedForce = math.modf(v.applyNeedForce)
            findUnion.applyNeedLevel = math.modf(v.applyNeedLevel)
            findUnion.isApply = v.isApply

            if isCreate then
                table.insert(self.invitAlianceList,findUnion)
            end
        end
    end
    table.sort(self.invitAlianceList,self.SortedByUnionId)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_INVITE_UNION_LIST_FLUSH,true)
end

-- 当加入状态改变时候
local function  OnNationUnionCanJoinListDataJoinOne (self,____,opCode,id,type,canJoinState,isJoin,unions)
    local  findUnion = self:FindUnionById(id)
    if isJoin == self.NATION_SERVER_APPLY_JOIN_STATE.JOIN_OK then

    elseif isJoin == self.NATION_SERVER_APPLY_JOIN_STATE.APPLY_OK then
        if findUnion == nil then --未找到
            -- 拉取最新联盟数据
            return
        end
        findUnion.isApply = true
        --NationNetManager:GetInstance():SendNationUnionRefreshRequest(id) -- 刷新一个联盟
    elseif isJoin == self.NATION_SERVER_APPLY_JOIN_STATE.UNION_BREAK_UP then
        self:RemoveUnionById(id)
        -- remove联盟data
    else
        if findUnion == nil then --未找到
            -- 拉取最新联盟数据
            return
        end
        findUnion.isApply = false
        -- 取消申请
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_JOIN_UNION_LIST_FLUSH)
end

--更新声望等级
local function  OnNationFameLevelChanged (self)
    if  self.funcIndex == self.FUNC_INDEX.UNION_LIST then
    elseif self.funcIndex == self.FUNC_INDEX.CREATE_UNION then
        local backPack =  BackpackData:GetInstance()
        self.Diamond = backPack:GetItemNumById(CoinDefine.Diamond)
        self.fameLevel = NationPlayerData:GetInstance():GetCurrentNationFameData().fameLevel
    else

    end
end

local function  OnNationUnionJoinInviteListRefuse (self,unionId)
    Logger.LogVars(" OnNationUnionJoinInviteListRefuse ")
    self:__RemoveInvitAlianceListDataById(unionId)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_INVITE_UNION_LIST_FLUSH,false)
end

local function __RemoveInvitAlianceListDataById (self,id)
    if self.invitAlianceList == nil then
        return
    end

    for i, v in ipairs( self.invitAlianceList) do
        if v.id == id then
            table.remove(self.invitAlianceList,i)
            return
        end
    end
end


local function __OnNationUserUnionDataFlush (self)
    local unionId,dataMyNation = NationUnionData:GetInstance():GetPlayerNationUnionData()
    self.unionId = unionId
    if self.unionId ~= 0 then
        self.myNationUnion = NationUnionData:GetInstance().UtilCreateNationUnionData(dataMyNation)
    else
        self.myNationUnion = {}
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_UNION_JOIN_UNION_LIST_USER_UNION_FLUSH)
end



-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听

    self:AddDataListener(DataMessageNames.ON_NATION_UNION_CAN_JOIN_LIST_DATA_ADD,self.OnNationUnionCanJoinListDataAdd)
    self:AddDataListener(DataMessageNames.ON_NATION_UNION_SEARCH_UNION_DATA,self.OnNationUnionSearchUnionData)
    self:AddDataListener(DataMessageNames.ON_NATION_UNION_JOIN_TABS_RES_RESET,self.OnNationUnionJoinTabsResReset)
    self:AddDataListener(DataMessageNames.ON_NATION_UNION_JOIN_TABS_RES_SWITCH,self.OnNationUnionJoinTabsResSwitch)
    self:AddDataListener(DataMessageNames.ON_NATION_UNION_INVITE_LIST_GET,self.OnNationUnionInviteListGet)
    self:AddDataListener(DataMessageNames.ON_NATION_UNION_CAN_JOIN_LIST_DATA_JOIN_ONE,self.OnNationUnionCanJoinListDataJoinOne)
    self:AddDataListener(DataMessageNames.ON_NAITON_PLAYER_FAME_LEVEL_CHANGE,self.OnNationFameLevelChanged)
    self:AddDataListener(DataMessageNames.ON_NATION_UNION_JOIN_INVITE_LIST_REFUSE,self.OnNationUnionJoinInviteListRefuse)
    self:AddDataListener(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH,self.__OnNationUserUnionDataFlush)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听

    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_CAN_JOIN_LIST_DATA_ADD,self.OnNationUnionCanJoinListDataAdd)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_SEARCH_UNION_DATA,self.OnNationUnionSearchUnionData)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_JOIN_TABS_RES_RESET,self.OnNationUnionJoinTabsResReset)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_JOIN_TABS_RES_SWITCH,self.OnNationUnionJoinTabsResSwitch)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_INVITE_LIST_GET,self.OnNationUnionInviteListGet)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_CAN_JOIN_LIST_DATA_JOIN_ONE,self.OnNationUnionCanJoinListDataJoinOne)
    self:RemoveDataListener(DataMessageNames.ON_NAITON_PLAYER_FAME_LEVEL_CHANGE,self.OnNationFameLevelChanged)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_JOIN_INVITE_LIST_REFUSE,self.OnNationUnionJoinInviteListRefuse)
    self:RemoveDataListener(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH,self.__OnNationUserUnionDataFlush)

end


UINationAllianceListModel.GetJoinUnionCDTimeStamp = GetJoinUnionCDTimeStamp
UINationAllianceListModel.__OnNationUserUnionDataFlush = __OnNationUserUnionDataFlush
UINationAllianceListModel.OnNationUnionJoinInviteListRefuse = OnNationUnionJoinInviteListRefuse
UINationAllianceListModel.__RemoveInvitAlianceListDataById = __RemoveInvitAlianceListDataById
UINationAllianceListModel.OnNationFameLevelChanged = OnNationFameLevelChanged
UINationAllianceListModel.OnNationUnionCanJoinListDataJoinOne = OnNationUnionCanJoinListDataJoinOne
UINationAllianceListModel.OnNationUnionInviteListGet = OnNationUnionInviteListGet
UINationAllianceListModel.SendGetUnionInviteListRequest = SendGetUnionInviteListRequest
UINationAllianceListModel.OnNationSendGetUnionInviteListRequest = OnNationSendGetUnionInviteListRequest
UINationAllianceListModel.OnNationUnionJoinTabsResSwitch = OnNationUnionJoinTabsResSwitch
UINationAllianceListModel.OnNationUnionJoinTabsResReset = OnNationUnionJoinTabsResReset
UINationAllianceListModel.OnNationUnionCanJoinListDataAdd = OnNationUnionCanJoinListDataAdd
UINationAllianceListModel.OnNationUnionSearchUnionData = OnNationUnionSearchUnionData
UINationAllianceListModel.OnAddListener = OnAddListener
UINationAllianceListModel.OnRemoveListener = OnRemoveListener
UINationAllianceListModel.OnCreate = OnCreate
UINationAllianceListModel.OnEnable = OnEnable
UINationAllianceListModel.FUNC_INDEX = FUNC_INDEX
UINationAllianceListModel.FindUnionById = FindUnionById
UINationAllianceListModel.RemoveUnionById = RemoveUnionById

UINationAllianceListModel.SendAddGetUnionListRequest = SendAddGetUnionListRequest
UINationAllianceListModel.OnSendAddGetUnionListRequest = OnSendAddGetUnionListRequest
UINationAllianceListModel.SortedByUnionId = SortedByUnionId
UINationAllianceListModel.APPLY_INDEX = APPLY_INDEX
UINationAllianceListModel.UNION_LIST_SUB_FUNC_INDEX = UNION_LIST_SUB_FUNC_INDEX
UINationAllianceListModel.NATION_JOIN_PROTO_FUNC = NATION_JOIN_PROTO_FUNC
UINationAllianceListModel.NATION_CAN_JOIN_STATE = NATION_CAN_JOIN_STATE
UINationAllianceListModel.NATION_SERVER_APPLY_JOIN_STATE = NATION_SERVER_APPLY_JOIN_STATE


return UINationAllianceListModel


