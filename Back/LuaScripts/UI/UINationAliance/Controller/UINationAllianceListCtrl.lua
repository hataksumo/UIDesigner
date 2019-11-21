---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/4/22 10:33
---
local UINationAllianceListCtrl = BaseClass("UINationAllianceListCtrl", UIBaseCtrl)

local utf8 = require("Common.Tools.utf8")

local function GetAllianceNameCNLength(self)
    return math.modf(self.model.AllianceNameLength * 0.5)
end

local function OnClickSearchBtn(self,searchText)
    if self.model.subFuncIndex == self.model.UNION_LIST_SUB_FUNC_INDEX.NORMAL_MODE then
        -- changed
        if string.isNilOrEmpty(searchText) then
            --  no change
            return
        else

            if not utf8.checkWordCN(searchText) then
                UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200367),self:GetAllianceNameCNLength()))
                return
            end

            local len = utf8.len(searchText)
            if len > self:GetAllianceNameCNLength() then
                UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200367),self:GetAllianceNameCNLength()))
                return
            end

            -- changed
            self:SendSearchUnionRequest(searchText)
        end
    else

        if string.isNilOrEmpty(searchText) then --转化成普通模式
            self:SendAddGetUnionListRequest(0)
        else--继续搜索
            if not utf8.checkWordCN(searchText) then
                UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200367),self:GetAllianceNameCNLength()))
                return
            end

            local len = utf8.len(searchText)
            if len > self:GetAllianceNameCNLength() then
                UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200367),self:GetAllianceNameCNLength()))
                return
            end
            self:SendSearchUnionRequest(searchText)
        end
    end
end

local function OnClickCreateUnion(self,name,notice,apply)
    local remindTime =   self.model:GetJoinUnionCDTimeStamp()
    if remindTime > 0 then
        local showTime = (remindTime)/1000
        local formatTime = UIUtil.GetFinialTime(showTime)
        UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200368),formatTime))
        return
    end
    if self.model.fameLevel < self.model.globalCreateUnionFameLevel  then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200369))
        return
    end

    if self.model.Diamond < self.model.globalCreateUnionCash  then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200370))
        return
    end

    if string.isNilOrEmpty(name) then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200371))
        return
    end

    if not utf8.checkWordCN(name) then
        UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200367),self:GetAllianceNameCNLength()))
        return
    end
    local len = utf8.len(name)
    if len > self:GetAllianceNameCNLength() then
        UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200367),self:GetAllianceNameCNLength()))
        return
    end

    if not string.isNilOrEmpty(notice) then
        len = utf8.len(notice)
        if len > self.model.NoticeLimit then
            UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200372),self.model.NoticeLimit))
            return
        end
    end
    --self.applyCondition={[self.APPLY_INDEX.EVERY_ONE]="任何人均可加入",[self.APPLY_INDEX.NEED_APPLY]="需要申请待审批后加入"};

    NationNetManager:GetInstance():SendCreateNationUnionInfoRequest(name,notice,apply,self.model.globalCreateUnionCash,Bind(self,self.__CreateNationUnionInfoCallback))
end


local function __CreateNationUnionInfoCallback(self,opCode,globalCreateUnionCash,packages)
    Logger.LogVars("UINationAllianceListCtrl __CreateNationUnionInfoCallback opCode : ",opCode)
    if opCode ~= 0 then

    else
        BackpackData:GetInstance():UpdateItemData(CoinDefine.Diamond,- globalCreateUnionCash)
        self:CloseSelf()
        NationUnionData:GetInstance():ParseNationUserUnionData(packages, true)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationAllianceMain);
    end
end

local function __SendSearchUnionRequestCallback(self,opCode,name,packages)
    --Logger.LogVars("UINationAllianceListCtrl __SendSearchUnionRequestCallback opCode : ",opCode)
    if opCode ~= 0 then
        return
    else
        -- 改变搜索模式
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_SEARCH_UNION_DATA,self,opCode,name,packages)
    end
end


local function __SendNationApplyUnionRequestCallback(self,opCode,id,type,canJoinState,isJoin,packages)
    Logger.LogVars("UINationAllianceListCtrl __SendNationApplyUnionRequestCallback opCode : ",opCode)
    if opCode ~= 0 then
        return
    else
        ---- 服务器返回申请状态
        --local NATION_SERVER_APPLY_JOIN_STATE ={
        --    JOIN_OK = 1, --加入成功
        --    APPLY_OK = 2,--申请成功
        --    UNION_BREAK_UP = 3, --工会解散
        --    CANCEL_APPLY = 4,--取消申请成功
        --}


        Logger.LogVars("__SendNationApplyUnionRequestCallback getIsJoin ,",isJoin)
        if isJoin == self.model.NATION_SERVER_APPLY_JOIN_STATE.JOIN_OK then
            self:CloseSelf()
            NationUnionData:GetInstance():ParseNationUserUnionData(packages, true)
            UIManager:GetInstance():OpenWindow(UIWindowNames.UINationAllianceMain);
            return
        elseif isJoin == self.model.NATION_SERVER_APPLY_JOIN_STATE.APPLY_OK then
            --NationNetManager:GetInstance():SendNationUnionRefreshRequest(id) -- 刷新一个联盟
        elseif isJoin == self.model.NATION_SERVER_APPLY_JOIN_STATE.UNION_BREAK_UP then
            -- remove联盟data


        else
            -- 取消申请


        end
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_CAN_JOIN_LIST_DATA_JOIN_ONE,self,opCode,id,type,canJoinState,isJoin,packages)
        end
end


local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationAllianceList)
end

local function SendAddGetUnionListRequest(self,page)
    self.model:SendAddGetUnionListRequest(page)
    --self.model.unionListPage
end

local function SendSearchUnionRequest(self,name)
    NationNetManager:GetInstance():SendSearchUnionRequest(name,Bind(self,self.__SendSearchUnionRequestCallback))
    --self.model:SendAddGetUnionListRequest(self.model.unionListPage + 1)
end


local function SendNationApplyUnionRequest(self,unionData)
    local prtoType = nil
    local canJoinState = nil

    if unionData.isApply then
      -- 取消申请
        prtoType = self.model.NATION_JOIN_PROTO_FUNC.CANCEL
        canJoinState = self.model.NATION_CAN_JOIN_STATE.ALREADY_APPLY

    else

        if unionData.apply == NationDefine.NATION_UNION_APPLY_SETTING.CLOSE_APPLY then            ---- 关闭申请
            return
        else
            local remindTime =   self.model:GetJoinUnionCDTimeStamp()
            if remindTime > 0 then
                local showTime = (remindTime)/1000
                local formatTime = UIUtil.GetFinialTime(showTime)
                UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200373),formatTime))
                return
            end

            if unionData:IsMaxMembers() then
                UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200374))
                return
            end
        end

        if unionData.apply == NationDefine.NATION_UNION_APPLY_SETTING.CLOSE_APPLY then
            --canJoinState = self.model.NATION_CAN_JOIN_STATE.CLOSE_APPLY
        elseif unionData.apply == NationDefine.NATION_UNION_APPLY_SETTING.ANY_PERSON   then
            -- 立即申请加入
            canJoinState = self.model.NATION_CAN_JOIN_STATE.NO_CONDITION
        else
            -- 条件申请
            canJoinState = self.model.NATION_CAN_JOIN_STATE.HAS_CONDITION
        end
        prtoType = self.model.NATION_JOIN_PROTO_FUNC.OK
    end
    NationNetManager:GetInstance():SendNationApplyUnionRequest(unionData.id,prtoType,canJoinState,Bind(self,self.__SendNationApplyUnionRequestCallback))
    --self.model:SendAddGetUnionListRequest(self.model.unionListPage + 1)
end

local function OnNationAlianceInviteItemDealBtnPressed(self,unionData,isAgree)



    if unionData == nil then
        return
    end

    if isAgree then
        local remindTime =   self.model:GetJoinUnionCDTimeStamp()
        if remindTime > 0 then
            local showTime = (remindTime)/1000
            local formatTime = UIUtil.GetFinialTime(showTime)
            UISpecial:GetInstance():UITipText(string.format(DataUtil.GetClientText(200373),formatTime))
            return
        end

        local function __JoinConfirmCallback (self,isConfirm,unionData,isAgree)
            if not isConfirm then
                return
            end
            self:__InnerInviteItemDeal(unionData,true)
        end
        UIManager:GetInstance():OpenTwoButtonTip(DataUtil.GetClientText(200005),  string.format(DataUtil.GetClientText(200375),unionData.name), DataUtil.GetClientText(200007), DataUtil.GetClientText(200006),
                Bind(self,__JoinConfirmCallback,false),Bind(self,__JoinConfirmCallback,true,unionData,isAgree))
        return
    end
    self:__InnerInviteItemDeal(unionData,isAgree)
    --DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_MANAGER_SUB_AGREE_DEAL, memeberData.uid,isAgree)
end

local function __InnerInviteItemDeal(self,unionData,isAgree)
    local  function callBack(self,opCode,unionId,agree, packages)
        if opCode ~= 0 then
            return
        end
        local isJoin = packages.isJoin
        local union = packages.union
        local member = packages.member

        if isJoin then
            -- update unionData
            self:CloseSelf()
            NationUnionData:GetInstance():ParseNationUserUnionData(packages, true)
            UIManager:GetInstance():OpenWindow(UIWindowNames.UINationAllianceMain);
            return
        else
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_JOIN_INVITE_LIST_REFUSE, unionId)
        end
    end
    --unionId, agree
    NationNetManager:GetInstance():SendNationDealInviteRequest(unionData.id,isAgree,Bind(self,callBack))
end


local function EnterNationUnionLogic(self)
    self:CloseSelf()
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationAllianceMain);
end



UINationAllianceListCtrl.EnterNationUnionLogic = EnterNationUnionLogic
UINationAllianceListCtrl.__InnerInviteItemDeal = __InnerInviteItemDeal
UINationAllianceListCtrl.OnNationAlianceInviteItemDealBtnPressed = OnNationAlianceInviteItemDealBtnPressed
UINationAllianceListCtrl.__CreateNationUnionInfoCallback = __CreateNationUnionInfoCallback
UINationAllianceListCtrl.__SendSearchUnionRequestCallback = __SendSearchUnionRequestCallback
UINationAllianceListCtrl.CloseSelf = CloseSelf

UINationAllianceListCtrl.OnClickCreateUnion = OnClickCreateUnion
UINationAllianceListCtrl.OnClickSearchBtn = OnClickSearchBtn

UINationAllianceListCtrl.SendAddGetUnionListRequest = SendAddGetUnionListRequest
UINationAllianceListCtrl.SendSearchUnionRequest = SendSearchUnionRequest
UINationAllianceListCtrl.SendNationApplyUnionRequest = SendNationApplyUnionRequest
UINationAllianceListCtrl.__SendNationApplyUnionRequestCallback = __SendNationApplyUnionRequestCallback
UINationAllianceListCtrl.GetAllianceNameCNLength = GetAllianceNameCNLength



return UINationAllianceListCtrl