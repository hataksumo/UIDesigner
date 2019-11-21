
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTMainView = BaseClass("UILYZTMainView", UIBaseView)
local base = UIBaseView

local comp_group_path="parentLayout/CompGroup";
local city_btn_path="parentLayout/cityBtn";
local point_parent_path="parentLayout/scrollRect/grid/PointParent";
local w_chat_btn_path="parentLayout/btnGroup/wChatBtn";
local clue_btn_path="parentLayout/btnGroup/clueBtn";
local story_btn_path="parentLayout/btnGroup/storyBtn";
local case_btn_path="parentLayout/btnGroup/caseBtn";
local hint_btn_path="parentLayout/rightTopBtnGroup/hintBtn";
local reward_btn_path="parentLayout/rightTopBtnGroup/rewardBtn";
local search_text_path="parentLayout/searchTip/searchText";
local search_count_path="parentLayout/tipBtnGroup/searchBtn/search/searchCount";
local recover_text_path="parentLayout/searchTip/recoverText";
local detail_btn_group_path="parentLayout/tipBtnGroup";
local event_info_btn_path="parentLayout/tipBtnGroup/infoBtn";
local event_search_btn_path="parentLayout/tipBtnGroup/searchBtn";
local event_item_btn_path="parentLayout/tipBtnGroup/itemBtn";


local startAngle=90;
local radius=750;
local pointedNum=6;
local pbCenter=Vector2.New(0,0);
local lyztPointPrbPath="UI/Prefabs/Common/lyztpoint.prefab";
--获取夹角
local function GetIntervalAngle(_pointedNum)
	return 360/_pointedNum;
end
--获取角度
local function GetAngles(_startAngle,_pointedNum)
	local angles={};
	table.insert(angles,_startAngle);
	for i = 1, _pointedNum-1 do
		table.insert(angles,_startAngle+GetIntervalAngle(_pointedNum)*i)
	end
	return angles;
end

--获取点
local function GetPoint(_ptCenter,_length,_angle)
	local pos=Vector2.New(_ptCenter.x+_length*math.cos(_angle*(math.pi/180)),_ptCenter.y+_length*math.sin(_angle*(math.pi/180)));
	--print("当前生成点的坐标是：",pos);
	return pos;
end
--获取点集合
local function GetPoints(_ptCenter,_length,_angles)
	local points={};
	for i = 1, pointedNum do
		table.insert(points,GetPoint(_ptCenter,_length,_angles[i]));
	end
	return points;
end

--获取一个图形的所有点坐标
local function GetGraphyAllPoints(self)
	self.finalPointList={};
	table.insert(self.finalPointList,pbCenter);
	table.insertto(self.finalPointList,GetPoints(pbCenter,radius,GetAngles(startAngle,pointedNum)));
	local pointList2=GetPoints(pbCenter,radius/2,GetAngles(startAngle+GetIntervalAngle(pointedNum)/2,pointedNum));
	table.insertto(self.finalPointList,pointList2);
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	local compParent=UIUtil.FindTrans(self.transform,comp_group_path);
	UIUtil.CreatCloseBtnComponent(self,compParent,function(go) self.closeComponent=go end,function()
		self.ctrl:CloseSelf();
	end,function()

	end ,"灵探",true,11);
	local cityBtn=self:AddComponent(UIButton,city_btn_path);
	cityBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTSelectCity);
	end);
	self.detailBtnGroup=UIUtil.FindTrans(self.transform,detail_btn_group_path);
	self.pointParent=UIUtil.FindTrans(self.transform,point_parent_path);
	self.wChatBtn=self:AddComponent(UIButton,w_chat_btn_path);
	self.wChatBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTMessageList)
	end)
	self.clueBtn=self:AddComponent(UIButton,clue_btn_path);
	self.clueBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTEventCollect)
	end)
	self.storyBtn=self:AddComponent(UIButton,story_btn_path);
	self.storyBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTStoryRecall);
	end)
	self.caseBtn=self:AddComponent(UIButton,case_btn_path);
	self.caseBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTCaseList);
	end)
	self.hintBtn=self:AddComponent(UIButton,hint_btn_path);
	self.hintBtn:SetOnClick(function()

	end)
	self.rewardBtn=self:AddComponent(UIButton,reward_btn_path);
	self.rewardBtn:SetOnClick(function()

	end)
	self.searchText=self:AddComponent(UIText,search_text_path);
	self.searchCountText=self:AddComponent(UIText,search_count_path);
	self.recoverText=self:AddComponent(UIText,recover_text_path);

	self.event_info_btn = self:AddComponent(UIButton,event_info_btn_path)
	self.event_info_btn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTEventInfo,self.selectEventData.pic,self.selectEventData.des);
	end)

	self.event_search_btn = self:AddComponent(UIButton,event_search_btn_path)
	self.event_search_btn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTEventSearch,self.selectEventId)
	end)
	self.eventItemBtn=self:AddComponent(UIButton,event_item_btn_path);
	self.eventItemBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UILYZTItemList)
	end);
end

--单个点的点击
local function OnSinglePointClick(self,_data,_trans)
	self.curSelectEventData=_data;
	self.detailBtnGroup.transform.gameObject:SetActive(true);
	self.detailBtnGroup.transform:SetParent(self.pointParent.transform);
	self.detailBtnGroup.transform.position=_trans.position;
	self.selectEventId=_data.id;
	if _data.event_change ~= nil then
		self.selectEventData = _data.event_change[_data.state]
	else
		self.selectEventData = {des = "策划什么都没有留下~"}
	end

	self.searchCountText:SetText(math.floor(_data.count));
end

--设置事件点
local function CreatEventPoints(self,_data)
	GameObjectPool:GetInstance():GetGameObjectAsync(lyztPointPrbPath,function (go)
		if not IsNull(go) then
			go.transform:SetParent(self.pointParent);
			go.transform.localPosition=Vector2.New(_data.pos[1],_data.pos[2]) ;
			go.transform.localScale=Vector3.one;
			go.name="point".._data.id;
			local comPath=point_parent_path.."/"..go.name
			local goCom=self:AddComponent(UIBaseContainer,comPath);
			local goBtn=goCom:AddComponent(UIButton,"");
			goBtn:SetOnClick(function()
				OnSinglePointClick(self,_data,go.transform);
			end)
			table.insert(self.pointList,{obj=go,path=lyztPointPrbPath,comPath=go.name});
		end
	end)
end
--初始化当前案件的时间点
local function InitalEventPoint(self)
	self.pointList={};
	if self.model.curCaseData then
		for i, v in pairs(self.model.curCaseData.event) do
			if v.open then
				CreatEventPoints(self,v);
			end
		end
	end
end
local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

--初始化主界面显示
local function InitLyztMainShow(self)
	self.detailBtnGroup.transform.gameObject:SetActive(false);
	self.searchText:SetText(string.format("搜查点数:%s/%s",3,self.model.initStamina));
	InitalEventPoint(self);
end

local function OnRefresh(self)
	-- 各组件刷新
	InitLyztMainShow(self);
end

--刷搜查次数
local function RefreshSearchCount(self)
	self.searchCountText:SetText(math.floor(self.curSelectEventData.count));
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_LT_MAIN_REFRESH, InitalEventPoint)
	self:AddUIListener(UIMessageNames.UI_LT_SEARCH_COUNT_REFRESH, RefreshSearchCount)
end



local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_LT_MAIN_REFRESH, InitalEventPoint)
	self:RemoveUIListener(UIMessageNames.UI_LT_SEARCH_COUNT_REFRESH, RefreshSearchCount
	)
end

--移除事件点列表
local function RemoveEventPointList(self)
	if self.pointList then
		for i, v in ipairs(self.pointList) do
			self:RemoveComponent(v.comPath,UIBaseContainer);
			GameObjectPool:GetInstance():RecycleGameObject(v.path,v.obj);
		end
	end
	self.pointList=nil;
end


-- 关闭：窗口隐藏
local function OnDisable(self)
	base.OnDisable(self)
	RemoveEventPointList(self);
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	RemoveEventPointList(self)
	self.closeComponent:RecyleSelf();
end

UILYZTMainView.OnCreate = OnCreate
UILYZTMainView.OnEnable = OnEnable
UILYZTMainView.OnDisable=OnDisable
UILYZTMainView.OnRefresh = OnRefresh
UILYZTMainView.OnAddListener = OnAddListener
UILYZTMainView.OnRemoveListener = OnRemoveListener
UILYZTMainView.OnDestroy = OnDestroy

return UILYZTMainView
