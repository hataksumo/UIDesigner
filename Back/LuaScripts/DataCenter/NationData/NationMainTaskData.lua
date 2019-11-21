local NationMainTaskData = BaseClass("NationMainTaskData", Singleton)

local NationMainTaskInfo = DataUtil.GetData("national_quest")
local ItemInfo = DataUtil.GetData("item")

local function __init(self)
    self.mainTaskData = nil

    --NationNetManager:GetInstance():SendGetCollectPositionList(Bind(self, self.ParseServerData))
end

local function ParseServerData(self, severData, type)
    if NationMainTaskInfo == nil or severData == nil then
        return
    end

    local _data = nil
    if type ~= nil and type == 1 then
        _data = severData[1]
    else
        _data = severData
    end

    self.mainTaskData = {}
    local taskInfo = NationMainTaskInfo[_data.id]
    if taskInfo ~= nil then
        local data = {}
        data.id = _data.id
        data.info = taskInfo.Title
        data.des = taskInfo.Desc

        data.now_progress = math.floor(tonumber(_data.progress))
        data.all_progress = taskInfo.Param[1]
        if data.now_progress == data.all_progress and _data.status == 0 then
            data.status = 2
        else
            data.status = _data.status  ---  0 未领取  1 已领取 2 可领取
        end

        data.reward = {}
        for _, v in ipairs(taskInfo.Reward) do
            local award = {}
            award.Id = v.Id
            award.Icon = ItemInfo[v.Id].Icon
            award.Num = v.Num
            award.Frame = SpriteDefine:GetItemQualityFrameByType(ItemInfo[v.Id].Quality)

            table.insert(data.reward, award)
        end

        self.mainTaskData = data

        RedPointData:GetInstance():UpdateRedState(
                RedPointData:GetInstance().RedName.Nation_Major_Task_Red,NationMainTaskData:GetInstance():IsMainTaskComplete()
                )
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_MAIN_TASK_UPDATE)
    else
        self.mainTaskData = nil
    end
end

-- 判断主线任务是否可领取
local function IsMainTaskComplete(self)
    if self.mainTaskData == nil then
        return false
    end
    if  self.mainTaskData.status == 2 then
        return true
    end
    return false
end

---主线任务领奖
local function SendGetAwardRequest(self, id)
    local reward_info_id = MsgIDDefine.PBNATION_NATION_MAJOR_REWARD_REQUEST
    local reward_info = MsgIDMap[reward_info_id]()
    reward_info.missionId = id

    NetManager:GetInstance():SendMessage(reward_info_id, reward_info, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR 国战主线任务领奖出错~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        else
            DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
            if not DataUtil.CheckDropItemIsNull(msg_obj.Packages.dropItem) then
                UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem, nil, 1)
            end
            self:ParseServerData(msg_obj.Packages.nextMission)
        end
    end)
end

NationMainTaskData.__init = __init
NationMainTaskData.ParseServerData = ParseServerData
NationMainTaskData.SendGetAwardRequest = SendGetAwardRequest
NationMainTaskData.IsMainTaskComplete = IsMainTaskComplete

return NationMainTaskData