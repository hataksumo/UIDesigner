--[[
-- added by wsh @ 2017-01-09
-- 网络接收包定义
--]]



local ReceiveMsgDefine = {
	UID = 0,
	MsgID = 0,
	OpCode = 0,
	RequestSeq = 0,
	Packages = {},
	MsgType = 0, -- 消息类型  1请求 2推送
	Params = nil, -- 可能会有参数
	__init = function(self,u_id, msg_id,op_code,request_seq, packages)

		self.UID = u_id
		self.MsgID = msg_id
		self.OpCode = op_code
		self.RequestSeq = request_seq
		self.Packages = packages
		local NetUtil = require "Net.Util.NetUtil"

		if self.MsgID >= NetUtil.INDICATION_MIN_ID and self.MsgID < NetUtil.INDICATION_MAX_ID then
			self.MsgType = NetUtil.MSG_TYPE_INDICATION
		else
			self.MsgType = NetUtil.MSG_TYPE_REQUEST
		end
	end,

	__tostring = function(self)
		local str
		str = str.. "UID = "..tostring(self.UID)..", "
		str = str.. "MsgID = "..tostring(self.MsgID)..", "
		str = str.. "OpCode = "..tostring(self.OpCode)..", "
		str = "RequestSeq = "..tostring(self.RequestSeq)..", "
		str = "MsgType = "..tostring(self.MsgType)..", "
		if self.Params ~= nil then
			str = str.. table.dump(self.Params)
		end
		--str = str.. table.dump(self.Packages)
		for _,pakcage in ipairs(self.Packages) do
			str = str..tostring(pakcage).."\n"
		end
		
		return str
	end,
}



--return DataClass("ReceiveMsgDefine", ReceiveMsgDefine)
return BaseClass("ReceiveMsgDefine", ReceiveMsgDefine)