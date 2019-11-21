--[[
-- added by wsh @ 2017-12-01
-- UILogin视图层
-- 注意：
-- 1、成员变量最好预先在__init函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILoginView = BaseClass("UILoginView", UIBaseView)
local base = UIBaseView

-- 各个组件路径
local server_text_path = "ContentRootEnd/SvrRoot/SvrSelectBtn/SvrText"
local account_input_path = "ContentRootBefore/AccountRoot/AccountInput"
local password_input_path = "ContentRootBefore/PasswordRoot/PasswordInput"
local server_select_btn_path = "ContentRootEnd/SvrRoot/SvrSelectBtn"
local login_btn_path = "ContentRootBefore/LoginBtn"
local notice_btn_path = "NoticeBtn"
local app_version_text_path = "BgRoot/AppVersionText"
local res_version_text_path = "BgRoot/ResVersionText"


local function OnLoginClick (self)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	local name = self.account_input:GetText()
	local psd = self.password_input:GetText()
	self.ctrl:GetServerList(name,psd)
end

local function ClickOnLoginBtn(self)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	self.notice_btn.gameObject:SetActive(false)
    --local name="d0292fe134e568806f075d5507712f8f560b16bb8c9fb5665d83c8723262a035"
	local name = self.model.account
	local password = self.model.password
	self.ctrl:LoginServer(name, password)
end

local function GetServerStateSpriteName(state)
	-- 服务器状态：0-良好、1-普通、2-爆满、3-未开服
	local sprite_name = "ui_t_c2_222"
	if state == 1 then
		sprite_name = "ui_t_c2_223"
	elseif state == 2 then
		sprite_name = "ui_t_c2_224"
	elseif state == 3 then
		sprite_name = "ui_t_c2_225"
	elseif state == 4 then
		sprite_name = "ui_t_c2_222"
	end
	return sprite_name
end
local function ChannelLogin(self,account)
	if IsNull(account) then
		self.login_before.gameObject:SetActive(true)
		self.login_of_end.gameObject:SetActive(false)
	elseif account.loginResult == 0 then
		Logger.Log("SDK手动登录_____________openId="..account.openId.."SDK手动登录_____________sessionId"..account.sessionId)
		UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100199))
		ClientData:GetInstance():SetSdkPlayerId(account.playerId);
		self.ctrl:NumberRegister(account.openId,account.sessionId)
	end
end

local function OnCreate(self)
	base.OnCreate(self)

	-- 初始化各个组件
	self.Login_Img=self:AddComponent(UIImage,"BgRoot/NameImg",AtlasConfig.Language)
	self.Login_Img:SetSpriteName("ui_t_c2_218")
	self.LogGameImg=self:AddComponent(UIImage,"ContentRootEnd/UserRoot/CancelBtn",AtlasConfig.Language)
	self.LogGameImg:SetSpriteName("ui_t_c2_220")


	self.app_version_text = self:AddComponent(UIText, app_version_text_path)
	self.res_version_text = self:AddComponent(UIText, res_version_text_path)
	self.server_text = self:AddComponent(UIText, server_text_path)
	self.server_img = self:AddComponent(UIImage,"ContentRootEnd/SvrRoot/SvrSelectBtn/Image",AtlasConfig.DynamicTex, GetServerStateSpriteName())
	self.account_input = self:AddComponent(UIInput, account_input_path)
	self.password_input = self:AddComponent(UIInput, password_input_path)
	self.server_select_btn = self:AddComponent(UIButton, server_select_btn_path)
	self.login_btn = self:AddComponent(UIButton, login_btn_path)
	self.notice_btn=self:AddComponent(UIButton,notice_btn_path)
	-- 设置点击回调
	-- 使用方式一：闭包绑定
	self.server_select_btn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		if self.model.isEditor then
			self.ctrl:ChooseServer()
		else
			if ServerData:GetInstance().default_server_list ~= nil and #ServerData:GetInstance().default_server_list > 0 then
				self.ctrl:ChooseServer()
			else
				Logger.Log("开始手动登录~~~~~~~~~~~")
				local callback = BindCallback(self, ChannelLogin)
				GameChannelMgr:GetInstance():ShowLoginPanel(false,callback)
			end
		end
	end)
	-- 使用方式二：私有函数、成员函数绑定
	self.login_btn:SetOnClick(self,OnLoginClick)
	self.notice_btn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		UIManager:GetInstance():OpenWindow(UIWindowNames.UINotice)
	end)
	self.login_before = UIUtil.FindTrans(self.transform,"ContentRootBefore")
	self.login_of_end = UIUtil.FindTrans(self.transform,"ContentRootEnd")
	self.login_of_register = UIUtil.FindTrans(self.transform,"RegisterPanel")
	self.login_of_tips = UIUtil.FindTrans(self.transform,"TipsPanel")
	self.register_btn = self:AddComponent(UIButton,"ContentRootBefore/registerBtn")
	self.register_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.login_of_register.gameObject:SetActive(true)
	end)
	self.register_account_input = self:AddComponent(UIInput, "RegisterPanel/RegisterAccountRoot/RegisterAccountInput")
	self.register_password_input = self:AddComponent(UIInput, "RegisterPanel/RegisterPasswordRoot/RegisterPasswordInput")
	self.register_again_account_input = self:AddComponent(UIInput, "RegisterPanel/AgainRegisterPasswordRoot/AgainRegisterPasswordInput")
	self.register_CDK_input = self:AddComponent(UIInput, "RegisterPanel/AgainCDKRoot/AgainCDKInput")
	self.submit_btn = self:AddComponent(UIButton,"RegisterPanel/SubmitBtn")
	self.submit_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		local registerName = self.register_account_input:GetText()
		local registerPsd = self.register_password_input:GetText()
		local registerAgainPsd = self.register_again_account_input:GetText()
		local CDK =self.register_CDK_input:GetText()
		local num = DataUtil.GetStringLength(registerName)
		local numPsd = DataUtil.GetStringLength(registerPsd)
		if registerName == "" or registerPsd == "" or registerAgainPsd == "" or CDK == "" then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100052))
			return
		end
		if num < 2 or num > 18 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100053))
			return
		end
		if numPsd < 6 or numPsd > 20 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100054))
			return
		end
		if registerPsd == registerAgainPsd then
			self.ctrl:NumberRegister(registerName,registerPsd,CDK)
		else
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100055))
		end
	end)
	self.register_close_btn = self:AddComponent(UIButton,"RegisterPanel/BgImage/CloseRegisterBtn")
	self.register_close_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.login_of_register.gameObject:SetActive(false)
	end)
	self.user_text = self:AddComponent(UIText,"ContentRootEnd/UserRoot/UserSelect/UserText")
	self.user_cancel_btn = self:AddComponent(UIButton,"ContentRootEnd/UserRoot/CancelBtn")
	self.user_cancel_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.login_of_tips.gameObject:SetActive(true)
	end)
	self.start_game_btn = self:AddComponent(UIButton,"ContentRootEnd/StartGameBtn")
	self.start_game_btn_text = self:AddComponent(UIText,"ContentRootEnd/StartGameBtn/Text3")
	self.start_game_btn_text:SetText(DataUtil.GetClientText(100192))
	self.start_game_btn:SetOnClick(self, ClickOnLoginBtn)
	self.tip_info_text = self:AddComponent(UIText,"TipsPanel/tip_info")
	self.tip_info_text:SetText(DataUtil.GetClientText(100196))
	self.tip_enter_btn = self:AddComponent(UIButton,"TipsPanel/TipEnterBtn")
	self.tip_enter_btn_text = self:AddComponent(UIText,"TipsPanel/TipEnterBtn/Text1")
	self.tip_enter_btn_text:SetText(DataUtil.GetClientText(100197))
	self.tip_enter_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.login_of_tips.gameObject:SetActive(false)
		if self.model.isEditor then
			self.login_of_end.gameObject:SetActive(false)
			self.login_before.gameObject:SetActive(true)
		else
			Logger.Log("begin logout");
			GameChannelMgr:GetInstance():LogOut(
					function(flag)
						local flagnumber = tonumber(flag)
						if flagnumber == 0  then
							Logger.Log("Logout: success");
							self.user_cancel_btn.gameObject:SetActive(false)
							self.start_game_btn.gameObject:SetActive(false)
							ServerData:GetInstance().default_server_list = nil
							self.server_text:SetText("")
							Logger.Log("重新Login打开成功")
							local callback = BindCallback(self, ChannelLogin)
							GameChannelMgr:GetInstance():ShowLoginPanel(false,callback)
						end
					end)
		end
	end)
	self.tip_cancel_btn = self:AddComponent(UIButton,"TipsPanel/TipCanelBtn/")
	self.tip_cancel_btn_text = self:AddComponent(UIText,"TipsPanel/TipCanelBtn/Text2")
	self.tip_cancel_btn_text:SetText(DataUtil.GetClientText(100198))
	self.tip_cancel_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.login_of_tips.gameObject:SetActive(false)
	end)
	self.gameInfoText = self:AddComponent(UIText,"BgRoot/GameInfoText")
	self.gameInfoText:SetText(DataUtil.GetClientText(100193))

	self.login_of_tips.gameObject:SetActive(false)
	self.login_of_end.gameObject:SetActive(false)
	self.login_of_register.gameObject:SetActive(false)
	self.login_before.gameObject:SetActive(false)
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
    self.quickBtn = self:AddComponent(UIButton,"RegisterPanel/quickBtn")
    if self.model.isEditor then
		self.quickBtn.gameObject:SetActive(true)
		self.quickBtn:SetOnClick(function ()
			self.ctrl:SendQuickLogin(self.register_account_input:GetText())
		end)
	else
		self.quickBtn.gameObject:SetActive(false)
	end
	local str = CS.UnityEngine.PlayerPrefs.GetString("account", "")
	if self.model.isEditor then
		if str ~= nil and str == self.model.account then
			self.login_before.gameObject:SetActive(true)
			self.user_text:SetText(self.model.account)
			self.ctrl:GetServerList(self.model.account,self.model.password)
		else
			self.login_before.gameObject:SetActive(true)
			self.login_of_end.gameObject:SetActive(false)
		end
	else
		self.login_before.gameObject:SetActive(false)
		self.login_of_end.gameObject:SetActive(true)
		self.user_cancel_btn.gameObject:SetActive(false)
		self.start_game_btn.gameObject:SetActive(false)
		ServerData:GetInstance().default_server_list = nil
		self.server_text:SetText("")
		local callback = BindCallback(self, ChannelLogin)
		GameChannelMgr:GetInstance():AutoLogin(callback)
	end
end


local function OnRefreshServerInfo(self)
	self.server_text:SetText(self.model.server_name)
	self.server_img:SetSpriteName(GetServerStateSpriteName(tonumber(self.model.server_state)))
end

local function OnRefresh(self)
	-- 各组件刷新
	self.app_version_text:SetText(DataUtil.GetClientText(100194)..self.model.client_app_ver)
	self.res_version_text:SetText(DataUtil.GetClientText(100195)..self.model.client_res_ver)
	self.account_input:SetText(self.model.account)
	self.password_input:SetText(self.model.password)
	OnRefreshServerInfo(self)
end


---注册成功后的回调
local function OnRegisterSuccess(self)
	self.user_text:SetText(self.model.account)
	self.login_of_register.gameObject:SetActive(false)
	self.login_before.gameObject:SetActive(false)
	self.login_of_end.gameObject:SetActive(true)
	self.user_cancel_btn.gameObject:SetActive(true)
	self.start_game_btn.gameObject:SetActive(true)
end

---登陆成功后的回调
local function OnServerList(self,name)
	self.login_before.gameObject:SetActive(false)
	self.login_of_end.gameObject:SetActive(true)
	self.user_text:SetText(name)
	--self.notice_btn.gameObject:SetActive(false)
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UILOGIN_ON_SELECTED_SVR_CHG, OnRefreshServerInfo)
	self:AddUIListener(UIMessageNames.UI_GET_REGISTER_STATE_DATA, OnRegisterSuccess)
	self:AddUIListener(UIMessageNames.UI_GET_SERVER_LIST_DATA, OnServerList)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UILOGIN_ON_SELECTED_SVR_CHG, OnRefreshServerInfo)
	self:RemoveUIListener(UIMessageNames.UI_GET_REGISTER_STATE_DATA, OnRegisterSuccess)
	self:RemoveUIListener(UIMessageNames.UI_GET_SERVER_LIST_DATA, OnServerList)
end

local function OnDestroy(self)
	self.app_version_text = nil
	self.res_version_text = nil
	self.server_text = nil
	self.account_input = nil
	self.password_input = nil
	self.server_select_btn = nil
	self.login_btn = nil
end

UILoginView.OnCreate = OnCreate
UILoginView.OnEnable = OnEnable
UILoginView.OnRefresh = OnRefresh
UILoginView.OnAddListener = OnAddListener
UILoginView.OnRemoveListener = OnRemoveListener
UILoginView.OnDestroy = OnDestroy
UILoginView.ChannelLogin = ChannelLogin
return UILoginView