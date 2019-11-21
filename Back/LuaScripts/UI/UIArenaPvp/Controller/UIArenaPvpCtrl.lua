
--[[
-- 控制层
--]]

local UIArenaPvpCtrl = BaseClass("UIArenaPvpCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaPvp)
end

--请求宝箱领奖
local function RequestBoxAwardData(self,_id)
	local award_id = MsgIDDefine.PBPVP_GET_PVP_ARENA_REWARD_REQUEST
	local award_info = (MsgIDMap[award_id])()
	award_info.id = _id
	NetManager:GetInstance():SendMessage(award_id,award_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBPVP_GET_PVP_ARENA_REWARD_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
			UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem)
			for _, v in ipairs(ArenaPVPData:GetInstance().arena_pvp_boxList) do
				if _id == v.id and v.state ~= 3 then
					v.state = 3
				end
			end
			table.insert(ArenaPVPData:GetInstance().has_get_box_id,award_info.id)
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_PVP_ARENA_BOX_DATA_UPDATE)
		end
	end)
end

--请求战报信息
local function RequestReportData(self)
	local get_report_info_id = MsgIDDefine.PBPVP_GET_PVP_ARENA_REPORT_REQUEST
	NetManager:GetInstance():SendMessage(get_report_info_id,nil,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBPVP_GET_PVP_ARENA_REPORT_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			ArenaPVPData:GetInstance():UpdateReportData(msg_obj.Packages)
		end
	end)
end

local function OpenAwardWindow(self,_type)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaScoreReward,_type)
end

--请求查看战报详情数据
local function RequestReportInfoData(self, _data)
    local tempData = {}
    tempData.name = _data.name
    tempData.head = _data.head
    tempData.headBG = _data.framd
    --todo,军团名字
    tempData.group = ""

    local report_info_id = MsgIDDefine.PBPVP_PVP_REPORT_REQUEST
    local report_info = (MsgIDMap[report_info_id])()
    report_info.reportId = _data.reportId
    NetManager:GetInstance():SendMessage(report_info_id, report_info, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("ERROR PBPVP_PVP_REPORT_REQUEST~~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        else
            local params = msg_obj.Params
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaReport, msg_obj.Packages, params.playerData)
        end
    end, { playerData = tempData })
end


--请求本服排名信息
local function RequestRankData(self)
	local rank_info_id = MsgIDDefine.PBPVP_GET_PVP_ARENA_RANK_REQUEST
	--UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaForChoice)
	NetManager:GetInstance():SendMessage(rank_info_id,nil,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBPVP_GET_PVP_ARENA_RANK_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			ArenaPVPData:GetInstance().requestRankData = false
			ArenaPVPData:GetInstance():UpdateRankData(msg_obj.Packages.rankList,1)
		end
	end)
end

--请求全服排名信息
local function RequestAllRankData(self)
	local all_rank_id = MsgIDDefine.PBPVP_GET_ALLSERVER_PVP_ARENA_RANK_REQUEST
	--UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaForChoice)
	NetManager:GetInstance():SendMessage(all_rank_id,nil,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBPVP_GET_PVP_ARENA_INFO_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			ArenaPVPData:GetInstance().requestAllRankData = false
			ArenaPVPData:GetInstance():UpdateRankData(msg_obj.Packages.rankList,2)
		end
	end)
end

UIArenaPvpCtrl.OpenAwardWindow = OpenAwardWindow
UIArenaPvpCtrl.CloseSelf = CloseSelf
UIArenaPvpCtrl.RequestReportData = RequestReportData
UIArenaPvpCtrl.RequestBoxAwardData = RequestBoxAwardData
UIArenaPvpCtrl.RequestRankData = RequestRankData
UIArenaPvpCtrl.RequestAllRankData = RequestAllRankData
UIArenaPvpCtrl.RequestReportInfoData = RequestReportInfoData
return UIArenaPvpCtrl