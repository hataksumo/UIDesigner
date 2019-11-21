---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aaa.
--- DateTime: 2019/10/19 16:54
---
local LTData = BaseClass("LTData", Singleton)

local function __init(self)
    self.initial = false
end

local function CheckConditionById(id)
    local tl_con = DataUtil.GetData("tl_condition")
    if tl_con[id] ~= nil then
        local type = tl_con[id].Condition
        if type == 5040001 then
            --等级
            if UserData:GetInstance().pLevel >= tl_con[id].Param[1] then
                return true
            end
        elseif type == 5040002 then
            return MapData:GetInstance():CheckPassLevel(tl_con[id].Param[2])
        end
    end
    return false
end
--条件检测
local function CheckCondition(data)
    if data == nil then
        return true
    end
    for i, v in ipairs(data) do
        local state = CheckConditionById(v)
        if not state then
            return false
        end
    end
    return true
end

--初始化所有城市数据
local function InitialCityDetailData()
    local result = {}
    local tl_event_item = DataUtil.GetData("tl_event_item")
    local event_save = {}
    for i, v in pairs(tl_event_item) do
        if event_save[v.EventId] == nil then
            event_save[v.EventId] = 1
        else
            event_save[v.EventId] =  event_save[v.EventId] + 1
        end
    end
    local event_state = {}
    local tl_city_state = DataUtil.GetData("tl_city_state")
    for i, v in pairs(tl_city_state) do
        if event_state[v.EventId] == nil then
            event_state[v.EventId] = {}
        end
        event_state[v.EventId][v.StateId] = {pic = v.Pic,des = v.Content}
    end
    local tl_event = DataUtil.GetData("tl_event")
    local case_event = {}
    for i, v in pairs(tl_event) do
        if case_event[v.CaseId] == nil then
            case_event[v.CaseId] = {}
        end
        local total_count = 0
        if event_save[i] ~= nil then
            total_count = event_save[i]
        else
            Logger.LogError("------->事件点探索数量为0  "..tostring(i))
        end
        case_event[v.CaseId][i] = {id = i,condition = v.UnlockRequired,open = false,pos = v.PosId,
                                   count = 999,state = 1,total_count = total_count,event_change = event_state[i]}
    end
    local tl_case = DataUtil.GetData("tl_case")
    for i, v in pairs(tl_case) do
        if result[v.CityId] == nil then
            result[v.CityId] = {}
        end
        result[v.CityId][i] = {name = v.Name,event = case_event[i]}
    end
    return result
end

--初始化城市
local function InitCity(self)
    if self.all_city == nil or #self.all_city == 0 then
        self.all_city = {}
        local tl_city = DataUtil.GetData("tl_city")
        for i, v in pairs(tl_city) do
            table.insert(self.all_city,{name = v.Name,id = i,
                                        condition = v.UnlockRequired,open = CheckCondition(v.UnlockRequired)})
        end
        self.detail_city = InitialCityDetailData()
    end
end
--更新已完成的案件列表
local function UpdateFinishCase(self,list)
    if self.finish_case == nil then
        self.finish_case = {}
    end
    for i, v in ipairs(list) do
        self.finish_case[v] = true
    end
end
--更新事件列表
local function UpdateEvent(update_list,event_list)
    if event_list ~= nil then
        for i, v in ipairs(event_list) do
            if update_list[v.templateId] ~= nil then
                update_list[v.templateId].open = true
                update_list[v.templateId].count = update_list[v.templateId].total_count - v.count
                update_list[v.templateId].state = v.type
            end
        end
    end
end


local function AddNewNpcDialogList(self,dialog_id,ids,is_end)
    Logger.Log("AddNewNpcDialogList  "..tostring(dialog_id))
    local tl_npc_topic = DataUtil.GetData("tl_npc_topic")
    if tl_npc_topic[dialog_id] ~= nil then
        if self.npc_dialog == nil then
            self.npc_dialog = {}
            self.save_dialog_id = {}
            self.finial_dialog_content = {}
            self.save_send_dialog_id = {}
        end
        local npc_id = tl_npc_topic[dialog_id].PersonId
        if is_end == nil then
            is_end = 0
        end
        if self.npc_dialog[npc_id] == nil then
            self.npc_dialog[npc_id] = {id = npc_id,name = "未知",icon = "head_nmj_1102050",is_init_dialog = false,dialog = {{dialog_id,is_end}}}
            local tl_npc = DataUtil.GetData("tl_npc")
            if tl_npc[npc_id] ~= nil then
                self.npc_dialog[npc_id].name = tl_npc[npc_id].Name
                self.npc_dialog[npc_id].icon = tl_npc[npc_id].HeadPic
            end
        else
            table.insert(self.npc_dialog[npc_id].dialog,{dialog_id,is_end})
        end
        self.npc_dialog[npc_id].cur_dialog_index = #self.npc_dialog[npc_id].dialog
        self.save_dialog_id[dialog_id] = {}
        if ids ~= nil and #ids > 0 then
            for i, v in ipairs(ids) do
                table.insert(self.save_dialog_id[dialog_id],v)
                self.save_send_dialog_id[v] = true
            end
        end
    end
end

--更新案件
local function UpdateCase(self,city_id,server_data)
    if self.detail_city[city_id] ~= nil then
        self.current_case = server_data.templateId
        local case_data = self.detail_city[city_id][server_data.templateId]
        UpdateEvent(case_data.event,server_data.tlEventList)
        --更新事件对应的道具
        if case_data.item == nil then
            case_data.item = {}
        end
        if server_data.itemList ~= nil then
            for i, v in ipairs(server_data.itemList) do
                table.insert(case_data.item,v)
            end
        end
        --更新拥有的线索
        if case_data.clue == nil then
            case_data.clue = {}
        end
        if server_data.tlClueList ~= nil then
            for i, v in ipairs(server_data.tlClueList) do
                table.insert(case_data.clue,{id = v.templateId,state = v.type})
                print("当前解锁的线索,",v.templateId);
            end
        end
        --更新对话
        if server_data.tlChatList ~= nil then
            for i, v in ipairs(server_data.tlChatList) do
                AddNewNpcDialogList(self,v.chatGroupId,v.chatId,v.isEnd)
                print("当前解锁的对话信息groupId,",v.chatGroupId,"chatId",v.chatId);
            end
        end

    else
        Logger.LogError("------------>城市id不存在  "..city_id)
    end
end

local function GetCurrentCase(self)
    if self.detail_city ~= nil and self.detail_city[self.current_city] ~= nil then
        return self.detail_city[self.current_city][self.current_case]
    end
    return nil
end

--检测事件开启
local function CheckEventOpen(case)
    if case ~= nil and case.event ~= nil then
        for i, v in pairs(case.event) do
            if not v.open then
                v.open = CheckCondition(v.condition)
            end
        end
    end
end

local function FindCurrentCity(self)
    for i, v in ipairs(self.all_city) do
        if v.id == self.current_city then
            return v
        end
    end
    return nil
end

--获取灵探道具数据
local function GetLTItem(self,id)
    local ui_data = {icon = "icon_1304018",des = "策划什么都没填",city = FindCurrentCity(self).name}
    local data =  DataUtil.GetData("tl_item")[id]
    if data ~= nil then
        ui_data.des = data.Des
        ui_data.icon = data.Icon
    end
    return ui_data
end

local function GetLTEventItem(self,id)
    local ui_data = {des = "策划什么都没填",city =  FindCurrentCity(self).name}
    local data = DataUtil.GetData("tl_event_item")[id]
    if data ~= nil then
        ui_data.des = data.Content
    end
    return ui_data
end



--获取npc列表
local function GetNpcList(self)
    return self.npc_dialog
end
--根据对话id获取下一个对话
local function GetNextContentById(self,id,npc_id)
    local tl_npc_dialog = DataUtil.GetData("tl_npc_dialog")
    local cur_data = tl_npc_dialog[id]
    local content = {}
    local ids = {}
    local is_npc = 2
    if cur_data.NxtId ~= nil then
        for i, v in ipairs(cur_data.NxtId) do
            if v > 0 and not self.save_send_dialog_id[v] then
                local next_data = tl_npc_dialog[v]
                table.insert(content,next_data.NPCRsp)
                table.insert(ids,v)
                is_npc = next_data.Type
            end
        end
    end
    local isHaveNextDialog=true;
    if #content > 0 then
        table.insert(self.finial_dialog_content[npc_id],{content = content,is_npc = is_npc,ids = ids})
    else
        self.npc_dialog[npc_id].dialog[self.npc_dialog[npc_id].cur_dialog_index].is_end = 1
        isHaveNextDialog=false;
    end
    return isHaveNextDialog;
end
--根据npcId获取对话列表
local function GetNpcDilog(self,npc_id)
    local tl_npc_dialog = DataUtil.GetData("tl_npc_dialog")
    if self.finial_dialog_content[npc_id] ~= nil then
        if not self.npc_dialog[npc_id].is_init_dialog then
            local dialog_group = self.npc_dialog[npc_id].dialog
            local dialog_index = dialog_group[#dialog_group][1]
            if #self.save_dialog_id[dialog_index] > 0 then
                GetNextContentById(self,self.save_dialog_id[dialog_index][#self.save_dialog_id[dialog_index]],npc_id)
            else
                local tl_npc_topic = DataUtil.GetData("tl_npc_topic")
                local data = tl_npc_dialog[tl_npc_topic[dialog_index].IniDialogId]
                table.insert(self.finial_dialog_content[npc_id],{content = {data.NPCRsp},ids = {tl_npc_topic[dialog_index].IniDialogId},is_npc = data.Type})
            end
            self.npc_dialog[npc_id].is_init_dialog = true
        end
        return self.finial_dialog_content[npc_id]
    end
    local dialog_group = self.npc_dialog[npc_id].dialog
    local finial_result = {}
    for i, v in ipairs(dialog_group) do
        for m, n in ipairs(self.save_dialog_id[v[1]]) do
            local data = tl_npc_dialog[n]
            table.insert(finial_result,{content = {data.NPCRsp},ids = {n},is_npc = data.Type})
        end
    end
    local dialog_index = dialog_group[#dialog_group][1]
    self.finial_dialog_content[npc_id] = finial_result
    if #self.save_dialog_id[dialog_index] > 0 then
        GetNextContentById(self,self.save_dialog_id[dialog_index][#self.save_dialog_id[dialog_index]],npc_id)
    else
        local tl_npc_topic = DataUtil.GetData("tl_npc_topic")
        local data = tl_npc_dialog[tl_npc_topic[dialog_index].IniDialogId]
        table.insert(finial_result,{content = {data.NPCRsp},ids = {tl_npc_topic[dialog_index].IniDialogId},is_npc = data.Type})
    end
    self.npc_dialog[npc_id].is_init_dialog = true
    return self.finial_dialog_content[npc_id]
end

local function ChatWithNpc(self,npc_id,id,is_mine)
    local msdId = MsgIDDefine.PBEXPLORATORY_CHAT_WITH_NPC_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.chatId = id
    NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        self.save_send_dialog_id[id] = true
        if is_mine then
            table.remove(self.finial_dialog_content[npc_id],#self.finial_dialog_content[npc_id])
            local tl_npc_dialog = DataUtil.GetData("tl_npc_dialog")
            local data = tl_npc_dialog[id]
            table.insert(self.finial_dialog_content[npc_id],{content = {data.NPCRsp},ids = {id},is_npc = data.Type})
        end

        local isHaveNextDialog= GetNextContentById(self,id,npc_id)
        if isHaveNextDialog then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_LT_DATA_REFRESH_NEXT_DIALOG);
        end
    end)
end

local function GetCurrentClue(self)
    local case = GetCurrentCase(self)
    if case ~= nil then
        return case.clue
    end
    return nil
end

--探索事件
local function SearchEvent(self,event_id)
    local case = GetCurrentCase(self)
    if case == nil then
        UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTEventSearch)
        return
    end
    if case.event[event_id].count <= 0 then
        Logger.Log("没有探索次数了~~")
        UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTEventSearch)
        return
    end
    local msdId = MsgIDDefine.PBEXPLORATORY_SEARCH_EVENT_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.eventId = event_id
    NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTEventSearch)
            return
        end
        case.event[event_id].count = case.event[event_id].count - 1
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_LT_SEARCH_COUNT_REFRESH);
        if msg_obj.Packages.type == 1 then --战斗
            UIManager:GetInstance():Broadcast(UIMessageNames.UI_LT_SEARCH_EVENT_RESULT,1,GetLTEventItem(self,self,msg_obj.Packages.id))
        elseif msg_obj.Packages.type == 2 then --剧情
            UIManager:GetInstance():Broadcast(UIMessageNames.UI_LT_SEARCH_EVENT_RESULT,2,GetLTEventItem(self,self,msg_obj.Packages.id))
        elseif msg_obj.Packages.type == 3 then --掉落
            UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTEventSearch)
            local dropItem = msg_obj.Packages.dropItem
            DataUtil.ParseDropItem(dropItem)
            if not DataUtil.CheckDropItemIsNull(dropItem) then
                UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards,dropItem)
            end
        elseif msg_obj.Packages.type == 4 then --线索
            table.insert(case.clue,{{id =  msg_obj.Packages.tlClue.templateId,state = msg_obj.Packages.tlClue.type}})
            --检测是否解锁对话
            local tl_clue = DataUtil.GetData("tl_clue")
            if tl_clue[msg_obj.Packages.tlClue.templateId] ~= nil and tl_clue[msg_obj.Packages.tlClue.templateId].UnlockDialogTopics ~= nil then
                for i, v in ipairs(tl_clue[msg_obj.Packages.tlClue.templateId].UnlockDialogTopics) do
                    AddNewNpcDialogList(self,v)
                end
            end
            UIManager:GetInstance():Broadcast(UIMessageNames.UI_LT_SEARCH_EVENT_RESULT,4,GetLTItem(self,msg_obj.Packages.tlClue.templateId))
        elseif msg_obj.Packages.type == 5 then --道具
            table.insert(case.item,msg_obj.Packages.tlItem)
            UIManager:GetInstance():Broadcast(UIMessageNames.UI_LT_SEARCH_EVENT_RESULT,5,GetLTItem(self,msg_obj.Packages.tlItem))
        end
        CheckEventOpen(case)
    end)
end

--切换城市
local function SwitchCity(self,city_id,error_func)
    local msdId = MsgIDDefine.PBEXPLORATORY_CHANGE_CITY_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.cityId = city_id
    NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if error_func then
                error_func()
            end
            return
        end
        InitCity(self)
        UpdateFinishCase(self,msg_obj.Packages.achieveCaseList)
        UpdateCase(self,msg_obj.Packages.cityId,msg_obj.Packages.tlCase)
        self.current_city = msg_obj.Packages.cityId
        --local npc_list = GetNpcList(self)
        --for i, v in pairs(npc_list) do
        --   local list = GetNpcDilog(self,v.id)
        --    for m, n in ipairs(list) do
        --        Logger.Log("npc = "..v.name.."  content "..n.content[1].."  is_npc  "..tostring(n.is_npc))
        --    end
        --end
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_LT_DATA_INITIAL_COMPLETE);
    end)
end

--初始话
local function Initial(self)
    if not self.initial then
        SwitchCity(self,0,function()
            self.initial = false
        end)
        self.initial = true
    end
end

LTData.GetNpcList = GetNpcList
LTData.GetNpcDilog = GetNpcDilog
LTData.SearchEvent = SearchEvent
LTData.GetCurrentCase = GetCurrentCase
LTData.SwitchCity = SwitchCity
LTData.Initial = Initial
LTData.ChatWithNpc = ChatWithNpc
LTData.GetCurrentClue = GetCurrentClue
LTData.FindCurrentCity = FindCurrentCity
LTData.__init = __init
return LTData