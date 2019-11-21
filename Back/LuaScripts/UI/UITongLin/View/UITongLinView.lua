
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UITongLinWrapItem = require "UI.UITongLin.Component.UITongLinWrapItem"
local UITongLinView = BaseClass("UITongLinView", UIBaseView)
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");
local base = UIBaseView
--local allSkillDescription = DataUtil.GetData("skill_effect")
local AllSkillData = DataUtil.GetData("skill")
--local long_tap_check = false
--local cur_select_skill_time=0
--local  press_pos

local function FindCardInfo(self,DataName,IDs)
	local data= DataUtil.GetData(DataName)
	return data[IDs]
end
local function OnCreate(self)
	base.OnCreate(self)
	self.anim=self.transform:GetComponent(typeof(CS.UnityEngine.Animator))
	self.TitleBar=UIUtil.FindTrans(self.transform,"TopLeft")
	UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
		if self.one_in then
			self.one_in=false
			LJAudioManger:GetInstance():PlayVoice("UI_Brush_03")
			self:CloseAni(true)
		end
	end,function ()
		if self.one_in then
			self.one_in=false
			LJAudioManger:GetInstance():PlayVoice("UI_Brush_03")
			self:CloseAni()
		end
	end ,"通灵",true,9,true);

	self.left_btn=self:AddComponent(UIButton,"ScrollView/Left_Btn")
	self.left_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.movepage=self.movepage-1
		self:OnRefresh()
	end)
	self.right_btn=self:AddComponent(UIButton,"ScrollView/Right_Btn")
	self.right_btn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.movepage=self.movepage+1
		self:OnRefresh()
	end)
	--右上
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"RightUp");
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UITongLin,ResourceBarType.TONGLING,self);

	--Tip
	--[[
	self.skill_tip_obj=  UIUtil.FindTrans(self.transform,"skilltip_bg")
	self.skill_tip_img = self:AddComponent(UIImage, "skilltip_bg/SkillIcon/Skill_Bg/Skill_Icon",AtlasConfig.DynamicTex)
	self.skill_tip_frame_img = self:AddComponent(UIImage, "skilltip_bg/SkillIcon/Skill_Bg",AtlasConfig.DynamicTex)
	self.firetype_img = self:AddComponent(UIImage, "skilltip_bg/SkillIcon/Skill_PassiveSkill",AtlasConfig.DynamicTex)
	self.CryObj = UIUtil.FindTrans(self.transform,"skilltip_bg/SkillIcon/Skill_Crystal")
	self.Cry_Img =  self:AddComponent(UIImage,"skilltip_bg/SkillIcon/Skill_Crystal/Skill_Cost_Icon",AtlasConfig.DynamicTex)
	self.Cry_Num =  self:AddComponent(UIText,"skilltip_bg/SkillIcon/Skill_Crystal/Skill_Cost_Num")
	self.skill_tipname_text = self:AddComponent(UIText, "skilltip_bg/skill_name")
	self.skill_tiplv_text = self:AddComponent(UIText, "skilltip_bg/skill_lv")
	self.skill_tipdes1_text = self:AddComponent(UIText, "skilltip_bg/skill_des")
	local layer =  UIManager:GetInstance():GetLayer(UILayers.BackgroudLayer.Name)
	self.half_width =  UIUtil.FindComponent(layer.transform,typeof(CS.UnityEngine.RectTransform)).sizeDelta.x/2
	self.skill_tip_pos=UIUtil.FindComponent(self.skill_tip_obj,typeof(CS.UnityEngine.RectTransform))
	self.zhcoef=self.half_width/self.screenWidth
	--]]
	--中间
	--self.tonglin_scroll_content=self:AddComponent(UIWrapGroup3D,"ScrollView/ScrollRect/Content",UITongLinWrapItem)

	self.UITongLinWrap={}
	self.wrapitemParent=self:AddComponent(UIBaseComponent,"ScrollView/ScrollRect/Content")
	local count=self.wrapitemParent.transform.childCount
	for i = 0, count-1 do
		local son=self.wrapitemParent.transform:GetChild(i).gameObject
		--初始化一个格子并进行创建
		self.UITongLinWrap[i+1]=UITongLinWrapItem.New(self,son)
		self.UITongLinWrap[i+1]:OnCreate()
	end
end

local function SetRightAndLeftBtn(self)
	--设置左右键盘  可见不可见
	if self.MaxIndex==1 then
	self.left_btn.gameObject:SetActive(false)
	self.right_btn.gameObject:SetActive(false)
     elseif self.movepage+1>=self.MaxIndex  then
		self.left_btn.gameObject:SetActive(true)
		self.right_btn.gameObject:SetActive(false)
	elseif self.movepage==0 and  self.movepage+1<self.MaxIndex then
		self.left_btn.gameObject:SetActive(false)
		self.right_btn.gameObject:SetActive(true)
	else
		self.left_btn.gameObject:SetActive(true)
		self.right_btn.gameObject:SetActive(true)
	end
end
local function CloseAni(self,bool)
	self.anim:Play( "ef_ui_UITongLin_out",0,0)
	local animInfo = self.anim:GetCurrentAnimatorStateInfo(0)
	coroutine.start(function()
		local until_func = function()
			if self.anim.isActiveAndEnabled then
				animInfo = self.anim:GetCurrentAnimatorStateInfo(0)
				if animInfo:IsName("ef_ui_UITongLin_out") then
					if animInfo.normalizedTime >= 1.0 then
						return true
					else
						return false
					end
				else
					return true
				end
			else
				return false
			end
		end
		coroutine.waituntil(until_func)
		if bool then
			self.ctrl:CloseSelf()
		else
			UIUtil.BackHomeMain()
		end
	end)
end
local function OnEnable(self)
	base.OnEnable(self)
	--self.skill_tip_obj.gameObject:SetActive(false)
	self.movepage=0
	self.one_in=true
	LJAudioManger:GetInstance():PlayVoice("UI_Brush_05")
	self:OnRefresh()
end
-- Update测试
--[[
local function Update(self)
	if self.long_tap_check==nil or self.cur_select_skill_time==nil then
		return
	end
	if  self.long_tap_check and self.cur_select_skill_time<30 then
		self.cur_select_skill_time=self.cur_select_skill_time+1;
	end
    if self.long_tap_check and self.cur_select_skill_time>=30 then
		--打开 界面
		self.long_tap_check=false;
		if self.skill_info then
			--打开界面设置位置和内容

			self.mouse_down_pos=self.mouse_down_pos*self.zhcoef
			if self.mouse_down_pos<=self.half_width then
				--按下的位置 小于屏幕一半
				self.skill_tip_pos.anchoredPosition=Vector3.New(self.view.mouse_down_pos+100-self.half_width+280,0,0)
			else
				--按下的位置 大于屏幕一半
				self.skill_tip_pos.anchoredPosition=Vector3.New(self.view.mouse_down_pos-self.half_width-100-280,0,0)
			end

			--self.skill_tip_obj.gameObject:SetActive(true)
			--self.view.mouse_down_pos
			if self.skill_info.ShowFireType==2 or self.skill_info.ShowFireType==3then
				self.firetype_img.gameObject:SetActive(true)
				self.firetype_img:SetSpriteName(SpriteDefine:GetSkillFireByFireType(self.skill_info.ShowFireType))
			else
				self.firetype_img.gameObject:SetActive(false)
			end
			if self.card_type and self.skill_info.CrystalCount>0 and self.skill_info.FireType~=2 then
				self.CryObj.gameObject:SetActive(true)
				self.Cry_Img:SetSpriteName(SpriteDefine:GetCrystalIconByType(self.card_type))
				self.Cry_Num:SetText(math.floor(self.skill_info.CrystalCount))

			else
				self.CryObj.gameObject:SetActive(false)
			end
			self.skill_tip_img:SetSpriteName(self.skill_info.Icon)
			self.skill_tipname_text:SetText(self.skill_info.Name)
			--是否还有一个自己等级数据
			if self.skill_info.ShowFireType==1 then
				self.skill_tiplv_text:SetText("主动技能")
			elseif self.skill_info.ShowFireType==2 then
				self.skill_tiplv_text:SetText("被动技能")
			elseif self.skill_info.ShowFireType==3 then
				self.skill_tiplv_text:SetText("连击技能")
			else
				self.skill_tiplv_text:SetText("改")
			end
			local skilldata= AllSkillData[self.skill_info.ShowId]
			local skillDes=skilldata.lvs[1].Description

			self.skill_tipdes1_text:SetText(skillDes)
		end

	elseif (not self.long_tap_check) and self.cur_select_skill_time<30 then
		--关闭Tips
		self.skill_tip_obj.gameObject:SetActive(false)
		self.skill_info=nil
		self.card_type=nil
		self.cur_select_skill_time=30
    end
end
--]]
local function OnRefresh(self)
	-- 各组件刷新
-- TODO 已进入界面设置动画和数据   数据来自M层
	--self.area_wrapgroup:SetLength(table.count(self.model.area_ids))
	--self.area_wrapgroup:ResetToBeginning()
    self.item_data_list=self.model.tonglingList
	local L1, L2 =math.modf(#self.item_data_list/3)
	if L2>0 then
		self.MaxIndex=L1+1
	else
		self.MaxIndex=L1
	end
	self:SetRightAndLeftBtn()
	if self.item_data_list~=nil then
		for i = 1, 3 do
			if self.item_data_list[self.movepage*3+i]~=nil then
				if not self.UITongLinWrap[i].gameObject.activeInHierarchy then
					self.UITongLinWrap[i].gameObject:SetActive(true)
				end
				self.UITongLinWrap[i]:OnRefresh(self.movepage*3-1+i)
			else
				if self.UITongLinWrap[i].gameObject.activeInHierarchy then
					self.UITongLinWrap[i].gameObject:SetActive(false)
				end
			end
        end
		--self.tonglin_scroll_content:SetLength(table.count(self.item_data_list))
		--self.tonglin_scroll_content:SetGridPositionByIndex(0)
	else
		--self.tonglin_scroll_content:SetLength(0)
	end
end
local function UpdateTongLingData(self)
	OnRefresh(self)
end
local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_TONGLING_DATA_UPDATA, UpdateTongLingData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_TONGLING_DATA_UPDATA, UpdateTongLingData)

end

local function OnDestroy(self)
	-- 销毁
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UITongLin);
	if self.closeComponent~=nil or not IsNull(self.closeComponent) then
		self.closeComponent:RecyleSelf();
	end
	base.OnDestroy(self)
end

UITongLinView.FindCardInfo = FindCardInfo
UITongLinView.OnCreate = OnCreate
UITongLinView.OnEnable = OnEnable
UITongLinView.OnRefresh = OnRefresh
UITongLinView.OnAddListener = OnAddListener
UITongLinView.OnRemoveListener = OnRemoveListener
UITongLinView.OnDestroy = OnDestroy
UITongLinView.SetRightAndLeftBtn = SetRightAndLeftBtn
UITongLinView.CloseAni = CloseAni
--UITongLinView.Update = Update
return UITongLinView
