
--[[
-- 控制层
--]]

local UIMultipleMonstersResoultCtrl = BaseClass("UIMultipleMonstersResoultCtrl", UIBaseCtrl)

local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIMultipleMonstersResoult)
end

local function SendJoinRoom(self,_psd)
	local room_info_id = MsgIDDefine.PBDRBOSS_ENTER_ROOM_REQUEST
	local room_info = (MsgIDMap[room_info_id])()
	room_info.levelId = self.model.levelId
	room_info.roomId = self.model.bossInfo.roomId
	if _psd == nil then
		room_info.password = ""
	else
		room_info.password = _psd
	end

	NetManager:GetInstance():SendMessage(room_info_id,room_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBDRBOSS_ENTER_ROOM_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			DRBossData:GetInstance():ParseRoomInfo(msg_obj.Packages.room.simpleRoom)
			print(DRBossData:GetInstance().room_info.leaderName)
			DRBossData:GetInstance():ParseTeamInfo(msg_obj.Packages.room.PlayerInRoom)
			print(#DRBossData:GetInstance().room_team_info)
			DRBossData:GetInstance():ParseBattleTeam(msg_obj.Packages.team)
			Logger.Log("------------------房间号："..msg_obj.Packages.room.simpleRoom.roomId)
			self:CloseSelf()
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIDRBossRoom)
		end
	end)
end

UIMultipleMonstersResoultCtrl.CloseSelf = CloseSelf
UIMultipleMonstersResoultCtrl.SendJoinRoom = SendJoinRoom

return UIMultipleMonstersResoultCtrl