
--[[
-- 控制层
--]]

local UIMultipleMonstersOpenCtrl = BaseClass("UIMultipleMonstersOpenCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIMultipleMonstersOpen)
end
--创建房间协议
local function CreateRoomMessage(self)
	local room_info_id = MsgIDDefine.PBDRBOSS_CREATE_ROOM_REQUEST
	local room_info = (MsgIDMap[room_info_id])()
	room_info.levelId = self.model.levelId
	NetManager:GetInstance():SendMessage(room_info_id,room_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBDRBOSS_CREATE_ROOM_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			DRBossData:GetInstance():ParseRoomInfo(msg_obj.Packages.room.simpleRoom)
			DRBossData:GetInstance():ParseTeamInfo(msg_obj.Packages.room.PlayerInRoom)
			DRBossData:GetInstance():ParseBattleTeam(msg_obj.Packages.team)
			Logger.Log("------------------房间号："..msg_obj.Packages.room.simpleRoom.roomId)
			self:CloseSelf()
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIDRBossRoom)
		end
	end)
end
--搜索
local function SendSearchMessage(self,_str)
	local room_info_id = MsgIDDefine.PBDRBOSS_SEARCH_ROOM_REQUEST
	local room_info = (MsgIDMap[room_info_id])()
	room_info.levelId = self.model.levelId
	room_info.param = _str
	NetManager:GetInstance():SendMessage(room_info_id,room_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBDRBOSS_SEARCH_ROOM_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			DRBossData:GetInstance():ParseRoomInfo(msg_obj.Packages.room)
			self:CloseSelf()
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIMultipleMonstersResoult,self.model.levelId)
		end
	end)
end

--匹配房间协议
local function MachRoomMessage(self,list,_power,_callback)
	local room_info_id = MsgIDDefine.PBDRBOSS_MATCH_ROOM_REQUEST
	local room_info = (MsgIDMap[room_info_id])()
	room_info.levelId = self.model.levelId
	for _, v in ipairs(list) do
		room_info.quality:append(v)
	end
	room_info.leaderPower = _power
	NetManager:GetInstance():SendMessage(room_info_id,room_info,function (msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("ERROR PBDRBOSS_MATCH_ROOM_REQUEST~~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		else
			if msg_obj.Packages.room == nil then
				if _callback ~= nil then
					_callback()
				end
			else
				DRBossData:GetInstance():ParseRoomInfo(msg_obj.Packages.room.simpleRoom)
				DRBossData:GetInstance():ParseTeamInfo(msg_obj.Packages.room.PlayerInRoom)
                DRBossData:GetInstance():ParseBattleTeam(msg_obj.Packages.team)
				self:CloseSelf()
				UIManager:GetInstance():OpenWindow(UIWindowNames.UIDRBossRoom)
			end
		end
	end)
end

UIMultipleMonstersOpenCtrl.CloseSelf = CloseSelf
UIMultipleMonstersOpenCtrl.CreateRoomMessage = CreateRoomMessage
UIMultipleMonstersOpenCtrl.MachRoomMessage = MachRoomMessage
UIMultipleMonstersOpenCtrl.SendSearchMessage = SendSearchMessage

return UIMultipleMonstersOpenCtrl