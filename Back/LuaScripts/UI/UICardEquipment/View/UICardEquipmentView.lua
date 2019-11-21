
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICardEquipmentView = BaseClass("UICardEquipmentView", UIBaseView)
local base = UIBaseView

local UIEquipWrapNormalItem = require "UI.UICardEquipment.Component.UIEquipWrapNormalItem"

local EquipType={
	ALL=0,--全部
	WEAPON=1,--武器
	HELMET=2,--头盔
	SCAPULA=3,--肩甲
	CLOTHES=4,--衣服
	SHOE=5,--鞋子
	HANDGUARD=6,--护手
	NECKLACE=7,--项链
	RING=8,--戒指
}
local filterTypeList={[1]={type=EquipType.ALL,name="全部"},[2]={type=EquipType.WEAPON,name="武器"},[3]={type=EquipType.HELMET,name="头盔"},[4]={type=EquipType.SCAPULA,name="肩甲"},
  [5]={type=EquipType.CLOTHES,name="衣服"},[6]={type=EquipType.SHOE,name="鞋子"},[7]={type=EquipType.HANDGUARD,name="护手"},
					  [8]={type=EquipType.NECKLACE,name="项链"},[9]={type=EquipType.RING,name="戒指"}};
local parent_layout_path="ParentLayout";
local force_text_path="ParentLayout/CardEquipmentLeft/CardEquipmentPanel/heiBgLeft/CardEquipmentTitle/CardEquipmentTitle_UIText";
local self_suit_layout_path="ParentLayout/CardEquipmentLeft/CardEquipmentPanel/CardEquipment_Subassembly";
local filter_btn_path="ParentLayout/CardEquipmentList/btnFilterByQuality";
local filter_btn_text_path="ParentLayout/CardEquipmentList/btnFilterByQuality/qualityType";
local quality_filter_layout_path="ParentLayout/CardEquipmentList/FilterObj/slectGrid";
local filter_panel_path="ParentLayout/CardEquipmentList/FilterObj/FilterObj";
local filter_close_btn_path="ParentLayout/CardEquipmentList/FilterObj/FilterObj/btnConditionMask";
local filter_grid_path="ParentLayout/CardEquipmentList/FilterObj/FilterObj/TypeGrid";
local equip_list_path="ParentLayout/CardEquipmentList/ScrollView/grid_UIWrapGroup3D";
local one_key_discharge_btn_path="ParentLayout/CardEquipmentList/unloadOneKeyBtn";
local one_key_equip_btn_path="ParentLayout/CardEquipmentList/wearOneKeyBtn";
local one_key_strength_path="ParentLayout/CardEquipmentLeft/CardEquipmentPanel/strengthenOneKeyBtn";
local equip_select_path="ParentLayout/CardEquipmentLeft/CardEquipmentPanel/CardEquipment_Select";
local equip_prop_btn_path="ParentLayout/CardEquipmentLeft/CardEquipmentPanel/CardEquipmentOverview";
local equip_show_img_path="ParentLayout/CardEquipmentLeft/CardEquipmentPanel/CardEquipmentOverview/CardEquipmentOverviewIcon_UIImage";

--设置品质排序按钮
local function OnSetQualityBtnImg(self)
	for i, v in ipairs(self.qualityBtnList) do
		local btnImgIndex=4-i+1;
		if self.qualitySelectList[btnImgIndex] then
			v.img:SetMat(nil);
		else
			v.img:SetMat(self.grayMat);
		end
	end
end

--设置父物体
local function SetChildParent(child,parent)
	child.transform:SetParent(parent);
	child.localScale=Vector3.New(1,1,1);
	child.localPosition=Vector2.New(0,0);
	child:SetAsFirstSibling();
	child.gameObject:SetActive(true);
end

--检测是否可以一键强化
local function GetEquipCanOnekeyStrength(self)
	local equipList= CardData:GetInstance():GetCardDataById(self.model.cardId).equip;
	local isCanStrength=false;
	for i, v in pairs(equipList) do
		local equipData=EquipData:GetInstance():GetEquipDataById(v);
		if equipData~=nil and equipData.equipStrengthLv<UserData:GetInstance().pLevel then
			isCanStrength=true;
		end
	end
	return isCanStrength;
end


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件

	self.propBtn=self:AddComponent(UIButton,equip_prop_btn_path);
	self.propBtn:SetOnClick(function()
		UIManager:GetInstance():OpenWindow(UIWindowNames.UICardEquipmentSummary,self.view.model.cardId);
	end)
	self.equipSuitShowImg=self:AddComponent(UIImage,equip_show_img_path);
	self.parentLayout=self:AddComponent(UIImage,parent_layout_path);
	self.grayMat=self.parentLayout:GetMat();
	self.forceText=self:AddComponent(UIText,force_text_path);
	self.equipSelectObj=UIUtil.FindTrans(self.transform,equip_select_path);
	self.suitLayout=self:AddComponent(UIBaseContainer,self_suit_layout_path);
	local count=self.suitLayout.transform.childCount;
	self.suitList={};
	for i = 0, count-1 do
		local tempEquip=self.suitLayout:AddComponent(UIBaseContainer,i);
		local tempEquipObj=UIUtil.FindTrans(tempEquip.transform,"Equip");
		local tempFrame=tempEquip:AddComponent(UIImage,"CardEquipment_BG",AtlasConfig.DynamicTex);
		local tempSuitImg=UIUtil.FindTrans(tempEquip.transform,"Equip/CardEquipment_SuitLabel");
		local tempSuitLv=tempEquip:AddComponent(UIText,"Equip/CardEquipment_Level/Subassembly_Level_UIText");
		local tempStrengthLv=tempEquip:AddComponent(UIText,"Equip/CardEquipment_StrengthenLevel/Subassembly_Level_UIText1");
		local tempSuitName=tempEquip:AddComponent(UIText,"CardEquipment_Name/CardEquipment_Name_UIText");
		local tempAdd=UIUtil.FindTrans(tempEquip.transform,"add");
		local tempAddBtn=tempEquip:AddComponent(UIButton,"CardEquipment_BG");
		tempAddBtn:SetOnClick(function()
			local index=i+1;
			if self.model.heroEquip[index]~=nil then
				if self.model.heroEquip[index].isWear then
					--打开装备界面
					UIManager:GetInstance():OpenWindow(UIWindowNames.UICardEquipmentProp,self.view.model.cardId,self.model.heroEquip[index].equipId);
					self.equipSelectObj.transform.gameObject:SetActive(false);
					--self.curFilter=1;
					--self.filterBtnText:SetText(filterTypeList[self.curFilter].name);
					--UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_FILTER,filterTypeList[self.curFilter].type,self.qualitySelectList);
				else
					self.curFilter=index+1;
					SetChildParent(self.equipSelectObj,tempEquip.transform);
					self.filterBtnText:SetText(filterTypeList[self.curFilter].name);
					UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_FILTER,filterTypeList[self.curFilter].type,self.qualitySelectList);
				end
			end

		end)
		local tempIcon=tempEquip:AddComponent(UIImage,"Equip/CardEquipment_Icon",AtlasConfig.DynamicTex);
		table.insert(self.suitList,{obj=tempEquipObj,suitImg=tempSuitImg,suitLv=tempSuitLv,strengthLv=tempStrengthLv,suitName=tempSuitName,icon=tempIcon,frame=tempFrame,addObj=tempAdd});
	end
	self.filterBtnText=self:AddComponent(UIText,filter_btn_text_path);
	self.filterBtn=self:AddComponent(UIButton,filter_btn_path);
	self.filterBtn:SetOnClick(function()
		self.filterPanel.transform.gameObject:SetActive(true);
	end)
	self.qualityFilterObj=self:AddComponent(UIBaseContainer,quality_filter_layout_path);
	count=self.qualityFilterObj.transform.childCount;
	self.qualityBtnList={};
	for i =0, count-1 do
		local tempObj=self.qualityFilterObj:AddComponent(UIBaseContainer,i);
		local tempBtn=tempObj:AddComponent(UIButton,"");
		local tempImg=tempObj:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		local index=4-i;
		table.insert(self.qualityBtnList,{img=tempImg});
		tempBtn:SetOnClick(function()
			self.qualitySelectList[index]=not self.qualitySelectList[index];
			OnSetQualityBtnImg(self);
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_FILTER,filterTypeList[self.curFilter].type,self.qualitySelectList);
		end)
	end
	self.filterPanel=UIUtil.FindTrans(self.transform,filter_panel_path);
	self.filterCloseBtn=self:AddComponent(UIButton,filter_close_btn_path);
	self.filterCloseBtn:SetOnClick(function()
		self.filterPanel.transform.gameObject:SetActive(false);
	end)
	self.filterGridParent=self:AddComponent(UIBaseContainer,filter_grid_path);
	count=self.filterGridParent.transform.childCount;
	self.filterTypeBtns={};
	for i = 0, count-1 do
		local tempObj=self.filterGridParent:AddComponent(UIBaseContainer,i);
		local tempBtn=tempObj:AddComponent(UIButton,"");
		local tempText=tempObj:AddComponent(UIText,"typeText");
		tempBtn:SetOnClick(function()
			self.curFilter=i+1;
			self.filterBtnText:SetText(filterTypeList[self.curFilter].name);
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_EQUIP_FILTER,filterTypeList[self.curFilter].type,self.qualitySelectList);
			self.filterPanel.transform.gameObject:SetActive(false);
		end)
		table.insert(self.filterTypeBtns,{obj=tempObj,text=tempText});
	end
	self.onekeyDisChargeBtn=self:AddComponent(UIButton,one_key_discharge_btn_path);
	self.onekeyDisChargeBtn:SetOnClick(function ()
		if CardData:GetInstance():GetCardDataById(self.model.cardId).equip~=nil and #CardData:GetInstance():GetCardDataById(self.model.cardId).equip>0 then
            LJAudioManger:GetInstance():PlayVoice("UI_Armour_02")
			self.ctrl:SendAutomaticEquipRequest(2,self.model.cardId)
		else
            LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
			UISpecial:GetInstance():UITipText("暂无可卸下的装备");
		end

	end)
	self.onekeyEquipBtn=self:AddComponent(UIButton,one_key_equip_btn_path);
	self.onekeyEquipBtn:SetOnClick(function()
        if not self.ctrl:CheckNeedWearEquip(self.model.cardId) then
            LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
            return
        end
        LJAudioManger:GetInstance():PlayVoice("UI_Armour_01")
		self.ctrl:SendAutomaticEquipRequest(1,self.model.cardId);
	end)

	self.onekeyStrengthBtn=self:AddComponent(UIButton,one_key_strength_path);
	self.onekeyStrengthBtn:SetOnClick(function()
		if CardData:GetInstance():GetCardDataById(self.model.cardId).equip~=nil and #CardData:GetInstance():GetCardDataById(self.model.cardId).equip>0 then
			if GetEquipCanOnekeyStrength(self) then
                LJAudioManger:GetInstance():PlayVoice("UI_LevelUp_01")
				self.ctrl:SendIntensifyEquipRequest(3,self.model.cardId,0);
			else
                LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
				UISpecial:GetInstance():UITipText("暂无可强化的装备");
			end
		else
            LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
			UISpecial:GetInstance():UITipText("装备强化次数已达当前等级上限");
		end
	end)
	
	self.normal_item_wrap_group=self:AddComponent(UIWrapGroup3D,equip_list_path,UIEquipWrapNormalItem);
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.parentLayout,UIWindowNames.UICardEquipment,32,self);
	UIUtil.CreatCloseBtnComponent(self,self.parentLayout,function(go) self.closeComponent=go end,function()
		UIManager:GetInstance():CloseWindow(UIWindowNames.UICardEquipment);
	end,function() end ,"装备",false,2);
end

--刷新英雄穿的装备
local function RefreshHeroWearEquip(self)
	for i, v in ipairs(self.suitList) do
		if self.model.heroEquip[i]~=nil then
			local equipData=self.model.heroEquip[i];
			v.obj.transform.gameObject:SetActive(equipData.isWear);
			v.addObj.transform.gameObject:SetActive(not equipData.isWear);
			local equipQuality=equipData.isWear and equipData.itemData.quality or 0;
			v.frame:SetSpriteName(SpriteDefine:GetCardEquipFrameByType(equipQuality));
			v.suitName:SetText(string.format(UIUtil.GetEquipNameByQuality(equipQuality),filterTypeList[i+1].name));
			if equipData.isWear then
				v.suitImg.transform.gameObject:SetActive(equipData.staticData.Suit~=-1);
				v.suitLv:SetText(equipData.staticData.ShowLv.."级");
				v.strengthLv:SetText("+"..math.floor(equipData.strengthLv));
				v.icon:SetSpriteName(equipData.itemData.icon);
				v.suitName:SetText(string.format(UIUtil.GetEquipNameByQuality(equipQuality),equipData.itemData.name));
			end
		end
	end
end

--设置类型显示
local function SetTypeNameShow(self)
	local type=self.model.cardType==1 and 201 or 202;
	local xlsxData=DataUtil.GetData("global")[type];
	for i = 2, #filterTypeList do
		if xlsxData.valueSA[i-1] then
			filterTypeList[i].name=xlsxData.valueSA[i-1];
		end
	end
end

--显示筛选按钮名字
local function ShowFilterBtnText(self)
	for i, v in ipairs(self.filterTypeBtns) do
		v.text:SetText(filterTypeList[i].name);
	end
end

local function OnEnable(self)
	base.OnEnable(self)
	SetTypeNameShow(self);
	ShowFilterBtnText(self);
	self.closeComponent:SetTitleData(self.model.cardName.."的装备");
	self.equipSelectObj.transform.gameObject:SetActive(false);
	self.curFilter=1;
	--品质选中列表
	self.filterBtnText:SetText(filterTypeList[self.curFilter].name);
	self.qualitySelectList={[1]=true,[2]=true,[3]=true,[4]=true};
	self.filterPanel.transform.gameObject:SetActive(false);

	self:OnRefresh();
end

local function OnRefresh(self)
	-- 各组件刷新
	if self.model.isActiveSuit then
		self.equipSuitShowImg:SetMat(nil);
	else
		self.equipSuitShowImg:SetMat(self.grayMat);
	end

	self.forceText:SetText(string.format("全身装备总战力:%s",EquipData:GetInstance():GetCardEquipForce(self.model.cardId)));
	RefreshHeroWearEquip(self);
	self.normal_item_wrap_group:SetLength(table.length(self.model.showData));
	self.normal_item_wrap_group:ResetToBeginning();
end

--刷新卡牌
local function OnRefreshCardEquipForce(self)
	self.forceText:SetText(string.format("全身装备总战力:%s",EquipData:GetInstance():GetCardEquipForce(self.model.cardId)));
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_EQUIP_REFRESH,OnRefresh);
	self:AddUIListener(UIMessageNames.UI_CARD_ALL_EQUIP_FORCE_REFRESH,OnRefreshCardEquipForce);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_EQUIP_REFRESH,OnRefresh)
	self:RemoveUIListener(UIMessageNames.UI_CARD_ALL_EQUIP_FORCE_REFRESH,OnRefreshCardEquipForce)
end

local function OnDestroy(self)
	-- 销毁
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UICardEquipment);
	if self.closeComponent~=nil or not IsNull(self.closeComponent) then
		self.closeComponent:RecyleSelf();
	end
	base.OnDestroy(self)
end

UICardEquipmentView.OnCreate = OnCreate
UICardEquipmentView.OnEnable = OnEnable
UICardEquipmentView.OnRefresh = OnRefresh
UICardEquipmentView.OnAddListener = OnAddListener
UICardEquipmentView.OnRemoveListener = OnRemoveListener
UICardEquipmentView.OnDestroy = OnDestroy

return UICardEquipmentView
