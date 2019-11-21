--[[
-- added by wsh @ 2017-12-04
-- UILoginServerView视图层
--]]

local UIServerWrapItem = require "UI.UILogin.Component.UIServerWrapItem"
local UILoginServerView = BaseClass("UILoginServerView", UIBaseView)
local base = UIBaseView

-- 各个组件路径
local back_btn_path = "parentLayout/closeBtn/closeBtn"
local recommend_btn_path = "parentLayout/ContentRoot/RecommendBtn"
local my_server_list_path = "parentLayout/ContentRoot/MyServerListBtn"
local area_scroll_content_path = "parentLayout/ContentRoot/AreaScrollRect/AreaScrollContent"
local svr_scroll_content_path = "parentLayout/ContentRoot/SvrScrollView/SvrScrollRect/SvrScrollContent"
local area_btn_text_path = "Text"
local recommend_btn_virtual_index = -1
local my_server_list_btn_virtual_index = -2

local function OnCreate(self)
	base.OnCreate(self)
	
	-- 1、按钮初始化
	self.back_btn = self:AddComponent(UIButton, back_btn_path)
	self.recommend_btn = self:AddComponent(UIToggleButton, recommend_btn_path)
	self.my_server_list_btn = self:AddComponent(UIToggleButton,my_server_list_path)
	-- 2、区域列表初始化
	-- A）不继承UIWrapComponent去实现子类，而是直接挂载组件
	-- B）添加按钮组，area_wrapgroup下所以按钮以UIToggleButton组件实例添加到按钮组
	-- C）再添加外部按钮（推荐按钮）---设置虚拟索引为-1
	self.area_wrapgroup = self:AddComponent(UIWrapGroup, area_scroll_content_path, UIWrapComponent)
	self.area_wrapgroup:Walk(function(component)
		component:AddComponent(UIText, area_btn_text_path)
	end)
	self.area_wrapgroup:AddButtonGroup(UIToggleButton)
	self.area_wrapgroup:AddButton(UIToggleButton, self.recommend_btn, recommend_btn_virtual_index)
	self.area_wrapgroup:AddButton(UIToggleButton, self.my_server_list_btn, my_server_list_btn_virtual_index)
	-- 3、服务器列表初始化
	-- A）继承UIWrapComponent去实现子类
	-- B）添加按钮组，area_wrapgroup下所以按钮以UIToggleButton组件实例添加到按钮组
	self.my_wrapgroup = self:AddComponent(UIWrapGroup3D, "parentLayout/ContentRoot/MySvrScrollView/HaveNameSvrScrollRect/MySvrScrollContent", UIServerWrapItem)
	self.svr_wrapgroup = self:AddComponent(UIWrapGroup3D, svr_scroll_content_path, UIServerWrapItem)
	self.itemObj=self:AddComponent(UIBaseContainer,"parentLayout/ContentRoot/MySvrScrollView/LastTimeSvrScrollRect/LastTimeSvrScrollContent")
	self.itemList={}
	local count=self.itemObj.transform.childCount
	for i = 0, count-1 do
		local tempItem = self.itemObj:AddComponent(UIBaseContainer,i)
		local img = tempItem:AddComponent(UIImage,"SvrBgImg/SvrStateImg",AtlasConfig.DynamicTex)
		local name = tempItem:AddComponent(UIText,"SvrNameText")
		local frame = tempItem:AddComponent(UIImage,"frame",AtlasConfig.DynamicTex)
		local icon = tempItem:AddComponent(UIImage,"frame/icon",AtlasConfig.DynamicTex)
		local lv = tempItem:AddComponent(UIText,"frame/lv/Text")
		local arenaName = tempItem:AddComponent(UIText,"serverNum")
		local obj = UIUtil.FindTrans(tempItem.transform,"Image")
		local btn = tempItem:AddComponent(UIButton,"SvrBgImg")
		table.insert(self.itemList,{obj=tempItem,stateImg = img,nameText = name,btn = btn, frameImg = frame,iconImg = icon,lvText = lv,arenaText = arenaName,newObj = obj})
	end
	self.server_list = nil
	self.selected_server_id = nil
	-- 4、按钮点击回调
	self.back_btn:SetOnClick(function()
		self.ctrl:CloseSelf()
	end)

	-- 5、区域列表回调：
	-- A）area_wrapgroup使用挂载组件的方式，必须注册刷新和按钮点击回调
	-- B）设置默认选中推荐按钮
	self.area_wrapgroup:SetOnRefresh(self.OnAreaWrapgroupRefresh, self)
	self.area_wrapgroup:SetOnClick(self.OnAreaBtngroupClick, self)
	if ServerData:GetInstance().last_time_server ~= nil and #ServerData:GetInstance().last_time_server >0 then
		self.area_wrapgroup:SetOriginal(my_server_list_btn_virtual_index)
	else
		self.area_wrapgroup:SetOriginal(recommend_btn_virtual_index)
	end
	self.myServerListObj = UIUtil.FindTrans(self.transform,"parentLayout/ContentRoot/MySvrScrollView")
	self.otherServerListObj = UIUtil.FindTrans(self.transform,"parentLayout/ContentRoot/SvrScrollView")

	self.winTitleText = self:AddComponent(UIText,"parentLayout/BgRoot/WinTitle")
	self.winTitleText:SetText(DataUtil.GetClientText(100191))
	self.myServerText = self:AddComponent(UIText,"parentLayout/ContentRoot/MyServerListBtn/Text1")
	self.myServerText:SetText(DataUtil.GetClientText(100183))
	self.recommendText = self:AddComponent(UIText,"parentLayout/ContentRoot/RecommendBtn/Text2")
	self.recommendText:SetText(DataUtil.GetClientText(100184))
	self.lastTimeText = self:AddComponent(UIText,"parentLayout/ContentRoot/MySvrScrollView/bg (1)/Text3")
	self.lastTimeText:SetText(DataUtil.GetClientText(100185))
	self.hasText = self:AddComponent(UIText,"parentLayout/ContentRoot/MySvrScrollView/bg (2)/Text4")
	self.hasText:SetText(DataUtil.GetClientText(100186))
	self.maxText = self:AddComponent(UIText,"parentLayout/Image/GameObject/Text5")
	self.maxText2 = self:AddComponent(UIText,"parentLayout/Image/GameObject (1)/Text6")
	self.maxText3 = self:AddComponent(UIText,"parentLayout/Image/GameObject (2)/Text7")
	self.maxText4 = self:AddComponent(UIText,"parentLayout/Image/GameObject (3)/Text8")
	self.maxText:SetText(DataUtil.GetClientText(100187))
	self.maxText2:SetText(DataUtil.GetClientText(100188))
	self.maxText3:SetText(DataUtil.GetClientText(100189))
	self.maxText4:SetText(DataUtil.GetClientText(100190))
end

local function OnEnable(self)
	base.OnEnable(self)
	
	-- 获取model层当前选择server
	self.selected_server_id = self.model.selected_server_id
	
	-- 各组件刷新，重置wrapgroup长度，wrapgroup、btngroup复位
	self.area_wrapgroup:SetLength(table.count(self.model.area_ids))
	self.area_wrapgroup:ResetToBeginning()
end

-- 区域列表Item复用刷新
local function OnAreaWrapgroupRefresh(self, wrap_component, real_index, check)
	-- 刷新按钮下的文字
	local text = wrap_component:GetComponent(area_btn_text_path, UIText)
	local btn_name = self.model.area_ids[real_index + 1]
	text:SetText(btn_name)
end

-- 区域按钮组点击刷新
local function OnAreaBtngroupClick(self, wrap_component, toggle_btn, virtual_index, check)
	if not check then
		return
	end

	if virtual_index == recommend_btn_virtual_index then
		self.server_list = self.model.recommend_servers
	elseif virtual_index == my_server_list_btn_virtual_index then
		--local area_id = self.model.area_ids[virtual_index + 1]
		self.server_list = self.model.my_server_list_data
	else
		self.server_list = self.model.area_servers[virtual_index + 1]
	end
	if virtual_index ~= my_server_list_btn_virtual_index then
		self.myServerListObj.gameObject:SetActive(false)
		self.otherServerListObj.gameObject:SetActive(true)
		table.sort(self.server_list,function (a,b) return a.open_time > b.open_time end)
		-- 区域列表回调：UIWrapGroup建立专门脚本UIServerItem刷新示例
		if(self.server_list ~= nil) then
			self.svr_wrapgroup:SetLength(table.count(self.server_list))
			self.svr_wrapgroup:ResetToBeginning()
		else
			self.svr_wrapgroup:SetLength(0)
		end
	else
		self.myServerListObj.gameObject:SetActive(true)
		self.otherServerListObj.gameObject:SetActive(false)
		if(self.server_list ~= nil) then
			self.my_wrapgroup:SetLength(table.count(self.server_list))
			self.my_wrapgroup:ResetToBeginning()
		else
			self.my_wrapgroup:SetLength(0)
		end
		local itemData = self.model.have_info_server_data
			if itemData ~= nil then
				for i, v in ipairs(self.itemList) do
					if itemData[i] == nil then
						v.obj.transform.gameObject:SetActive(false)
					else
						v.obj.transform.gameObject:SetActive(true)
						if itemData[i].state == 0 then
							v.stateImg:SetSpriteName("ui_t_c2_223")
						elseif itemData[i].state == 1 then
							v.stateImg:SetSpriteName("ui_t_c2_225")
						elseif itemData[i].state == 2 then
							v.stateImg:SetSpriteName("ui_t_c2_222")
						elseif itemData[i].state == 3 then
							v.stateImg:SetSpriteName("ui_t_c2_224")
						end
						v.nameText:SetText(itemData[i].name)
						v.lvText:SetText(math.floor(itemData[i].level))
						v.arenaText:SetText(itemData[i].area_name)
						v.newObj.gameObject:SetActive(itemData[i].is_new == 1)
						v.btn:SetOnClick(function ()
							if tonumber(itemData[i].state) == 4 then
								UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100056))
								return
							end
							LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
							self.ctrl:SetSelectedServer(itemData[i].server_id)
							self.ctrl:CloseSelf()
						end)
					end
				end
			end
	end

end

-- server_id转换到server_index
local function ServerID2ServerIndex(self, server_id)
	local choose_pairs = table.choose(self.server_list, function(i, v)
		return v.server_id == server_id
	end)
	if table.count(choose_pairs) == 0 then
		return nil
	else
		local keys = table.keys(choose_pairs)
		assert(table.count(keys) == 1)
		return keys[1] - 1
	end
end

-- 设置选择server
local function SetSelectedServer(self, server_index)
	self.selected_server_id = self.server_list[server_index + 1].server_id
	self.ctrl:SetSelectedServer(self.selected_server_id)
	self.ctrl:CloseSelf()
end

UILoginServerView.OnCreate = OnCreate
UILoginServerView.OnEnable = OnEnable
UILoginServerView.OnAreaWrapgroupRefresh = OnAreaWrapgroupRefresh
UILoginServerView.OnAreaBtngroupClick = OnAreaBtngroupClick
UILoginServerView.ServerID2ServerIndex = ServerID2ServerIndex
UILoginServerView.SetSelectedServer = SetSelectedServer

return UILoginServerView