require "Common/define"
local sproto = require "3rd/sproto/sproto"
local core = require "sproto.core"
local print_r = require "3rd/sproto/print_r"
local eventMgr = require "events"



HelloSkynetCtrl = {}
local this = HelloSkynetCtrl

local transform;
local gameObject;
local prompt;
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


--logic vars
local _nickName = ""


--构建函数--
function HelloSkynetCtrl.New()
	logWarn("HelloSkynetCtrl.New--->>")
	return this
end

function HelloSkynetCtrl.Awake()
	logWarn("HelloSkynetCtrl.Awake--->>")
	CtrlManager.CreatePanel('HelloSkynet', this.OnCreate)
	--panelMgr:CreatePanel("HelloSkynet",this.OnCreate)
end

--启动事件--
function HelloSkynetCtrl.OnCreate(obj)
	gameObject = obj
	transform = obj.transform
	prompt = transform:GetComponent('LuaBehaviour')
	eventMgr.AddListener(Protocal.Chat,this.OnChatMsg)
	eventMgr.AddListener(Protocal.Connect,this.OnConnSuccess)
	prompt:AddClick(HelloSkynetPanel.oBtnConnSrv,this.OnConnToSrv)
	prompt:AddClick(HelloSkynetPanel.oBtnSend,this.SendData)
end

function HelloSkynetCtrl.OnConnToSrv()
	AppConst.SocketPort = 8888;
    AppConst.SocketAddress = "192.168.186.128";
    networkMgr:SendConnect();
end

function HelloSkynetCtrl.SendData()
	local strContent = HelloSkynetPanel.GetChatContent()
	local strMsg = msgDef:encode("sendMsg",{name = _nickName,msg = strContent})
	local buffer = ByteBuffer.New()
	--buffer:WriteShort(Protocal.Message)
	--buffer:WriteShort(Protocal.Chat)
	--print_raw_string(strMsg)
    buffer:WriteRawByte(strMsg)
    networkMgr:SendMessage(buffer)
end

function HelloSkynetCtrl.OnChatMsg(v_msg)
	local ospbMsg = msgDef:decode("chatMsg",v_msg)
	HelloSkynetPanel.AddMsg(ospbMsg.name,ospbMsg.msg)
	HelloSkynetPanel.ClearChatText()
end

function HelloSkynetCtrl.OnConnSuccess()
    _nickName = HelloSkynetPanel.iptNickName.text
    HelloSkynetPanel.Disable()
    NotifyCtrl.Show("连接服务器","点击这个按钮，应当连接服务器")
end