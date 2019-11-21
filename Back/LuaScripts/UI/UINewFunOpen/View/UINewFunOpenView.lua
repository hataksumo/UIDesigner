
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINewFunOpenView = BaseClass("UINewFunOpenView", UIBaseView)
local base = UIBaseView

local fun_obj_path="ParentLayout/funObj";
local fly_obj_path="ParentLayout/funObj/flyObj";
--第一种自带名字的
local icon_path="ParentLayout/funObj/flyObj/Icon";
--第二种程序字名字的
local icon2_path="ParentLayout/funObj/flyObj/Icon2";
local icon2_icon_path="ParentLayout/funObj/flyObj/Icon2/icon2";
local icon2_name_path="ParentLayout/funObj/flyObj/Icon2/funName";
local close_btn_path="mask";
local bg_obj_path="ParentLayout/funObj/Bg";
local unlock_data=DataUtil.GetData("unlock")
local guide_unlock=DataUtil.GetData("guide_unlock")
local fly_speed=0.5;

local function ShowPanel(self,_data)
	self.flyObj.transform.position=self.initPos;
	self.icon2Obj.transform.position=self.icon2Pos;
	local atlasConfig=_data.IconPathType==1 and AtlasConfig.Language or AtlasConfig.DynamicTex
	self.icon.transform.gameObject:SetActive(_data.IconPathType==1);
	self.icon2Obj.transform.gameObject:SetActive(_data.IconPathType~=1)
	self.icon:SetSpriteName(_data.Icon,false,atlasConfig);
	self.icon2Img:SetSpriteName(_data.Icon,false,atlasConfig);
	self.funNameText:SetText(_data.Title);
end

--显示功能开启
local function ShowIDObj(self,id)
	if unlock_data[id] ~= nil then
		ShowPanel(self,unlock_data[id]);
	end
end
--显示功能开启
local function ShowFunObj(self,_index)
	if self.model.funOpenData[_index]~=nil then
		local funData=self.model.funOpenData[_index].data;
		ShowPanel(self,funData);
	end
end


--飞到指定位置
local function FlyToTargetPos(self,_index)
	if self.show_id then
		if unlock_data[self.show_id] ~= nil then
			local funData=unlock_data[self.show_id]
			local targetTrans=CS.UnityEngine.GameObject.Find(funData.IconTargetPath);
			if not IsNull(targetTrans) then
				targetTrans.transform.gameObject:SetActive(true);
				local canvasGroup=UIUtil.FindComponent(targetTrans.transform,typeof(CS.UnityEngine.CanvasGroup),"");
				if funData.ButtonType==1 then
					if  not IsNull(canvasGroup) then
						canvasGroup.alpha=0;
					end
				end

				self.bgObj.gameObject:SetActive(false);
				self.isFlay=true;
				TimerManager:GetInstance():SimpleTimerArgs(1,function()
					local pos=targetTrans.transform.position;
					LuaTweener.TransMoveTo(self.flyObj.transform,self.initPos,pos,fly_speed,EaseFormula.Linear,function()
						UIManager:GetInstance():Broadcast(UIMessageNames.UI_MAIN_CTIY_NEW_FUN_OPEN,self.show_id);
						UnlockData:GetInstance():RebindFunOpenState();
						self.ctrl:CloseSelf();
						if  not IsNull(canvasGroup) then
							canvasGroup.alpha=1;
						end
						DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_LockEvent)
						UIManager:GetInstance():Broadcast(UIMessageNames.UI_SHOW_LEVEL_MAIN,self.show_id);
					end)
				end,nil,true,true);
				--LuaTweener.UIScaleTo(self.icon.transform,Vector3.one*dropItemScale,Vector3.New(0.05,0.05,0.05),0.5,EaseFormula.Linear)
			end
		end
	else
		if self.model.funOpenData[_index]~=nil then
			local funData=self.model.funOpenData[_index];
			local targetTrans=CS.UnityEngine.GameObject.Find(funData.data.IconTargetPath);
			if not IsNull(targetTrans) then
				targetTrans.transform.gameObject:SetActive(true);
				self.bgObj.gameObject:SetActive(false);
				self.isFlay=true;
				if funData.ButtonType==1 then
					local canvasGroup=UIUtil.FindComponent(targetTrans.transform,typeof(CS.UnityEngine.CanvasGroup),"");
					if  not IsNull(canvasGroup) then
						canvasGroup.alpha=0;
					end
				end
				TimerManager:GetInstance():SimpleTimerArgs(1,function()
					local pos=targetTrans.transform.position;
					LuaTweener.TransMoveTo(self.flyObj.transform,self.initPos,pos,fly_speed,EaseFormula.Linear,function()
						UIManager:GetInstance():Broadcast(UIMessageNames.UI_MAIN_CTIY_NEW_FUN_OPEN,funData.id);
						if  not IsNull(canvasGroup) then
							canvasGroup.alpha=1;
						end
						if self.showIndex<self.funOpenCount then
							self.showIndex=self.showIndex+1;

							TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
								self.bgObj.gameObject:SetActive(true);
								self.isFlay=false;
								ShowFunObj(self,self.showIndex);
							end,nil,true)
						else
							UnlockData:GetInstance():RebindFunOpenState();
							self.ctrl:CloseSelf();
							GuideCheckManager:UnlockToGuide()
							DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
						end
					end)
				end,nil,true,true);

				--LuaTweener.UIScaleTo(self.icon.transform,Vector3.one*dropItemScale,Vector3.New(0.05,0.05,0.05),0.5,EaseFormula.Linear)
			end
		end
	end
end



local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.bgObj=UIUtil.FindTrans(self.transform,bg_obj_path);
	self.funObj=UIUtil.FindTrans(self.transform,fun_obj_path);
	self.flyObj=UIUtil.FindTrans(self.transform,fly_obj_path);
	self.icon=self:AddComponent(UIImage,icon_path,AtlasConfig.DynamicTex);

	self.icon2Obj=UIUtil.FindTrans(self.transform,icon2_path);
	self.icon2Img=self:AddComponent(UIImage,icon2_icon_path,AtlasConfig.DynamicTex);
	self.funNameText=self:AddComponent(UIText,icon2_name_path);

	self.initPos=self.flyObj.transform.position;
	self.icon2Pos=self.icon2Obj.transform.position;
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		if not self.isFlay then
			if self.show_id then
				FlyToTargetPos(self,self.show_id);
			else
				FlyToTargetPos(self,self.showIndex);
			end

		end
	end)
end
local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end
local function OnRefresh(self)
	-- 各组件刷新
    LJAudioManger:GetInstance():PlayVoice("UI_023")
	self.show_id=self.model.id;
	self.bgObj.gameObject:SetActive(true);
	self.isFlay=false;
	--UIManager:GetInstance():Broadcast(UIMessageNames.UI_NEW_FUN_OPEN_GET_POS_END);
	if self.show_id then
		ShowIDObj(self,self.show_id);
	else
		self.showIndex=1;
		self.funOpenCount=#self.model.funOpenData;
		ShowFunObj(self,self.showIndex);
	end
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UINewFunOpenView.OnCreate = OnCreate
UINewFunOpenView.OnEnable = OnEnable
UINewFunOpenView.OnRefresh = OnRefresh
UINewFunOpenView.OnAddListener = OnAddListener
UINewFunOpenView.OnRemoveListener = OnRemoveListener
UINewFunOpenView.OnDestroy = OnDestroy

return UINewFunOpenView
