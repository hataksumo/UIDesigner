---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aaa.
--- DateTime: 2019/2/28 10:17
---

local FriendData = BaseClass("FriendData", Singleton)
local temp_data = {"我匆匆从0","白马剑客","111111","2222222","傻逼是你"}
local chat_data = {"洪荒寒来暑往","洪荒寒来暑往洪荒寒来暑往洪荒寒来暑往洪荒寒来暑往洪荒","洪荒寒来暑往洪荒寒来暑往洪荒寒来暑往洪荒寒来暑往洪荒11111111111111111111111111112wwwwor"}
local time = {0,2,4,7,9}
local lv = {15,22,33,40}
local function __init(self)
    self.all_player = {}
    self.friend_list = {}
    self.recent_list = {}
    self.black_list = {}
    self.team_list = {}
    self.apply_list = {}
    self.recommend_list = {}
    self.all_chat = {}
    self.recommend_page = 0
    self.get_chat_state = {}
    self.save_red_id = {}

end

local function __delete(self)
    self.all_player = nil
    self.friend_list = nil
    self.recent_list = nil
    self.black_list = nil
    self.team_list = nil
    self.apply_list = nil
    self.recommend_list = nil
    self.all_chat = nil
    self.recommend_page = 0
    self.get_chat_state = nil
    self.save_red_id = nil
end

local function CreateNewPlayer(friendInfo)
    return {name = friendInfo.name,lv = math.floor(friendInfo.level)
    ,state = friendInfo.loginStatus,last_login_time = friendInfo.recentLoginTime,head = friendInfo.head,id = friendInfo.friendId,info = friendInfo.agreeContent}
end

local function CreateNewPlayerByChat(chatInfo)
    return {name = chatInfo.name,lv = math.floor(chatInfo.lv)
    ,state = 1,last_login_time = 0,id = chatInfo.id}
end

local function CreateSelfData(self)
    local id = ClientData:GetInstance():GetServerUserId()
    local userdata = UserData:GetInstance()
    self.all_player[id] = {name = userdata.name,lv = math.floor(userdata.pLevel)
   ,id = id}
end

local function CreateNewChat(self,belong_id,uid,content,time)
    local friend_data = self.all_player[uid]
    if friend_data ~= nil then
        local chat_list =  self.all_chat[belong_id]
        if chat_list == nil then
            chat_list = {}
            self.all_chat[belong_id] = chat_list
        else
            --去重复
            for i, v in ipairs(chat_list) do
                if v.time == time then
                    return false
                end
            end
        end
        table.insert(chat_list,{content = content,is_mine = uid == ClientData:GetInstance():GetServerUserId(),head = friend_data.head,lv = friend_data.lv,time = time})
        return true
    end
    return false
end

local function RefreshChatInfo(self,belong_id,uid,content,time)
    if CreateNewChat(self,belong_id,uid,content,time) then
        local _type = self:FindPlayerRelation(belong_id)
        if _type == 1 then
            RedPointData:GetInstance():CreateNewRed("friend_friend_friend","friend_friend_friend_"..belong_id,true)
        elseif _type == 0 then
            RedPointData:GetInstance():CreateNewRed("friend_friend_stranger","friend_friend_stranger_"..belong_id,true)
        end
        RedPointData:GetInstance():RefereshAllState("friend_root")
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_RED_POINT_CHANGE)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_CHAT_UPDATE,belong_id)
    else
        RedPointData:GetInstance():UpdateRedState("friend_friend_friend",true)
        table.insert(self.save_red_id,belong_id)
    end
end
local function AddNewChat(self,id,str)

    local msdId = MsgIDDefine.PBRELATION_CHAT_TO_FRIEND_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.friendId = id
    msdObj.content = str
    NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        RefreshChatInfo(self,id,ClientData:GetInstance():GetServerUserId(),str,msg_obj.Packages.time)
    end)


end

local function SerchPlayer(self,str,gameObj)
    local msdId = MsgIDDefine.PBRELATION_SEARCH_FRIEND_REQUEST
    local msdObj = MsgIDMap[msdId]()
    local gameobj=gameObj
    msdObj.name = str
    NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            --UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            gameobj:SetActive(true)
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_SERCH_FRIEND_INFO)
            return
        end
        local friendInfo = msg_obj.Packages.friendInfo
        if friendInfo ~= nil and not friendInfo._is_null then
            self.all_player[friendInfo.friendId] = CreateNewPlayer(friendInfo)
            self.recommend_list = {friendInfo.friendId}
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_FRIEND_LIST_REFRESH)
        end

    end)
end

local function RemovePlayer(re_list,add_list,id)
    if add_list then
        --检测是否不包含该值
        if table.keyof(add_list,id) == nil then
            table.insert(add_list,id)
        end
    end
    if re_list then
        for i, v in ipairs(re_list) do
            if v == id then
                table.remove(re_list,i)
                break
            end
        end
    end

end



local function HandleFriendByType(self,type,id,friend_id,is_mine,friendInfo)
    if type == 1 then
        if is_mine then
            RemovePlayer(self.recommend_list,nil,id)
        else
            for i, v in ipairs(self.apply_list) do
                if v == id then
                    Logger.Log("已经在申请列表里面")
                    return
                end
            end
            self.all_player[id] = CreateNewPlayer(friendInfo)
            table.insert(self.apply_list,id)
            RedPointData:GetInstance():UpdateRedState("friend_add_apply",true)
        end
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_FRIEND_LIST_REFRESH)
    elseif type == 2 then
        RemovePlayer(self.apply_list,self.friend_list,id)
        if not is_mine then
            self.all_player[id] = CreateNewPlayer(friendInfo)
        end
        if #self.apply_list == 0 then
            RedPointData:GetInstance():UpdateRedState("friend_add_apply",false)
        end
        RemovePlayer(nil,self.recent_list,id)
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_FRIEND_LIST_REFRESH)
    elseif type == 3 then
        RemovePlayer(self.apply_list,nil,id)
        if #self.apply_list == 0 then
            RedPointData:GetInstance():UpdateRedState("friend_add_apply",false)
        end
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_FRIEND_LIST_REFRESH)
    elseif type == 4 then
        RemovePlayer(self.friend_list,nil,id)
        RedPointData:GetInstance():DelChild("friend_friend_friend_"..id)
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_FRIEND_LIST_REFRESH)
    elseif type == 5 then
        self.all_chat[id] = nil
        if is_mine then
            RemovePlayer(self.friend_list,self.black_list,id)
        else
            RemovePlayer(self.friend_list,nil,id)
        end
        RemovePlayer(self.recent_list,nil,id)
        RedPointData:GetInstance():DelChild("friend_friend_friend_"..id)
        RedPointData:GetInstance():DelChild("friend_friend_stranger_"..id)
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_FRIEND_LIST_REFRESH)
    elseif type == 6 then
        if is_mine then
            if friend_id ~= nil then
                for i, v in ipairs(friend_id) do
                    RemovePlayer(self.apply_list,self.friend_list,v)
                end
            end
        else
            self.all_player[id] = CreateNewPlayer(friendInfo)
            RemovePlayer(self.apply_list,self.friend_list,id)
        end
        if #self.apply_list == 0 then
            RedPointData:GetInstance():UpdateRedState("friend_add_apply",false)
        end
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_FRIEND_LIST_REFRESH)
    elseif type == 7 then
        self.apply_list = {}
        RedPointData:GetInstance():UpdateRedState("friend_add_apply",false)
        DataManager:GetInstance():Broadcast(UIMessageNames.ON_FRIEND_LIST_REFRESH)
    elseif type == 8 then
        RemovePlayer(self.black_list,nil,id)
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_FRIEND_LIST_REFRESH)
    end
end

local function FriendIndication(self,data)
    HandleFriendByType(self,data.type,data.friendInfo.friendId,nil,false,data.friendInfo)
end

--1好友申请 2同意好友申请 3拒绝好友申请 4删除好友 5拉到黑名单 6全部同意  7全部忽略
local function DealFriend(self,type,id,str)
    local msdId = MsgIDDefine.PBRELATION_DEAL_FRIEND_REQUEST
    local msdObj = MsgIDMap[msdId]()
    if id ~= nil then
        msdObj.friendId = id
    end
    msdObj.type = type
    if str ~= nil then
        msdObj.applyContent = str
    end
    NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            --TODO:此处需要判断是否是自己加自己，如果是的，需要重新加载SpecialText
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        HandleFriendByType(self,type,id,msg_obj.Packages.friendId,true)
    end)
end

local function GetChatList(self,id)
    if self.get_chat_state[id] then
        return
    end
    self.get_chat_state[id] = true
    --聊天信息
    local chatId = MsgIDDefine.PBRELATION_GET_CHAT_LIST_REQUEST
    local chatObj = MsgIDMap[chatId]()
    chatObj.frienddId =id
    NetManager:GetInstance():SendMessage(chatId,chatObj,function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        if msg_obj.Packages.chatList ~= nil then
            for i, v in ipairs(msg_obj.Packages.chatList) do
                CreateNewChat(self,id,v.sender,v.content,v.time)
            end
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_CHAT_UPDATE,id)
        end
    end)
end


--获取推荐列表
local function GetRecommendList(self,force)
    if not force and #self.recommend_list > 0 then
        return
    end
    local msdId = MsgIDDefine.PBRELATION_GET_RECOMMEND_FRIEND_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.page = self.recommend_page
    NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        self.recommend_list = {}
        self.recommend_page = self.recommend_page+1
        if msg_obj.Packages.friendInfo ~= nil then
            for i, v in ipairs(msg_obj.Packages.friendInfo) do
                self.all_player[v.friendId] = CreateNewPlayer(v)
                table.insert(self.recommend_list,v.friendId)
            end
        end
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_FRIEND_LIST_REFRESH)
    end)
end
--获取列表
local function GetAllList(self)
    GetRecommendList(self)
    CreateSelfData(self)
    local msdId = MsgIDDefine.PBRELATION_GET_FRIND_LIST_REQUEST
    local msdObj = MsgIDMap[msdId]()
    for i = 1, 5 do
        msdObj.page:append(i)
    end
    NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        self.friend_list = {}
        self.black_list = {}
        self.recent_list = {}
        self.team_list = {}
        self.apply_list = {}

        local function AddList(list,id,state)
            if state == 1 then
                table.insert(list,1,id)
            else
                table.insert(list,id)
            end
        end

        if msg_obj.Packages.friendInfoType ~= nil then
            for i, v in ipairs(msg_obj.Packages.friendInfoType) do
                for m, n in ipairs(v.friend) do
                    self.all_player[n.friendId] = CreateNewPlayer(n)
                    if v.page == 1 then
                        AddList(self.friend_list,n.friendId,n.loginStatus)
                    elseif v.page == 2 then
                        AddList(self.black_list,n.friendId,n.loginStatus)
                    elseif v.page == 3 then
                        AddList(self.recent_list,n.friendId,n.loginStatus)
                    elseif v.page == 4 then
                        AddList(self.team_list,n.friendId,n.loginStatus)
                    elseif v.page == 5 then
                        AddList(self.apply_list,n.friendId,n.loginStatus)
                    end
                end
            end
        end
        if #self.apply_list > 0 then
            RedPointData:GetInstance():UpdateRedState("friend_add_apply",true)
        end
        --红点赋值
        RedPointData:GetInstance():UpdateRedState("friend_friend_friend",false)
        for i, v in ipairs(self.save_red_id) do
            local _type = self:FindPlayerRelation(v)
            if _type == 1 then
                RedPointData:GetInstance():CreateNewRed("friend_friend_friend","friend_friend_friend_"..v,true)
            elseif _type == 0 then
                RedPointData:GetInstance():CreateNewRed("friend_friend_stranger","friend_friend_stranger_"..v,true)
            end
        end
        self.save_red_id = {}
        RedPointData:GetInstance():RefereshAllState("friend_root")
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_FRIEND_LIST_REFRESH)
    end)

end

local function CheckIsFriend(self,id)
    local is_friend = false
    for i, v in ipairs(self.friend_list) do
        if v == id then
            is_friend = true
            break
        end
    end
    return is_friend
end

local function CheckHavePlayer(self,id)
    if self.all_player[id] == nil then
        --从聊天里面取信息
        local data =  ChatData:GetInstance():FindPlayerInfo(id)
        if data ~= nil then
            self.all_player[id] = CreateNewPlayerByChat(data)
        end
    end
end

--查找好友关系 0-陌生人 1-好友 2-黑名单
local function FindPlayerRelation(self,id)
    for i, v in ipairs(self.black_list) do
        if v == id then
            return 2
        end
    end
    for i, v in ipairs(self.friend_list) do
        if v == id then
            return 1
        end
    end
    return 0
end

local function GetFriendData(self,id)
    return self.all_player[id]
end
FriendData.CheckHavePlayer = CheckHavePlayer
FriendData.FindPlayerRelation = FindPlayerRelation
FriendData.GetFriendData = GetFriendData
FriendData.GetRecommendList = GetRecommendList
FriendData.CheckIsFriend = CheckIsFriend
FriendData.GetChatList = GetChatList
FriendData.RefreshChatInfo = RefreshChatInfo
FriendData.FriendIndication = FriendIndication
FriendData.GetAllList = GetAllList
FriendData.DealFriend = DealFriend
FriendData.SerchPlayer = SerchPlayer
FriendData.AddNewChat = AddNewChat
FriendData.__init = __init
FriendData.__delete = __delete
return FriendData