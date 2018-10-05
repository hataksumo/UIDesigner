local transform
local gameObject

HelloSkynetPanel = {}
local this = HelloSkynetPanel
local msgs = {}


function HelloSkynetPanel.Start()
	
end

--启动事件--
function HelloSkynetPanel.Awake(obj)
	gameObject = obj
	transform = obj.transform
	this.InitPanel()
	--logWarn("Awake lua--->>"..gameObject.name)
end

--初始化面板--
function HelloSkynetPanel.InitPanel()
	this.oBtnConnSrv = transform:Find("btnConnSrv").gameObject
	this.iptChart = transform:Find("iptChart").gameObject:GetComponent("InputField")
	this.oBtnSend = transform:Find("btnSend").gameObject
	this.iptNickName = transform:Find("iptNickName").gameObject:GetComponent("InputField")
	this.lblContent = transform:Find("lblContent/Text").gameObject:GetComponent("Text")
end

--单击事件--
function HelloSkynetPanel.OnDestroy()
	--logWarn("OnDestroy---->>>")
end


function HelloSkynetPanel.GetChatContent()
	return this.iptChart.text
end

function HelloSkynetPanel.ClearChatText()
	this.lblContent.text = ""
end

function HelloSkynetPanel.Disable()
	this.iptNickName.readOnly = true
end

--聊天消息
function HelloSkynetPanel.AddMsg(v_name,v_msg)
	table.insert(msgs,{name = v_name, msg = v_msg})
	local msg = ""
	for i=#msgs,0,-1 do
		msg = msg..msgs[i].name..":  "..msgs[i].msg
	end
	this.lblContent.text = msg
end
