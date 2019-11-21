
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICardEquipmentPropView = BaseClass("UICardEquipmentPropView", UIBaseView)
local base = UIBaseView

local suit_layout_parent_path="CardEquipmentPropPanel/SuitInfoPanel";
local equip_layout_parent_path="CardEquipmentPropPanel/EquipmentInfoPanel";
local equip_strenght_parent_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen";
local close_btn_path="CardEquipmentPropPanel/EquipmentInfoPanel/close_UIButton";
local equip_icon_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentQuality/EquipmentIcon";
local equip_frame_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentQuality";
local equip_name_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentNameBG/EquipmentName_UIText";
local equip_pos_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentNameBG/EquipmentPos_UIText";
local equip_lv_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentBaseInfo/EquipmentLevel_UIText/EquipmentLevelValue_UIText";
local equip_strength_lv_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentBaseInfo/StrengthenLevel_UIText/StrengthenLevelValue_UIText";
local hero_obj_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentBaseInfo/hero";
local hero_icon_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentBaseInfo/hero";
local hero_frame_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentBaseInfo/hero/hero_icon";
local btn_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentBtn";
local btn_text_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentBtn/EquipmentBtn_UIText";
local force_text_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentPropScroll/EquipmentProp/EquipmentBaseProp/EquipmentScore/EquipmentScore_UIText";
local add_force_text_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentPropScroll/EquipmentProp/EquipmentCompare/EquipmentScore/EquipmentScore_UIText1";
local equip_base_prop_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentPropScroll/EquipmentProp/EquipmentBaseProp/intensifyGrid";
local equip_random_prop_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentPropScroll/EquipmentProp/EquipmentBaptizeProp/randPropGrid";
local equip_single_info_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentPropScroll/EquipmentProp/EquipmentDes";
local equip_prop_change_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentPropScroll/EquipmentProp/EquipmentCompare/changePropGrid";
local equip_prop_change_par_layout_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentPropScroll/EquipmentProp/EquipmentCompare";

--按钮
local btn_group_path="CardEquipmentPropPanel/EquipmentInfoPanel/skillEffectGroup";
local prop_btn_path="CardEquipmentPropPanel/EquipmentInfoPanel/skillEffectGroup/all_UIButton";
local strength_btn_path="CardEquipmentPropPanel/EquipmentInfoPanel/skillEffectGroup/atk_UIButton";
local select_btn_obj_path="CardEquipmentPropPanel/EquipmentInfoPanel/SlecBtn";
local select_btn_text_path="CardEquipmentPropPanel/EquipmentInfoPanel/SlecBtn/Slect_Text";

--套装页签
local equip_grid_trans_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentPropScroll/EquipmentProp";
local equip_suit_name_path="CardEquipmentPropPanel/SuitInfoPanel/SuitNameBG/SuitName_UIText";
local equip_suit_title_path="CardEquipmentPropPanel/SuitInfoPanel/ScrollRect/EquipmentProp/EquipmentBaseProp/BaseProp_UIText";
local equip_suit_layout_path="CardEquipmentPropPanel/SuitInfoPanel/ScrollRect/EquipmentProp/EquipmentBaseProp/intensifyGrid1";
local equip_suit_prop_path="CardEquipmentPropPanel/SuitInfoPanel/ScrollRect/EquipmentProp/SuitAddLayout";
local equip_suit_info_path="CardEquipmentPropPanel/SuitInfoPanel/ScrollRect/EquipmentProp/EquipmentDes1";
local prop_scroll_rect_trans_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentInfo/EquipmentPropScroll";
--强化页签
local strength_equip_name_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/EquipmentNameTitleBG/EquipmentName_UIText1";
local strength_equip_icon_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/EquipmentIconBg/EquipmentQuality1/EquipmentIcon1";
local strength_equp_frame_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/EquipmentIconBg/EquipmentQuality1";
local strength_one_key_btn_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/StrengthenOneKeyBtn";
local stength_one_time_btn_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/EquipmentStrengthenBtn";
local strength_grid_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/EquipmentStrengthenScrollRect/EquipmentStrengthenGrid";
local one_time_cost_icon_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/EquipmentStrengthenBtn/StrengthenCostparent/StrengthenCostIcon";
local one_time_cost_num_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/EquipmentStrengthenBtn/StrengthenCostparent/StrengthenCostNum";
local one_key_cost_icon_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/StrengthenOneKeyBtn/StrengthenOneKeyCostparent/StrengthenOneKeyCostIcon";
local one_key_cost_num_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/StrengthenOneKeyBtn/StrengthenOneKeyCostparent/StrengthenOneKeyCostNum";
local strength_btn_tip_text_path="CardEquipmentPropPanel/EquipmentInfoPanel/EquipmentStrengthen/EquipmentStrengthenBtn/StrengthenBtnTip_UIText";
local gray_mat_path="CardEquipmentPropPanel";

local posNameList={[1]="武器",[2]="头盔",[3]="肩甲",[4]="衣服",[5]="鞋子",[6]="护手",[7]="项链",[8]="戒指"};

local function OnInitEquipSuitLayout(self)
	self.equipSuitName=self:AddComponent(UIText,equip_suit_name_path);
	self.equipSuitTitle=self:AddComponent(UIText,equip_suit_title_path);
	self.equipSuitDetailLayout=self:AddComponent(UIBaseContainer,equip_suit_layout_path);
	self.equipSuitList={};
	local count=self.equipSuitDetailLayout.transform.childCount;
	for i = 0, count-1 do
		local tempEquip=self.equipSuitDetailLayout:AddComponent(UIBaseContainer,i);
		local tempText=tempEquip:AddComponent(UIText,"name");
		local tempImg=tempEquip:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		table.insert(self.equipSuitList,{obj=tempEquip,nameText=tempText,bgImg=tempImg});
	end
	self.equipSuitPropLayout=self:AddComponent(UIBaseContainer,equip_suit_prop_path);
	count=self.equipSuitPropLayout.transform.childCount;
	self.equipSuitProp={};
	for i = 0, count-1 do
		local tempProp=self.equipSuitPropLayout:AddComponent(UIBaseContainer,i);
		local tempTitleName=tempProp:AddComponent(UIText,"BaseProp_UIText");
		local tempInfo=tempProp:AddComponent(UIText,"propAdd/propAdd");
		table.insert(self.equipSuitProp,{obj=tempProp,titleName=tempTitleName,info=tempInfo});
	end
end

--初始化强化界面
local function OnInitStrengthLayout(self)
	self.strengthEquipName=self:AddComponent(UIText,strength_equip_name_path);
	self.strengthOneTimeImg=self:AddComponent(UIImage,stength_one_time_btn_path,AtlasConfig.DynamicTex);
	self.strengthOneKeyImg=self:AddComponent(UIImage,strength_one_key_btn_path,AtlasConfig.DynamicTex);
	self.strengthEquipIcon=self:AddComponent(UIImage,strength_equip_icon_path,AtlasConfig.DynamicTex);
	self.strengthEquipFrame=self:AddComponent(UIImage,strength_equp_frame_path,AtlasConfig.DynamicTex);
	self.strengthTipText=self:AddComponent(UIText,strength_btn_tip_text_path);
	self.strengthOneKeyBtn=self:AddComponent(UIButton,strength_one_key_btn_path);
	self.strengthOneKeyBtn:SetOnClick(function()
		self.ctrl:SendIntensifyEquipRequest(2,self.model.equipData.wearCardId,self.model.equipData.equipId);
	end);
	self.strengthOnTimeBtn=self:AddComponent(UIButton,stength_one_time_btn_path);
	self.strengthOnTimeBtn:SetOnClick(function()
		if self.model.equipData.strengthLv<self.model.maxStrengthLv then
			self.ctrl:SendIntensifyEquipRequest(1,self.model.equipData.wearCardId,self.model.equipData.equipId);
		else
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100135));
		end

	end)
	self.strengthGrid=self:AddComponent(UIBaseContainer,strength_grid_path);
	self.strengthPrbList={};
	local count=self.strengthGrid.transform.childCount;
	for i = 0, count-1 do
		local tempPrb=self.strengthGrid:AddComponent(UIBaseContainer,i);
		local tempName=tempPrb:AddComponent(UIText,"name");
		local tempCurProp=tempPrb:AddComponent(UIText,"beforeText");
		local tempAddProp=tempPrb:AddComponent(UIText,"afterText");
		table.insert(self.strengthPrbList,{obj=tempPrb,name=tempName,curProp=tempCurProp,nextProp=tempAddProp});
	end
	self.oneTimeCostIcon=self:AddComponent(UIImage,one_time_cost_icon_path,AtlasConfig.DynamicTex);
	self.oneTimeCostText=self:AddComponent(UIText,one_time_cost_num_path);
	self.oneKeyCostIcon=self:AddComponent(UIImage,one_key_cost_icon_path,AtlasConfig.DynamicTex);
	self.oneKeyCostText=self:AddComponent(UIText,one_key_cost_num_path);
end

--设置父物体
local function SetChildParent(child,parent,_isSetFirst)
	child.transform:SetParent(parent);
	child.localScale=Vector3.New(1,1,1);
	child.localPosition=Vector2.New(0,0);
	if _isSetFirst then
		child:SetAsFirstSibling();
	end
	child.gameObject:SetActive(true);
end

--设置选中按钮
local function SetSelectBtn(self,_parentTrans,_type)
	SetChildParent(self.selectBtnObj,_parentTrans);
	local str=_type==1 and "属性" or "强化";
	self.selectText:SetText(str);
end

local function OnCreate(self)
	base.OnCreate(self)
	OnInitEquipSuitLayout(self);
	OnInitStrengthLayout(self);
	self.grayMat=self:AddComponent(UIImage,gray_mat_path,AtlasConfig.DynamicTex):GetMat();
	self.propScrollRectTrans=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),prop_scroll_rect_trans_path);
	self.btnGroup=UIUtil.FindTrans(self.transform,btn_group_path);
	--初始化按钮
	self.propBtn=self:AddComponent(UIButton,prop_btn_path);
	self.propBtn:SetOnClick(function()
		SetSelectBtn(self,self.propBtn.transform,1);
		self.strengthLayout.transform.gameObject:SetActive(false);
		self.suitLayout.transform.gameObject:SetActive(self.model.equipData.staticData.Suit~=-1);
	end);
	self.strengthBtn=self:AddComponent(UIButton,strength_btn_path);
	self.strengthBtn:SetOnClick(function()
		SetSelectBtn(self,self.strengthBtn.transform,2);
		self.strengthLayout.transform.gameObject:SetActive(true);
		self.suitLayout.transform.gameObject:SetActive(false);
		self.equipGridTrans.anchoredPosition=Vector3.New(0,0,0);
	end)
	self.selectBtnObj=UIUtil.FindTrans(self.transform,select_btn_obj_path);
	self.selectText=self:AddComponent(UIText,select_btn_text_path);
	-- 初始化各个组件
	self.equipGridTrans=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),equip_grid_trans_path);
	self.strengthLayout=UIUtil.FindTrans(self.transform,equip_strenght_parent_path);
	self.suitLayout=UIUtil.FindTrans(self.transform,suit_layout_parent_path);
	self.equipLayout=UIUtil.FindTrans(self.transform,equip_layout_parent_path);
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		UIManager:GetInstance():CloseWindow(UIWindowNames.UICardEquipmentProp);
	end)
	self.equipIcon=self:AddComponent(UIImage,equip_icon_path,AtlasConfig.DynamicTex);
	self.equipFrame=self:AddComponent(UIImage,equip_frame_path,AtlasConfig.DynamicTex);
	self.equipPosText=self:AddComponent(UIText,equip_pos_path);
	self.equipLvText=self:AddComponent(UIText,equip_lv_path);
	self.equipNameText=self:AddComponent(UIText,equip_name_path);
	self.equipStrengthLvText=self:AddComponent(UIText,equip_strength_lv_path);
	self.heroObj=UIUtil.FindTrans(self.transform,hero_obj_path);
	self.heroIcon=self:AddComponent(UIImage,hero_icon_path,AtlasConfig.DynamicTex);
	self.heroFrame=self:AddComponent(UIImage,hero_frame_path,AtlasConfig.DynamicTex);
	self.btn=self:AddComponent(UIButton,btn_path);
	self.btn:SetOnClick(function()
		if self.model.equipData.isWear then
			--卸下
			self.ctrl:SendDisboardEquipRequest(self.model.equipData.wearCardId,self.model.equipData.equipId,self.model.equipData.staticData.Pos);
		else
			--穿戴
			self.ctrl:SendwearEquipRequest(self.model.cardId,self.model.equipData.equipId,self.model.equipData.staticData.Pos);
		end
	end);
	self.btnText=self:AddComponent(UIText,btn_text_path);
	self.forceText=self:AddComponent(UIText,force_text_path);
	self.addForceText=self:AddComponent(UIText,add_force_text_path);
	self.equipSimpleTipInfo=self:AddComponent(UIText,equip_single_info_path);

	self.equipBaseLayout=self:AddComponent(UIBaseContainer,equip_base_prop_path);
	--基础属性
	self.basePropList={};
	local count=self.equipBaseLayout.transform.childCount;
	for i = 0, count-1 do
		local tempProp=self.equipBaseLayout:AddComponent(UIBaseContainer,i);
		local tempPropName=tempProp:AddComponent(UIText,"name");
		local tempPropAdd=tempProp:AddComponent(UIText,"name/beforeText");
		table.insert(self.basePropList,{obj=tempProp,propName=tempPropName,addValue=tempPropAdd});
	end
	self.equipRandPropLayout=self:AddComponent(UIBaseContainer,equip_random_prop_path);
	--随机属性
	self.randPropList={};
	count=self.equipRandPropLayout.transform.childCount;
	for i = 0, count-1 do
		local tempProp=self.equipRandPropLayout:AddComponent(UIBaseContainer,i);
		local tempPropName=tempProp:AddComponent(UIText,"name");
		local tempPropAdd=tempProp:AddComponent(UIText,"name/beforeText");
		local tempImg=tempProp:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		table.insert(self.randPropList,{obj=tempProp,propName=tempPropName,addValue=tempPropAdd,bgImg=tempImg});
	end
	--属性变化
	self.propChangeParLayout=UIUtil.FindTrans(self.transform,equip_prop_change_par_layout_path);
	self.propChangeLayout=self:AddComponent(UIBaseContainer,equip_prop_change_path);
	self.propChangeList={};
	count=self.propChangeLayout.transform.childCount;
	for i = 0, count-1 do
		local tempProp=self.propChangeLayout:AddComponent(UIBaseContainer,i);
		local tempPropName=tempProp:AddComponent(UIText,"name");
		local tempPropAdd=tempProp:AddComponent(UIText,"name/beforeText");
		local tempImg=tempProp:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		table.insert(self.propChangeList,{obj=tempProp,propName=tempPropName,addValue=tempPropAdd,bgImg=tempImg});
	end
end

--显示套装
local function ShowSuitLayout(self)
	self.equipSuitName:SetText(self.model.equipData.suitName);
	self.equipSuitTitle:SetText(string.format("%s件套装",#self.model.equipData.suitList));
	for i, v in ipairs(self.equipSuitList) do
		v.obj.transform.gameObject:SetActive(self.model.equipData.suitList[i]~=nil);
		if self.model.equipData.suitList[i]~=nil then
			v.nameText:SetText(self.model.equipData.suitList[i]);
		end
		v.bgImg:SetEnabled(i%2==0);
	end

	for i, v in ipairs(self.equipSuitProp) do
		v.obj.transform.gameObject:SetActive(self.model.equipData.suitPropList[i]~=nil);
		if self.model.equipData.suitPropList[i]~=nil then
			local propData=self.model.equipData.suitPropList[i];
			v.titleName:SetText(propData.suitNameShow);
			v.info:SetText(propData.info);
		end
	end
	
end

--显示强化信息
local function ShowStrengthInfo(self)
	self.strengthEquipName:SetText(string.format(UIUtil.GetEquipNameByQuality(self.model.equipData.itemData.quality),self.model.equipData.itemData.name));
	self.strengthEquipIcon:SetSpriteName(self.model.equipData.itemData.icon);
	self.strengthEquipFrame:SetSpriteName(SpriteDefine:GetCardEquipFrameByType(self.model.equipData.itemData.quality));
	for i, v in ipairs(self.strengthPrbList) do
		v.obj.transform.gameObject:SetActive(self.model.equipData.strengthList[i]~=nil);
		if self.model.equipData.strengthList[i]~=nil then
			v.name:SetText(self.model.equipData.strengthList[i].name);
			v.curProp:SetText(self.model.equipData.strengthList[i].curValue);
			v.nextProp:SetText(self.model.equipData.strengthList[i].nextVal);
		end
	end
	local haveCostNum=BackpackData:GetInstance():GetItemNumById(self.model.equipData.oneTimeCost.id);
	self.strengthTipText.transform.gameObject:SetActive(haveCostNum<self.model.equipData.oneTimeCost.num);
	if haveCostNum>=self.model.equipData.oneTimeCost.num then
		self.strengthOneTimeImg:SetMat(nil);
		self.strengthOneKeyImg:SetMat(nil);
	else
		self.strengthOneTimeImg:SetMat(self.grayMat);
		self.strengthOneKeyImg:SetMat(self.grayMat);
	end
	self.oneTimeCostIcon:SetSpriteName(self.model.equipData.oneTimeCost.icon);
	self.oneTimeCostText:SetText(self.model.equipData.oneTimeCost.num);

end

--显示英雄卡牌信息
local function SetHeroCardShow(self)
	self.heroObj.transform.gameObject:SetActive(self.model.equipData.isWear);
	if self.model.equipData.isWear and self.model.cardData~=nil then
		self.heroFrame:SetSpriteName(self.model.cardData.icon);
		self.heroIcon:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.model.cardData.quality));
	end
end

--设置按钮的显示
local function SetBtnGroupActive(self)
	self.btnGroup.transform.gameObject:SetActive(not self.model.isHideBtn);
	self.btn.transform.gameObject:SetActive(not self.model.isHideBtn);
	local height=self.model.isHideBtn and 616 or 507;
	self.propScrollRectTrans.sizeDelta=Vector2.New(self.propScrollRectTrans.sizeDelta.x,height);
end

local function SetPosNameList(self)
	posNameList=self.model.equipData.staticData.Type==1 and DataUtil.GetData("global")[201].valueSA or DataUtil.GetData("global")[202].valueSA;
end

local function OnEnable(self)
	base.OnEnable(self)
	SetPosNameList(self);
	SetBtnGroupActive(self);
	self.equipGridTrans.anchoredPosition=Vector3.New(0,0,0);
	SetSelectBtn(self,self.propBtn.transform,1);
	self.strengthLayout.transform.gameObject:SetActive(false);
	if self.model.equipData~=nil then
		local equipData=self.model.equipData;
		SetHeroCardShow(self);
		local btnStr=equipData.isWear and "卸 下" or "装 备";
		self.btnText:SetText(btnStr);
		self.suitLayout.transform.gameObject:SetActive(equipData.staticData.Suit~=-1);
		if equipData.staticData.Suit~=-1 then
			ShowSuitLayout(self);
		end
		self.equipIcon:SetSpriteName(equipData.itemData.icon);
		self.equipSimpleTipInfo:SetText(equipData.itemData. des);
		self.equipFrame:SetSpriteName(SpriteDefine:GetCardEquipFrameByType(equipData.itemData.quality));
		self.equipPosText:SetText(posNameList[equipData.staticData.Pos]);
		self.equipLvText:SetText(equipData.staticData.ShowLv);
		self.equipNameText:SetText(string.format(UIUtil.GetEquipNameByQuality(equipData.itemData.quality),equipData.itemData.name));
		--随机属性
		self.equipRandPropLayout.transform.parent.gameObject:SetActive(equipData.randomProp~=nil and #equipData.randomProp>0)
		for i, v in ipairs(self.randPropList) do
			v.obj.transform.gameObject:SetActive(equipData.randomProp[i]~=nil);
			if equipData.randomProp[i]~=nil then
				local propData=equipData.randomProp[i];
				v.propName:SetText(propData.propData.CnName);
				v.addValue:SetText("+"..propData.value);
			end
			v.bgImg:SetEnabled(i%2==1);
		end
		self:OnRefresh();
	end

end

local function OnRefresh(self)
	-- 各组件刷新
	if self.model.equipData~=nil then
		local equipData=self.model.equipData;
		ShowStrengthInfo(self);
		self.equipStrengthLvText:SetText("+"..math.floor(equipData.strengthLv));
		self.forceText:SetText(math.floor(equipData.force));
		--基础属性
		for i, v in ipairs(self.basePropList) do
			v.obj.transform.gameObject:SetActive(equipData.baseProp[i]~=nil);
			if equipData.baseProp[i]~=nil then
				local propData=equipData.baseProp[i];
				v.propName:SetText(propData.propData.CnName);
				local addValueStr=propData.Show_Fac==100 and propData.addValue.."%s" or propData.addValue;
				v.addValue:SetText("+"..addValueStr);
			end
		end
		--属性变化
		self.propChangeParLayout.transform.gameObject:SetActive(self.model.isShowPropChange);
		if self.model.isShowPropChange then
			local equipStr="";
			if equipData.changeForce>0 then
				equipStr=string.format("<color=#3F793F>+%s</color>",math.floor(equipData.changeForce));
			elseif equipData.changeForce<0 then
				equipStr=string.format("<color=#E04C4C>%s</color>",math.floor(equipData.changeForce));
			else
				equipStr=string.format("<color=#313131>%s</color>",math.floor(equipData.changeForce));
			end
			self.addForceText:SetText(equipStr);
			
			for i, v in ipairs(self.propChangeList) do
				v.obj.transform.gameObject:SetActive(equipData.propChangeList[i]~=nil);
				if equipData.propChangeList[i]~=nil then
					local propData=equipData.propChangeList[i];
					v.propName:SetText(propData.name);
					v.addValue:SetText(propData.val);
				end
				v.bgImg:SetEnabled(i%2==1);
			end
		end
	end
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_EQUIP_PROP_REFRESH,OnRefresh);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_EQUIP_PROP_REFRESH,OnRefresh)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UICardEquipmentPropView.OnCreate = OnCreate
UICardEquipmentPropView.OnEnable = OnEnable
UICardEquipmentPropView.OnRefresh = OnRefresh
UICardEquipmentPropView.OnAddListener = OnAddListener
UICardEquipmentPropView.OnRemoveListener = OnRemoveListener
UICardEquipmentPropView.OnDestroy = OnDestroy

return UICardEquipmentPropView
