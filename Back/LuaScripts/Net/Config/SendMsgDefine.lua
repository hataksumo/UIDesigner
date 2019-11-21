--[[
-- added by wsh @ 2017-01-09
-- 网络发送包定义
--]]

local SendMsgDefine = {
	MsgID = 0,
	MsgProto = "",
	RequestSeq = 0,
	RouterId = 0,
	RouterType = 0,
	PushIndex = 0,
	Token = 0,
	--ServerId = 0,

	--__init = function(self, msg_id, msg_proto, request_seq,router_id,router_type,pushIndex,token,serverId)
	__init = function(self, msg_id, msg_proto, request_seq,router_id,router_type,pushIndex,token)
		self.MsgID = msg_id
		self.MsgProto = msg_proto
		self.RequestSeq = request_seq
		self.RouterId = router_id
		self.RouterType = router_type
		self.PushIndex = pushIndex
		self.Token = token
		--self.ServerId = serverId
	end,
	
	__tostring = function(self)
		local full_name = "None"
		if self.MsgProto then
			full_name = getmetatable(self.MsgProto)._descriptor.full_name
		end
		local str = "MsgID = "..tostring(self.MsgID)..", RequestSeq = "..tostring(self.RequestSeq).."\n"
		str = str.."RouterId = "..tostring(self.RouterId)..", RouterType = "..tostring(self.RouterType).."\n"
		str = str.."PushIndex = "..tostring(self.PushIndex)..", Token = "..tostring(self.Token).."\n"
		--str = str.."ServerId = "..tostring(self.ServerId).."\n"
		str = str..full_name..":{\n"..tostring(self.MsgProto).."}"
		return str
	end,
}

return DataClass("SendMsgDefine", SendMsgDefine)