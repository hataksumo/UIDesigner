
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UIBreakWrapItem = require "UI.UISkillBreakThrough.Component.UIBreakWrapItem"
local UISkillBreakThroughView = BaseClass("UISkillBreakThroughView", UIBaseView)
local base = UIBaseView
local select_num = 0
local select_item_list = {}
local effectTargetPos_path="SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Slider_Parent/Item_Q/scrollbar02/Handle/effectTargetPos";
local light_effect_path="SkillBreak_Panel/effectPoint/FX_ui_pointlight";
local effectParent_path="SkillBreak_Panel";
local break_data=DataUtil.GetData("skill_break")
--播放特效
local function PlayEffect(_effectTrans)
	_effectTrans.gameObject:SetActive(true);
	local effectList=_effectTrans.transform:GetComponentsInChildren(typeof(CS.UnityEngine.ParticleSystem));
	for i = 0, effectList.Length-1 do
		effectList[i]:Play();
	end
end
--特效移动
local function EffectMove(self,_pos,_callback)
	local effectPath="Effect/Prefab/UI/FX_ui_A_to_B_trail.prefab";
	GameObjectPool:GetInstance():GetGameObjectAsync(effectPath,function (go)
		if not IsNull(go) then
			go.transform:SetParent(self.effectParent.transform);
			local targetPos=self.effectTargetPosObj.transform.position;
			LuaTweener.TransMoveTo(go.transform,_pos,targetPos,0.6,EaseFormula.InOutCubic,function()
				GameObjectPool:GetInstance():RecycleGameObject(effectPath,go);
				_callback();
				self.lightEffect.transform.position=targetPos;
				PlayEffect(self.lightEffect);

			end)
		end
	end)

end


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.effectParent=UIUtil.FindTrans(self.transform,effectParent_path);
	self.effectTargetPosObj=UIUtil.FindTrans(self.transform,effectTargetPos_path);
	self.maskUIButton = self:AddComponent(UIButton, "mask_UIButton")
	self.lightEffect=UIUtil.FindTrans(self.transform,light_effect_path);
    
	--self.titleNameUIText = self:AddComponent(UIText, "SkillBreak_Panel/panel/top/tilteImage/titleName_UIText")
    
	self.exitUIButton = self:AddComponent(UIButton, "SkillBreak_Panel/panel/Close_Des_Btn")
	self.exitUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.oneKeySelectUIButton = self:AddComponent(UIButton, "SkillBreak_Panel/left/OneKeySelect_UIButton")
	self.oneKeySelectUIButton:SetOnClick(function ()
		if not self.breakData.cost_exp then
			return
		end
		if select_num >= self.breakData.needExp then
			UISpecial:GetInstance():UITipText("所选已达上限！")
			return
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		local isHaveNum = true
		self.selectDic={}
		select_num=0
		for _, v in pairs(self.breakData.itemList) do
			if v.have_num > 0 then
				v.is_show_del = true
				isHaveNum = false
				if v.have_num*v.exp+select_num >= self.breakData.needExp then
					local num_take = 0
					num_take = Mathf.Floor((self.breakData.needExp-select_num)/v.exp)
					if num_take*v.exp+select_num<self.breakData.needExp then
						num_take=num_take+1
					end
					self.selectDic[v.id] = num_take
					--v.have_num = v.have_num - num_take
					select_num =select_num+ num_take*v.exp
					break
				else
					select_num =  select_num+v.have_num*v.exp
					self.selectDic[v.id] = v.have_num
				end
			end
		end
		if isHaveNum then
			UISpecial:GetInstance():UITipText("所需物品空空如也~")
			return
		end
		self.score02UIText:SetText(select_num.."/"..self.breakData.needExp)
		self.only_item_num_slider:SetValue(select_num / self.breakData.needExp)
		SkillData:GetInstance().select_skills = select_num
		self.item_scroll_rect:WrapContent(true)
	end)
	self.oneKeySelectUIText = self:AddComponent(UIText, "SkillBreak_Panel/left/OneKeySelect_UIButton/OneKeySelect_UIText")
    
	self.operationTipsUIText = self:AddComponent(UIText, "SkillBreak_Panel/left/OperationTips_UIText")

	self.breakThroughUIButton = self:AddComponent(UIButton, "SkillBreak_Panel/right/BreakThrough_UIButton")
	self.breakThroughUIButton:SetOnClick(function ()
		if select_num < self.breakData.needExp then
			UISpecial:GetInstance():UITipText("所需数量不够！")
			return
		end
		if not self.cost_sp_full then
			UISpecial:GetInstance():UITipText("所需数量不够！")
			return
		end
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:SendSkillBreakThrough(self.breakData,self.selectDic)
	end)

	self.nameTipsUIText = self:AddComponent(UIText, "SkillBreak_Panel/right/TextBg/nameBg/NameTips_UIText")

	self.skillUIImage = self:AddComponent(UIImage, "SkillBreak_Panel/right/TextBg/SkillIcon_Before/Skill_UIImage",AtlasConfig.DynamicTex)

	self.skill_IconUIImage = self:AddComponent(UIImage, "SkillBreak_Panel/right/TextBg/SkillIcon_Before/Skill_UIImage/Skill_Icon_UIImage",AtlasConfig.DynamicTex)

	self.skill_after_icon = self:AddComponent(UIImage,"SkillBreak_Panel/right/TextBg/SkillIcon_After/Skill_After_Bg_UIImage/Skill_Icon_After",AtlasConfig.DynamicTex)
	self.skill_LevelUIText = self:AddComponent(UIText, "SkillBreak_Panel/right/TextBg/SkillIcon_Before/Skill_Level_UIText")

	self.skill_Cost_IconUIImage = self:AddComponent(UIImage, "SkillBreak_Panel/right/TextBg/SkillIcon_Before/Skill_Crystal/Skill_Cost_Icon_UIImage",AtlasConfig.DynamicTex)
    
	self.skill_Cost_NumUIImage = self:AddComponent(UIText, "SkillBreak_Panel/right/TextBg/SkillIcon_Before/Skill_Crystal/Skill_Cost_Num_UIImage")
    
	self.skillIcon_BeforeUIText = self:AddComponent(UIText, "SkillBreak_Panel/right/TextBg/SkillIcon_Before/SkillIcon_Before_UIText")

	self.skill_After_BgUIImage = self:AddComponent(UIImage, "SkillBreak_Panel/right/TextBg/SkillIcon_After/Skill_After_Bg_UIImage",AtlasConfig.DynamicTex)

	self.skill_Afterl_LevelUIText = self:AddComponent(UIText, "SkillBreak_Panel/right/TextBg/SkillIcon_After/Skill_Afterl_Level_UIText")

	self.skill_After_Cost_IconUIImage = self:AddComponent(UIImage, "SkillBreak_Panel/right/TextBg/SkillIcon_After/Skill_After_Crystal/Skill_After_Cost_Icon_UIImage",AtlasConfig.DynamicTex)
    
	self.skill_After_Cost_NumUIImage = self:AddComponent(UIText, "SkillBreak_Panel/right/TextBg/SkillIcon_After/Skill_After_Crystal/Skill_After_Cost_Num_UIImage")
    
	self.skillIcon_AfterUIText = self:AddComponent(UIText, "SkillBreak_Panel/right/TextBg/SkillIcon_After/SkillIcon_After_UIText")
    
	self.breakThroughNeedTitleUIText = self:AddComponent(UIText, "SkillBreak_Panel/right/BreakThroughNeedBg/breakBg/BreakThroughNeedTitle_UIText")

	self.skill_type_img = self:AddComponent(UIImage,"SkillBreak_Panel/right/TextBg/SkillIcon_Before/Skill_PassiveSkill",AtlasConfig.Language)
	self.skill_type_only_img = self:AddComponent(UIImage,"SkillBreak_Panel/right/TextBg/SkillIcon_After/Skill_After_PassiveSkill",AtlasConfig.Language)

	self.item_scroll_rect = self:AddComponent(UIWrapGroup3D,"SkillBreak_Panel/left/TextBg/ScrollView/GameObject",UIBreakWrapItem)


	 self.sp_obj=UIUtil.FindTrans(self.transform,"SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Sp_Parent")

	 self.exp_obj=UIUtil.FindTrans(self.transform,"SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Slider_Parent")

	--self.itemNameUIText = self:AddComponent(UIText, "SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Sp_Parent/ItemName_UIText")

	self.icon01UIImage = self:AddComponent(UIImage, "SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Sp_Parent/Item/Frame02_UIImage/Icon01_UIImage",AtlasConfig.DynamicTex)
	self.iconBtn = self:AddComponent(UIButton,"SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Sp_Parent/Item/Frame02_UIImage/Icon01_UIImage")
	self.iconBtn:SetOnClick(function ()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip,self.takeId)
	end)
	--self.numUIText = self:AddComponent(UIText, "SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Sp_Parent/Item/Frame02_UIImage/Num_UIText")

	self.frame02UIImage = self:AddComponent(UIImage, "SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Sp_Parent/Item/Frame02_UIImage",AtlasConfig.DynamicTex)

	self.score02UIText = self:AddComponent(UIText, "SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Slider_Parent/Item_Q/scrollbar02/Score02_UIText")

	self.only_item_num_slider = self:AddComponent(UISlider,"SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Slider_Parent/Item_Q/scrollbar02")

	self.scorezsUIText = self:AddComponent(UIText, "SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Sp_Parent/Item_Q/scrollbarzs/Scorezs_UIText")

	self.scorezs_slider = self:AddComponent(UISlider,"SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Sp_Parent/Item_Q/scrollbarzs")


	self.slider_title_text=self:AddComponent(UIText,"SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Slider_Parent/OperationTips02_des")

	self.slider_des_text=self:AddComponent(UIText,"SkillBreak_Panel/right/BreakThroughNeedBg/BreakThroughNeedPanel_2/Slider_Parent/OperationTips02_UIText")

	self.top_title_text = self:AddComponent(UIText,"SkillBreak_Panel/panel/Bg (12)/Bg (13)/titletext1")

end

---设置突破技能界面数据
local function SetBreakThroughData(self)

	self.nameTipsUIText:SetText(self.breakData.name)
	self.skill_IconUIImage:SetSpriteName(self.breakData.icon)
	self.skillUIImage:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.breakData.quality))
	self.skill_LevelUIText:SetText(self.breakData.level.."/"..self.breakData.breakLevelBefore)
	self.skillIcon_BeforeUIText:SetText("等级上限:"..self.breakData.breakLevelBefore)
	self.skill_after_icon:SetSpriteName(self.breakData.icon)
	self.skill_After_BgUIImage:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.breakData.quality))
	self.skill_Afterl_LevelUIText:SetText(self.breakData.level.."/"..self.breakData.breakLevelAfter)
	self.skillIcon_AfterUIText:SetText("等级上限:".."<color=#3F793F>"..self.breakData.breakLevelAfter.."</color>")
	if self.breakData.showFireType == 1 or self.breakData.showFireType == 4 then ---主動技能
		self.skill_type_img.gameObject:SetActive(false)
		self.skill_type_only_img.gameObject:SetActive(false)
	elseif self.breakData.showFireType == 2 then  --- 被動技能
		self.skill_type_img.gameObject:SetActive(true)
		self.skill_type_only_img.gameObject:SetActive(true)
		self.skill_type_img:SetSpriteName("ui_dtex_Quality_039")
		self.skill_type_only_img:SetSpriteName("ui_dtex_Quality_039")
	elseif self.breakData.showFireType == 3 then --- 連擊技能
		self.skill_type_img.gameObject:SetActive(true)
		self.skill_type_only_img.gameObject:SetActive(true)
		self.skill_type_img:SetSpriteName("ui_dtex_Quality_040")
		self.skill_type_only_img:SetSpriteName("ui_dtex_Quality_040")
	end
	if self.breakData.crystalCost == 0 or self.breakData.skillCrystalIcon==nil then
		self.skill_Cost_IconUIImage.gameObject:SetActive(false)
		self.skill_Cost_NumUIImage:SetActive(false)
		self.skill_After_Cost_IconUIImage:SetActive(false)
		self.skill_After_Cost_NumUIImage:SetActive(false)
	else
		self.skill_Cost_IconUIImage.gameObject:SetActive(true)
		self.skill_Cost_NumUIImage:SetActive(true)
		self.skill_After_Cost_IconUIImage:SetActive(true)
		self.skill_After_Cost_NumUIImage:SetActive(true)
		self.skill_Cost_IconUIImage:SetSpriteName(SpriteDefine:GetCrystalIconByType(self.breakData.skillCrystalIcon))
		self.skill_After_Cost_IconUIImage:SetSpriteName(SpriteDefine:GetCrystalIconByType(self.breakData.skillCrystalIcon))
		self.skill_Cost_NumUIImage :SetText(math.floor(self.breakData.crystalCost))
		self.skill_After_Cost_NumUIImage:SetText(math.floor(break_data[self.breakData.templateId][self.breakData.breakTimes+1].CostAdd+self.breakData.crystalCost))

	end
	local item = DataUtil.GetData("item")
	if self.breakData.cost_exp then
		self.score02UIText:SetText(select_num.."/"..self.breakData.needExp)
		self.only_item_num_slider:SetValue(select_num / self.breakData.needExp)
		self.slider_title_text:SetText(self.breakData.cost_title)
		self.slider_des_text:SetText(self.breakData.cost_des)
		if #self.breakData.itemList > 0 then
			self.item_scroll_rect:SetLength(table.count(self.breakData.itemList))
			self.item_scroll_rect:SetGridPositionByIndex(0)
		else
			self.item_scroll_rect:SetLength(0)
		end
	else
		self.item_scroll_rect:SetLength(0)
	end
	self.cost_sp_full=true
	if self.breakData.cost_sp then
		local take_item_id = self.breakData.only_itemList[1].id
		self.takeId = take_item_id
		--self.itemNameUIText:SetText(item[take_item_id].Name)
		self.icon01UIImage:SetSpriteName(item[take_item_id].Icon)
		self.frame02UIImage:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(item[take_item_id].Quality))
		local have_num=BackpackData:GetInstance():GetItemNumById(take_item_id)
		self.scorezs_slider:SetValue(have_num/self.breakData.only_itemList[1].val)
		if have_num>=self.breakData.only_itemList[1].val then
			self.scorezsUIText:SetText("<color=#FFFFFF>"..have_num.."</color>/"..self.breakData.only_itemList[1].val)
		else
			self.cost_sp_full=false
			self.scorezsUIText:SetText("<color=#FF1C00>"..have_num.."</color>/"..self.breakData.only_itemList[1].val)
		end
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	self.lightEffect.gameObject:SetActive(false);
	self.breakData = self.model.break_skill_data
	if self.breakData.cost_sp and self.breakData.cost_exp then
		self.sp_obj.anchoredPosition=Vector3.New(8,58,0)
		self.exp_obj.anchoredPosition=Vector3.New(8,-83,0)
		self.sp_obj.gameObject:SetActive(true)
		self.exp_obj.gameObject:SetActive(true)
	elseif self.breakData.cost_sp then
		self.sp_obj.anchoredPosition=Vector3.New(8,58,0)
		self.sp_obj.gameObject:SetActive(true)
		self.exp_obj.gameObject:SetActive(false)
	elseif self.breakData.cost_exp then
		self.exp_obj.anchoredPosition=Vector3.New(8,58,0)
		self.sp_obj.gameObject:SetActive(false)
		self.exp_obj.gameObject:SetActive(true)
	end

	self.selectDic={}
	select_num = 0
	SkillData:GetInstance().select_skills = 0
	SetBreakThroughData(self)
	self.top_title_text:SetText(self.model.tip)
	self:OnRefresh()
end

---点击单个技能数量增加
local function SetBreakSkillData(self,_itemId,_num,_clickType)
	if _clickType == 1 then
		if select_num >= self.breakData.needExp then
			UISpecial:GetInstance():UITipText("所需已达上限！")
			return
		end
	else
		if self.selectDic[_itemId]~=nil then
			if self.selectDic[_itemId]==0 then
			  return
			end
		end
	end
	select_num = select_num + _num
	SkillData:GetInstance().select_skills = select_num
	if self.selectDic[_itemId]~=nil then
		local num = self.selectDic[_itemId]
		if _clickType == 1 then
			self.selectDic[_itemId]= num + 1
		else
			self.selectDic[_itemId]= num - 1
		end
	else
		self.selectDic[_itemId] = 1
	end
	self.score02UIText:SetText(select_num.."/"..self.breakData.needExp)
	self.only_item_num_slider:SetValue(select_num / self.breakData.needExp)
end

local function OnRefresh(self)
	-- 各组件刷新
	
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_SKILL_BREAK_THROUGH_UPDATE, SetBreakThroughData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self.selectDic=nil
	self:RemoveUIListener(UIMessageNames.UI_SKILL_BREAK_THROUGH_UPDATE, SetBreakThroughData)
end


local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UISkillBreakThroughView.OnCreate = OnCreate
UISkillBreakThroughView.OnEnable = OnEnable
UISkillBreakThroughView.OnRefresh = OnRefresh
UISkillBreakThroughView.OnAddListener = OnAddListener
UISkillBreakThroughView.OnRemoveListener = OnRemoveListener
UISkillBreakThroughView.OnDestroy = OnDestroy
UISkillBreakThroughView.SetBreakSkillData = SetBreakSkillData
UISkillBreakThroughView.EffectMove=EffectMove;

return UISkillBreakThroughView
