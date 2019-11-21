
--[[
-- 控制层
--]]

local UIDailyTaskCtrl = BaseClass("UIDailyTaskCtrl", UIBaseCtrl)

local function CloseSelf(self)
	--LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIDailyTask)
end

---每日任务领奖
local function OnEveryDayTaskGetAward(self,id)
	local reward_info_id = MsgIDDefine.PBMISSION_DAILY_REWARD_REQUEST
	local reward_info = (MsgIDMap[reward_info_id])()
	reward_info.missionId = id
	NetManager:GetInstance():SendMessage(reward_info_id,reward_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBMISSION_DAILY_REWARD_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
			UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem)
			local data = TaskData:GetInstance().every_day_task
			for _, v in ipairs(data) do
				if v.id == id then
					v.status = 1
				end
			end
			table.sort(TaskData:GetInstance().every_day_task,TaskData:GetInstance().sort_)
			UIManager:GetInstance():Broadcast(UIMessageNames.UPDATE_TASK_EVERYDAY_DATA)
			TaskData:GetInstance():UpdateTaskRedPointState()
		end
	end)
end

---成就任务领奖
local function OnAchievementTaskGetAward(self,id)
	local reward_info_id = MsgIDDefine.PBMISSION_GET_ACHIEVE_REWARD_REQUEST
	local reward_info = (MsgIDMap[reward_info_id])()
	reward_info.missionId = id
	NetManager:GetInstance():SendMessage(reward_info_id,reward_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBMISSION_ACHIEVE_REWARD_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			local data = TaskData:GetInstance().achievement_btn_list
			for _, v in ipairs(data) do
				for _, m in ipairs(v.littleList) do
					for _, n in ipairs(m.taskData) do
						if n.id == id then
							n.status = 1
							v.nowPoint = v.nowPoint + n.point_num
							TaskData:GetInstance().achievement_score_now = TaskData:GetInstance().achievement_score_now + n.point_num
						end
					end
				end
			end
			for _, v in ipairs(data) do
				for _, m in ipairs(v.littleList) do
					for _, n in ipairs(m.taskData) do
						table.sort(m.taskData,TaskData:GetInstance().sort_)--分類任務排序
					end
				end
			end
			table.sort(TaskData:GetInstance().have_get_task,TaskData:GetInstance().sort_) --了領取任務排序
			UIManager:GetInstance():Broadcast(UIMessageNames.UPDATE_TASK_ACHIEVEMENT_DATA)
			DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
			if not DataUtil.CheckDropItemIsNull(msg_obj.Packages.dropItem) then
				UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards,msg_obj.Packages.dropItem)
			end
			TaskData:GetInstance():UpdateTaskRedPointState()
		end
	end)
end

UIDailyTaskCtrl.CloseSelf = CloseSelf
UIDailyTaskCtrl.OnEveryDayTaskGetAward = OnEveryDayTaskGetAward
UIDailyTaskCtrl.OnAchievementTaskGetAward = OnAchievementTaskGetAward

return UIDailyTaskCtrl