--[[
-- added by wsh @ 2017-01-10
-- 网络模块工具类
--]]

local NetUtil = {}
--local unpack = unpack or table.unpack
local MsgIDMap = require "Net.Config.MsgIDMap"
--local ReceiveSinglePackage = require "Net.Config.ReceiveSinglePackage"
local ReceiveMsgDefine = require "Net.Config.ReceiveMsgDefine"
local error_message =  (require("Net.Protol.pbuser_pb")).error_message

local MSG_TYPE_INDICATION = 2 -- 推送消息类型
local MSG_TYPE_REQUEST = 1 -- 请求消息类型

local INDICATION_MIN_ID = 60000 --推送协议定义区间最小
local INDICATION_MAX_ID = 70000 --推送协议定义区间最大

local MSG_ID_NATION_MIN = 500000 --国战协议最小协议号
local MSG_ID_NATION_MAX = 600000 --国战协议最大协议号



local CONNECT_EVENT_CONECT_OK = 1 -- 网络事件连接成功
local CONNECT_EVENT_CLOSE_OK = 2 -- 网络事件断开连接成功
local CONNECT_EVENT_SEVER_NOT_OPEN = -4 -- 服务器未开启
local CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER = -5 -- 前端没有网络导致链接不上
local CONNECT_EVENT_UNGET_HERAT_BEART = -10 -- 由于服务器长时间未收到心跳而断开连接
local CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE = -11 -- 服务器关机了 或者心跳断开连接
local CONNECT_RETRY_SEND_MANY_TIMES = -20 -- 重试次数过多导致服务器连接断开
local CONNECT_RESET_MES_MASK = -22 --重置协议mask
local DEFAULT_NET_SECRETKEY =       {--加密解密所用的默认KEY
	2023708229, -158607964,
	-2120859654, 1167043672
}

local CONNECTOR_TYPE = {--连接类型
	HALL = 1, --游戏服
	NATION = 2, --国战服
	UNKNOWN = 3, --未知服务器
}

local MSG_TYPE_INDICATION = 2 -- 推送消息类型
local MSG_TYPE_REQUEST = 1 -- 请求消息类型
--[[
大厅网络连接器的状态
]]
local HALL_CONNECT_ST = {
    INIT = -1,
    PARAM_OK = 0,
    LINKING = 1,
    OK = 2,
    LOGIC_OK = 3,
    LOST = 4,
    --RE_LINKING = 4,
}

local function SerializeMessage(msg_obj)
	local output = ""
	output = output..string.pack(">i4", msg_obj.RouterId);
	output = output..string.pack(">i1", msg_obj.RouterType);
	output = output..string.pack(">i4", msg_obj.MsgID);
	output = output..string.pack(">i4", msg_obj.RequestSeq);
	output = output..string.pack(">i2", msg_obj.PushIndex);
	output = output..string.pack(">i4", msg_obj.Token);
	if msg_obj.ServerId then
	--if msg_obj.ServerId ~= 0 then
	--	Logger.LogErrorVars(" msg_obj.ServerId  ~ ",msg_obj.ServerId)
		output = output..string.pack(">i4", msg_obj.ServerId);
	end

	if msg_obj.MsgProto then
		local send_msg = msg_obj.MsgProto:SerializeToString()
		output = output..send_msg
	end
	return output
end
--[[
local function DeserializeMessage(data, start, length)
	assert(data ~= nil and type(data) == "string")
	start = start or 1
	length = length or string.len(data)
	
	local index = start
	local request_seq = string.unpack("=I4", data, index)
	index = index + 4
	
	local receive_msg = ReceiveMsgDefine.New(request_seq, {})
	local packages = receive_msg.Packages
	
	repeat
		local msg_id = string.unpack("=I4", data, index)
		index = index + 4
		if msg_id <= 0 then
			break
		end
		
		local pkg_length = string.unpack("=I4", data, index)
		index = index + 4
		
		local msg_obj = (MsgIDMap[msg_id])()
		if msg_obj == nil then
			Logger.LogError("No proto type match msg id : "..msg_id)
			break
		end
		
		local pb_data = string.sub(data, index, index + pkg_length - 1)
		msg_obj:ParseFromString(pb_data)
		
		local one_package = ReceiveSinglePackage.New(msg_id, msg_obj)
		table.insert(packages, one_package)
		index = index + pkg_length
	until msg_id == 0 or index >= start + length
	return receive_msg
end
]]

--[[
解包操作
接收到一个完整的包 底层已经保证每次会发一个完整的包，这里没有半包和粘包的情况

]]
local function DeserializeMessage(data)
	assert(data ~= nil and type(data) == "string")

	local length = length or string.len(data)
	if length == 0 then
		--heartbeat or error
		Logger.LogError("DeserializeMessage bytes length error!")
	end

	--	包长2  uid 4  msgid 4   result 4   index4
	local index = 1
	local UID = string.unpack(">i4", data, index)
	index = index + 4
	local msgID = string.unpack(">i4", data, index)
	index = index + 4
	local opCode = string.unpack(">i4", data, index)
	index = index + 4
	local request_seq = string.unpack(">i4", data, index)
	index = index + 4
	local remindLen = length + 1 - index --lua 索引从 1开始  所以这里长度+1
	--Logger.Log("remindLen : "..remindLen.."length : "..length)
	if remindLen < 0 then
		Logger.LogError("DeserializeMessage remindLen pb_data length < 0!")
	end
	--Logger.Log("length : ".. length .." remindLen : ".. remindLen .." index : "..
	--		index .. " UID : "..UID .. " msgID : "..msgID..
	--	" opCode :"..opCode .. " request_seq :"..request_seq)
	local msg_obj = nil
	if remindLen > 0 then
		if opCode == 0 then -- 正常
			local protoSourceData = (MsgIDMap[msgID])
			if protoSourceData == nil then
				Logger.LogError("收到的协议号 msgID "..msgID.." 不存在！,请检查协议的数据是否更新")
			end
			msg_obj = protoSourceData()
			if msg_obj == nil then
				Logger.Log("不包含的消息ID："..msgID)
			end
		else
			msg_obj = error_message()
		end
		local pb_data = string.sub(data, index)
		msg_obj:ParseFromString(pb_data)
	else --包体为空则给一个空对象
		msg_obj = {}
	end

	local receive_msg =	ReceiveMsgDefine.New( UID, msgID, opCode, request_seq, msg_obj)
	return receive_msg

	--[[
	start = start or 1

	print("receive bytes:", string.byte(data, start, length))

	local index = start
	local request_seq = string.unpack("=I4", data, index)
	index = index + 4

	local receive_msg = ReceiveMsgDefine.New(request_seq, {})
	local packages = receive_msg.Packages

	repeat
		local msg_id = string.unpack("=I4", data, index)
		index = index + 4
		if msg_id <= 0 then
			break
		end

		local pkg_length = string.unpack("=I4", data, index)
		index = index + 4

		local msg_obj = (MsgIDMap[msg_id])()
		if msg_obj == nil then
			Logger.LogError("No proto type match msg id : "..msg_id)
			break
		end

		local pb_data = string.sub(data, index, index + pkg_length - 1)
		msg_obj:ParseFromString(pb_data)

		local one_package = ReceiveSinglePackage.New(msg_id, msg_obj)
		table.insert(packages, one_package)
		index = index + pkg_length
	until msg_id == 0 or index >= start + length
	return receive_msg
	--]]
	end

--NetUtil.XOR = XOR
NetUtil.SerializeMessage = SerializeMessage
NetUtil.DeserializeMessage = DeserializeMessage
NetUtil.DEFAULT_NET_SECRETKEY = DEFAULT_NET_SECRETKEY
--NetUtil.DEFAULT_NET_MESSAGE_PREFIX = DEFAULT_NET_MESSAGE_PREFIX
NetUtil.MSG_TYPE_INDICATION = MSG_TYPE_INDICATION
NetUtil.MSG_TYPE_REQUEST = MSG_TYPE_REQUEST
NetUtil.INDICATION_MIN_ID = INDICATION_MIN_ID
NetUtil.INDICATION_MAX_ID = INDICATION_MAX_ID
NetUtil.CONNECT_EVENT_CONECT_OK = CONNECT_EVENT_CONECT_OK
NetUtil.CONNECT_EVENT_CLOSE_OK = CONNECT_EVENT_CLOSE_OK
NetUtil.CONNECT_EVENT_SEVER_NOT_OPEN = CONNECT_EVENT_SEVER_NOT_OPEN
NetUtil.CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER = CONNECT_EVENT_CLIENT_CANNOT_CONNECT_2_SERVER
NetUtil.CONNECT_EVENT_UNGET_HERAT_BEART = CONNECT_EVENT_UNGET_HERAT_BEART
NetUtil.CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE = CONNECT_EVENT_SEVER_SHUTDOWN_AT_ONCE
NetUtil.CONNECT_RETRY_SEND_MANY_TIMES = CONNECT_RETRY_SEND_MANY_TIMES
NetUtil.CONNECT_RESET_MES_MASK = CONNECT_RESET_MES_MASK
NetUtil.HALL_CONNECT_ST = HALL_CONNECT_ST
NetUtil.CONNECTOR_TYPE = CONNECTOR_TYPE
NetUtil.MSG_ID_NATION_MIN = MSG_ID_NATION_MIN
NetUtil.MSG_ID_NATION_MAX = MSG_ID_NATION_MAX

return ConstClass("NetUtil", NetUtil)