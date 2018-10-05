require "Common/define"
require "Common/protocal"
require "Common/functions"
Event = require 'events'

require "3rd/pblua/login_pb"
require "3rd/pbc/protobuf"

local sproto = require "3rd/sproto/sproto"
local core = require "sproto.core"
local print_r = require "3rd/sproto/print_r"

Network = {};
local this = Network;

local transform;
local gameObject;
local islogging = false;

function Network.Start() 
    logWarn("Network.Start!!");
    Event.AddListener(Protocal.Connect, this.OnConnect); 
    --Event.AddListener(Protocal.Message, this.OnMessage); 
    Event.AddListener(Protocal.Exception, this.OnException); 
    Event.AddListener(Protocal.Disconnect, this.OnDisconnect); 
end

--Socket消息--
function Network.OnSocket(key, data)
    Event.Brocast(key, data);
end

--当连接建立时--
function Network.OnConnect() 
    logWarn("Game Server connected!!");
end

--异常断线--
function Network.OnException() 
    islogging = false; 
    NetManager:SendConnect();
   	logError("OnException------->>>>");
end

--连接中断，或者被踢掉--
function Network.OnDisconnect() 
    islogging = false; 
    logError("OnDisconnect------->>>>");
end 


--卸载网络监听--
function Network.Unload()
    Event.RemoveListener(Protocal.Connect);
    Event.RemoveListener(Protocal.Exception);
    Event.RemoveListener(Protocal.Disconnect);
    logWarn('Unload Network...')
end




--单机模式测试
local sproto = require "3rd/sproto/sproto"
local msgDef = sproto.parse [[
    .Hello {
        msg 0 : string 
    }
    .sendMsg{
        name 0 : string
        msg 1 : string 
    }
    .chatMsg {
        name 0 : string
        msg 1 : string
    }
]]

local hexHash = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'}

local getHex = function(v_num)
    local a1 = hexHash[v_num % 16 + 1]
    v_num = math.floor(v_num / 16)
    local a2 = hexHash[v_num % 16 + 1]
    v_num = math.floor(v_num / 16)
    local a3 = hexHash[v_num % 16 + 1]
    v_num = math.floor(v_num / 16)
    local a4 = hexHash[v_num % 16 + 1]
    return a4..a3..a2..a1
end


function Network.testSrv(v_msg)
    --print(v_msg:ToString())
    --local real_data = string.sub(v_msg,2)
    local tt = {}
    for i=0,v_msg.Length-1 do
        table.insert(tt,string.char(v_msg[i]))
    end
    local real_data = table.concat(tt,"",2)
    print_buffer(real_data)
    local oMsg = msgDef:decode("chatMsg",real_data)
    print("name = "..oMsg.name.." msg = "..oMsg.msg)
end