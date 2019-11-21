--[[
-- added by wsh @ 2017-11-30
-- UI管理系统：提供UI操作、UI层级、UI消息、UI资源加载、UI调度、UI缓存等管理
-- 注意：
-- 1、Window包括：Model、Ctrl、View、和Active状态等构成的一个整体概念
-- 2、所有带Window接口的都是操作整个窗口，如CloseWindow以后：整个窗口将不再活动
-- 3、所有带View接口的都是操作视图层展示，如CloseView以后：View、Model依然活跃，只是看不见，可看做切入了后台
-- 4、如果只是要监听数据，可以创建不带View、Ctrl的后台窗口，配置为nil，比如多窗口需要共享某控制model（配置为后台窗口）
-- 5、可将UIManager看做一个挂载在UIRoot上的不完全UI组件，但是它是Singleton，不使用多重继承，UI组件特性隐式实现
--]]


local Messenger = require "Framework.Common.Messenger"
local UIManager = BaseClass("UIManager", Singleton)

-- UIRoot路径
local UIRootPath = "UIRoot"
-- EventSystem路径
local EventSystemPath = "EventSystem"
-- UICamera路径
local UICameraPath = UIRootPath.."/UICamera"
-- 分辨率
local Resolution = Vector2.New(1920, 1080)
-- 窗口最大可使用的相对order_in_layer
local MaxOderPerWindow = 10
-- cs Tip
local UINoticeTip = CS.UINoticeTip.Instance
local IgnoreStack = {"UICommGetRewards"}
-- 构造函数
local function __init(self)
	-- 成员变量
	-- 消息中心
	self.ui_message_center = Messenger.New()
	-- 所有存活的窗体
	self.windows = {}
	-- 所有可用的层级
	self.layers = {}
	-- 保持Model
	self.keep_model = {}
	-- 窗口记录队列
	self.__window_stack = {}
	-- 是否启用记录
	self.__enable_record = true

	-- 初始化组件
	self.gameObject = CS.UnityEngine.GameObject.Find(UIRootPath)
	self.transform = self.gameObject.transform
	self.camera_go = CS.UnityEngine.GameObject.Find(UICameraPath)
	self.UICamera = self.camera_go:GetComponent(typeof(CS.UnityEngine.Camera))
	self.Resolution = Resolution
	self.MaxOderPerWindow = MaxOderPerWindow
	CS.UnityEngine.Object.DontDestroyOnLoad(self.gameObject)
	local event_system = CS.UnityEngine.GameObject.Find(EventSystemPath)
	CS.UnityEngine.Object.DontDestroyOnLoad(event_system)
	assert(not IsNull(self.transform))
	assert(not IsNull(self.UICamera))
	
	-- 初始化层级
	local layers = table.choose(Config.Debug and getmetatable(UILayers) or UILayers, function(k, v)
		return type(v) == "table" and v.OrderInLayer ~= nil and v.Name ~= nil and type(v.Name) == "string" and #v.Name > 0
	end)
	--计算宽高适配
	local percent = CS.UnityEngine.Screen.height* 16 / (9 * CS.UnityEngine.Screen.width);
	local match_with_or_heright = 1
	if percent >= 1 then
		match_with_or_heright = 0
	end
	table.walksort(layers, function(lkey, rkey)
		return layers[lkey].OrderInLayer < layers[rkey].OrderInLayer
	end, function(index, layer)
		assert(self.layers[layer.Name] == nil, "Aready exist layer : "..layer.Name)
		local go = CS.UnityEngine.GameObject(layer.Name)
		local trans = go.transform
		trans:SetParent(self.transform)
		local new_layer = UILayer.New(self, layer.Name)
		new_layer:OnCreate(layer)
		new_layer.unity_canvas_scaler.matchWidthOrHeight = match_with_or_heright
		self.layers[layer.Name] = new_layer
	end)
end

-- 注册消息
local function AddListener(self, e_type, e_listener,...)
	self.ui_message_center:AddListener(e_type, e_listener,...)
end

-- 发送消息
local function Broadcast(self, e_type, ...)
	self.ui_message_center:Broadcast(e_type, ...)
end

-- 注销消息
local function RemoveListener(self, e_type, e_listener)
	self.ui_message_center:RemoveListener(e_type, e_listener)
end

-- 获取窗口
local function GetWindow(self, ui_name, active, view_active)
	local target = self.windows[ui_name]
	if target == nil then
		return nil
	end
	if active ~= nil and target.Active ~= active then
		return nil
	end
	if view_active ~= nil and target.View:GetActive() ~= view_active then
		return nil
	end
	return target
end

-- 初始化窗口
local function InitWindow(self, ui_name, window)
	local config = UIConfig[ui_name]
	assert(config, "No window named : "..ui_name..".You should add it to UIConfig first!")
	
	local layer = self.layers[config.Layer.Name]
	assert(layer, "No layer named : "..config.Layer.Name..".You should create it first!")
	
	window.Name = ui_name
	if self.keep_model[ui_name] then
		window.Model = self.keep_model[ui_name]
	elseif config.Model then
		window.Model = config.Model.New(ui_name)
	end
	if config.Ctrl then
		window.Ctrl = config.Ctrl.New(window.Model)
	end
	if config.View then
		window.View = config.View.New(layer, window.Name, window.Model, window.Ctrl)
	end
	window.Active = false
	window.Layer = layer
	window.PrefabPath = config.PrefabPath
	
	self:Broadcast(UIMessageNames.UIFRAME_ON_WINDOW_CREATE, window)
	return window
end

local function SetBackGround(self,window)
	if IsNull(window.View) or IsNull( window.View.gameObject)then
		return
	end
	local uiGo = window.View.gameObject
	uiGo:SetActive(false)
	--local blurPanel = uiGo:GetComponentInChildren(typeof(CS.BlurPanelComponent.SetBlurPanelTex));
	--if not IsNull(blurPanel) then
	--	blurPanel:PrepareForOpen()
	--end
end
-- 激活窗口
local function ActivateWindow(self, target, ...)
	assert(target)
	assert(target.IsLoading == false, "You can only activate window after prefab locaded!")
	target.Model:Activate(...)
	self:SetBackGround(target)
	target.View:SetActive(true)
	self:Broadcast(UIMessageNames.UIFRAME_ON_WINDOW_OPEN, target)
end

-- 反激活窗口
local function Deactivate(self, target)
	if target.View:GetActive() then
		target.Model:Deactivate()
		target.View:SetActive(false)
	end
	self:Broadcast(UIMessageNames.UIFRAME_ON_WINDOW_CLOSE, target)
end

-- 打开窗口：私有，必要时准备资源
local function InnerOpenWindow(self, target, ...)
	assert(target)
	assert(target.Model)
	assert(target.Ctrl)
	assert(target.View)
	assert(target.Active == false, "You should close window before open again!")
	
	target.Active = true
	local has_view = target.View ~= UIBaseView
	local has_prefab_res = target.PrefabPath and #target.PrefabPath > 0
	local has_loaded = not IsNull(target.View.gameObject)
	local need_load = has_view and has_prefab_res and not has_loaded
	if not need_load then
		ActivateWindow(self, target, ...)
	elseif not target.IsLoading then
		target.IsLoading = true
		local params = SafePack(...)
		GameObjectPool:GetInstance():GetGameObjectAsync(target.PrefabPath, function(go)
			if IsNull(go) then
				return
			end
			--如果数值上已经摧毁  就直接回收
			if self.windows[target.Name] and target.View.holder ~= nil then
				local trans = go.transform
				trans:SetParent(target.Layer.transform)
				trans.name = target.Name

				target.IsLoading = false
				target.View:OnCreate()
				if target.Active then
					ActivateWindow(self, target, SafeUnpack(params))
				else
					if target.View:GetActive() then
						target.View:SetActive(false)
					end
				end
			else
				GameObjectPool:GetInstance():RecycleGameObject(target.PrefabPath,go)
			end
		end)
	end
end

-- 关闭窗口：私有
local function InnerCloseWindow(self, target)
	assert(target)
	assert(target.Model)
	assert(target.Ctrl)
	assert(target.View)
	if target.Active then
		Deactivate(self, target)
		target.Active = false
	end
end

-- 打开窗口：公有
local function OpenWindow(self, ui_name, ...)
	local target = self:GetWindow(ui_name)
	if not target then
		local window = UIWindow.New()
		self.windows[ui_name] = window
		target = InitWindow(self, ui_name, window)
	end
	
	-- 先关闭
	--InnerCloseWindow(self, target)


	-- 窗口记录
	local layer = UIConfig[ui_name].Layer
	if layer == UILayers.BackgroudLayer then
		local bg_index = self:GetLastBgWindowIndexInWindowStack()
		if bg_index == -1 or self.__window_stack[bg_index] ~= target.Name then
			--隐藏上一个bg
			if bg_index > 0 then
				for i = bg_index, #self.__window_stack do
					self:CloseView(self.__window_stack[i])
				end
			end
			self:AddToWindowStack(target.Name)
		else
			self:PopWindowStack()
		end
	elseif layer == UILayers.NormalLayer then
		self:AddToWindowStack(target.Name)
	end

	if target.Active then
		ActivateWindow(self,target,...)
		return
	end
	--把记录堆栈调至前排  因为有可能触发其他堆栈
	InnerOpenWindow(self, target, ...)
end


local function GuideControlWindows(self,show)
	local bg_index = self:GetLastBgWindowIndexInWindowStack()
	if bg_index > 0 then
		if show then
			for i, v in ipairs(self.guide_window) do
				local target = self:GetWindow(v)
				target.View.gameObject:SetActive(true)
			end
			self.guide_window = {}
		else
			self.guide_window = {}
			for i = bg_index, #self.__window_stack do
				local target = self:GetWindow(self.__window_stack[i])
				if target ~= nil and target.View:GetActive() then
					target.View.gameObject:SetActive(false)
					--添加到显示层
					table.insert(self.guide_window,self.__window_stack[i])
				end
			end
		end
	end
end


-- 关闭窗口：公有
local function CloseWindow(self, ui_name,no_back)
	local target = self:GetWindow(ui_name, true)
	if not target then
		return
	end
	local layer = UIConfig[ui_name].Layer
	if layer == UILayers.BackgroudLayer then
		self:RemoveFormWindowStack(target.Name)
		InnerCloseWindow(self, target)
		if not no_back then
			local bg_index = self:GetLastBgWindowIndexInWindowStack()
			if bg_index > 0 then
				self:OpenWindow(self.__window_stack[bg_index])
			end
		end
	elseif layer == UILayers.NormalLayer then
		self:RemoveFormWindowStack(target.Name)
		InnerCloseWindow(self, target)
	else
		InnerCloseWindow(self, target)
	end
end

-- 关闭层级所有窗口
local function CloseWindowByLayer(self, layer)
	for _,v in pairs(self.windows) do
		if v.Layer:GetName() == layer.Name then
			InnerCloseWindow(self, v)
		end
	end
end

-- 关闭其它层级窗口
local function CloseWindowExceptLayer(self, layer)
	for _,v in pairs(self.windows) do
		if v.Layer:GetName() ~= layer.Name then
			InnerCloseWindow(self, v)
		end
	end
end

-- 关闭所有窗口
local function CloseAllWindows(self,except)
	for _,v in pairs(self.windows) do
		if except == nil or table.keyof(except,v.Name) == nil then
			InnerCloseWindow(self, v)
		end
	end
end

-- 展示窗口
local function OpenView(self, ui_name, ...)
	local target = self:GetWindow(ui_name)
	assert(target, "Try to show a window that does not exist: "..ui_name)
	if not target.View:GetActive() then
		target.View:SetActive(true)
	end
	target.Active = true
end

-- 隐藏窗口
local function CloseView(self, ui_name)
	local target = self:GetWindow(ui_name)
	if target then
		if target.View:GetActive() then
			target.Model:Deactivate()
			target.View:SetActive(false)
		end
		target.Active = false
	else
		Logger.Log("Try to hide a window that does not exist: "..ui_name)
	end

end

local function InnerDelete(plugin)
	if plugin.__ctype == ClassType.instance then
		plugin:Delete()
	end
end

local function InnerDestroyWindow(self, ui_name, target, include_keep_model)
	self:Broadcast(UIMessageNames.UIFRAME_ON_WINDOW_DESTROY, target)
	-- 说明：一律缓存，如果要真的清理，那是清理缓存时需要管理的功能
	if not IsNull(target.View.gameObject) then
		GameObjectPool:GetInstance():RecycleGameObject(self.windows[ui_name].PrefabPath, target.View.gameObject)
	end

	if include_keep_model then
		self.keep_model[ui_name] = nil
		InnerDelete(target.Model)
	elseif not self.keep_model[ui_name] then
		InnerDelete(target.Model)
	end
	InnerDelete(target.Ctrl)
	InnerDelete(target.View)
	self.windows[ui_name] = nil
end

-- 销毁窗口
local function DestroyWindow(self, ui_name, include_keep_model)
	local target = self:GetWindow(ui_name)
	if not target then
		return
	end
	
	InnerCloseWindow(self, target)
	InnerDestroyWindow(self, ui_name, target, include_keep_model)
end

-- 销毁层级所有窗口
local function DestroyWindowByLayer(self, layer, include_keep_model)
	for k,v in pairs(self.windows) do
		if v ~=nil and v.Layer:GetName() == layer.Name then
			InnerCloseWindow(self, v)
			InnerDestroyWindow(self, k, v, include_keep_model)
		end
	end
end

-- 销毁其它层级窗口
local function DestroyWindowExceptLayer(self, layer, include_keep_model)
	for k,v in pairs(self.windows) do
		if v.Layer:GetName() ~= layer.Name then
			InnerCloseWindow(self, v)
			InnerDestroyWindow(self, k, v, include_keep_model)
		end
	end
end

local function DestroyWindowExceptNames(self,list,include_keep_model)
	for k,v in pairs(self.windows) do
		if table.keyof(list,v.Name) == nil then
			InnerCloseWindow(self, v)
			InnerDestroyWindow(self, k, v, include_keep_model)
		end
	end
end

-- 销毁所有窗口
local function DestroyAllWindow(self, include_keep_model)
	for k,v in pairs(self.windows) do
		InnerCloseWindow(self, v)
		InnerDestroyWindow(self, k, v, include_keep_model)
	end
end

-- 设置是否保持Model
local function SetKeepModel(self, ui_name, keep)
	local target = self:GetWindow(ui_name)
	assert(target, "Try to keep a model that window does not exist: "..ui_name)
	if keep then
		self.keep_model[target.Name] = target.Model
	else
		self.keep_model[target.Name] = nil
	end
end

-- 获取保持的Model
local function GetKeepModel(self, ui_name)
	return self.keep_model[ui_name]
end

-- 加入窗口记录栈
local function AddToWindowStack(self, ui_name)
	if not self.__enable_record then
		return
	end
	if table.keyof(IgnoreStack,ui_name) then
		return
	end
	--[[
	Logger.Log("添加"..ui_name..#self.__window_stack)
	if #self.__window_stack>1 then
		for i = 1, #self.__window_stack do
			Logger.Log("--"..self.__window_stack[i])
		end
	end
	--]]
	if self.__window_stack[#self.__window_stack] == ui_name then
		Logger.LogError("重复打开界面   "..ui_name)
		return
	end
	table.insert(self.__window_stack, ui_name)
	-- 保持Model
	self:SetKeepModel(ui_name, true)
end

-- 从窗口记录栈中移除
local function RemoveFormWindowStack(self, ui_name)
	if not self.__enable_record then
		return
	end
	if table.keyof(IgnoreStack,ui_name) then
		return
	end
	local top = table.count(self.__window_stack)
	local index = top
	if self.__window_stack[index] ~= ui_name then
		 index = table.indexof(self.__window_stack, ui_name)
		if not index then
			Logger.Log("堆栈中不存在界面  "..tostring(ui_name))
			return
		end
		Logger.LogError("目前移除的界面 "..tostring(ui_name).." 不位于顶层 ")
		for i = top,index+1,-1 do
			Logger.Log("目前自动移除顶层界面 "..self.__window_stack[i])
			CloseWindow(self,self.__window_stack[i],true)
		end
	end
	local ui_name = table.remove(self.__window_stack, index)
	-- 取消Model保持
	self:SetKeepModel(ui_name, false)
end

-- 获取记录栈
local function GetWindowStack(self)
	return self.__window_stack
end

-- 清空记录栈
local function ClearWindowStack(self)
	self.__window_stack = {}
	self.scene_window_stack = nil

end

-- 获取最后添加的一个背景窗口索引
local function GetLastBgWindowIndexInWindowStack(self)
	local bg_index = -1
	for i = 1, table.count(self.__window_stack) do
		local ui_name = self.__window_stack[i]
		if UIConfig[ui_name].Layer == UILayers.BackgroudLayer then
			bg_index = i
		end
	end
	return bg_index
end

-- 弹出栈
-- 注意：从上一个记录的背景UI开始弹出之后所有被记录的窗口
local function PopWindowStack(self)
	local bg_index = self:GetLastBgWindowIndexInWindowStack()
	if bg_index == -1 then
		-- 没找到背景UI
		if table.count(self.__window_stack) > 0 then
			error("There is something wrong!")
		end
		return
	end
	
	self.__enable_record = false
	local end_index = table.count(self.__window_stack)
	for i = bg_index + 1, end_index  do
		local ui_name = self.__window_stack[i]
		UIManager:GetInstance():OpenWindow(ui_name)
	end
	self.__enable_record = true
end

-- 展示Tip：单按钮
local function OpenOneButtonTip(self, title, content, btnText, callback)
	local ui_name = UIWindowNames.UINoticeTip
	local cs_func = UINoticeTip.ShowOneButtonTip
	self:OpenWindow(ui_name, cs_func, title, content, btnText, callback)
end

-- 展示Tip：双按钮
local function OpenTwoButtonTip(self, title, content, btnText1, btnText2, callback1, callback2,boo,key)
	local ui_name = UIWindowNames.UINoticeTip
	local cs_func = UINoticeTip.ShowTwoButtonTip
	self:OpenWindow(ui_name, cs_func, title, content, btnText1, btnText2, callback1, callback2,boo,key)
end

-- 展示Tip：三按钮
local function OpenThreeButtonTip(self, title, content, btnText1, btnText2, btnText3, callback1, callback2, callback3)
	local ui_name = UIWindowNames.UINoticeTip
	local cs_func = UINoticeTip.ShowThreeButtonTip
	self:OpenWindow(ui_name, cs_func, title, content, btnText1, btnText2, btnText3, callback1, callback2, callback3)
end

-- 隐藏Tip
local function CloseTip(self)
	local ui_name = UIWindowNames.UINoticeTip
	self:CloseWindow(ui_name)
end

-- 等待View层窗口创建完毕（资源加载完毕）：用于协程
local function WaitForViewCreated(self, ui_name)
	local window = self:GetWindow(ui_name, true)
	assert(window ~= nil, "Try to wait for a not opened window : "..ui_name)
	if IsNull(window.View.gameObject) then
		window.View:WaitForCreated()
	end
	return window
end

-- 等待Tip响应：用于协程，返回点击序号，-1表示无响应且窗口被异常关闭
local function WaitForTipResponse(self)
	local ui_name = UIWindowNames.UINoticeTip
	local window = self:WaitForViewCreated(ui_name)
	return window.Model:WaitForResponse()
end
-- 获取层级
local function GetLayer(self,layer)
	return self.layers[layer]
end

-- 析构函数
local function __delete(self)
	self.ui_message_center = nil
	self.windows = nil
	self.layers = nil
	self.keep_model = nil
end

local function LeaveSceneSave(self,scene_name)
	if self.scene_window_stack == nil then
		self.scene_window_stack = {}
	end
	self.scene_window_stack[scene_name] = GetLastBgWindowIndexInWindowStack(self)
end

local function OpenLastLeaveSceneWindow(self,scene_name)
	if self.scene_window_stack ~= nil and self.scene_window_stack[scene_name] ~= nil then
		local index = self.scene_window_stack[scene_name]
		if index > 0 then
			UIManager:GetInstance():OpenWindow(self.__window_stack[index])
			return true
		end
	end
	return false
end

local function CheckWindowTop(self,name)
	if GetWindow(self,name,true,true) ~= nil then
		return self.__window_stack[#self.__window_stack] == name
	else
		return false
	end
end

UIManager.__init = __init
UIManager.OpenLastLeaveSceneWindow = OpenLastLeaveSceneWindow
UIManager.LeaveSceneSave = LeaveSceneSave
UIManager.AddListener = AddListener
UIManager.Broadcast = Broadcast
UIManager.RemoveListener = RemoveListener
UIManager.GetWindow = GetWindow
UIManager.OpenWindow = OpenWindow
UIManager.CloseWindow = CloseWindow
UIManager.CloseWindowByLayer = CloseWindowByLayer
UIManager.CloseWindowExceptLayer = CloseWindowExceptLayer
UIManager.CloseAllWindows = CloseAllWindows
UIManager.OpenView = OpenView
UIManager.CloseView = CloseView
UIManager.DestroyWindow = DestroyWindow
UIManager.DestroyWindowByLayer = DestroyWindowByLayer
UIManager.DestroyWindowExceptLayer = DestroyWindowExceptLayer
UIManager.DestroyAllWindow = DestroyAllWindow
UIManager.SetKeepModel = SetKeepModel
UIManager.GetKeepModel = GetKeepModel
UIManager.AddToWindowStack = AddToWindowStack
UIManager.RemoveFormWindowStack = RemoveFormWindowStack
UIManager.GetLastBgWindowIndexInWindowStack = GetLastBgWindowIndexInWindowStack
UIManager.GetWindowStack = GetWindowStack
UIManager.ClearWindowStack = ClearWindowStack
UIManager.PopWindowStack = PopWindowStack
UIManager.DestroyWindowExceptNames = DestroyWindowExceptNames
UIManager.OpenOneButtonTip = OpenOneButtonTip
UIManager.GuideControlWindows = GuideControlWindows
UIManager.OpenTwoButtonTip = OpenTwoButtonTip
UIManager.OpenThreeButtonTip = OpenThreeButtonTip
UIManager.CloseTip = CloseTip
UIManager.WaitForViewCreated = WaitForViewCreated
UIManager.WaitForTipResponse = WaitForTipResponse
UIManager.GetLayer = GetLayer
UIManager.__delete = __delete
UIManager.SetBackGround = SetBackGround
UIManager.CheckWindowTop = CheckWindowTop
return UIManager;