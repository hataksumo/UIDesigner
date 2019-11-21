
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIArenaPvpView = BaseClass("UIArenaPvpView", UIBaseView)
local base = UIBaseView
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");
local UIArenaPKInfo = require "UI.UIArenaPvp.Component.UIArenaPKInfo"
local UIArenaPVPReportItem = require "UI.UIArenaPvp.Component.UIArenaPVPReportItem"
local UIArenaPosShow = require "UI.UIArenaPvp.Component.UIArenaPosShow"
local UIArenaPVPRankItem = require "UI.UIArenaPvp.Component.UIArenaPVPRankItem"



--设置按钮的父物体
local function SetBtnParent(self,child,parent)
	child.transform:SetParent(parent)
	child.localScale=Vector3.New(1,1,1)
	child.anchoredPosition=Vector2.New(0,0)
	--child:SetAsFirstSibling()
	child.gameObject:SetActive(true)
end

local function SetObjActive(self,index)
	self.pkInfoPanel.gameObject:SetActive(index == 1)
	self.reportPanel.gameObject:SetActive(index == 2)
	self.posShowPanel.gameObject:SetActive(index == 3)
	self.rankPanel.gameObject:SetActive(index == 4)
end

--排名刷新
local function UpdateRankListData(self)
	self.rank_data =  ArenaPVPData:GetInstance().arena_rank_data[self.type].rankList
	if self.rank_data ~= nil and #self.rank_data > 0 then
		self.rank_scroll_view_content:SetLength(table.count(self.rank_data))
		self.rank_scroll_view_content:SetGridPositionByIndex(0)
		self.rank_scroll_view_content.gameObject:SetActive(true)
	else
		self.rank_scroll_view_content:SetLength(0)
	end
end


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.player_fromUIImage = self:AddComponent(UIImage, "UIImgPanel/player_from_UIImage",AtlasConfig.DynamicTex)
	self.player_iconUIImage = self:AddComponent(UIImage, "UIImgPanel/player_icon_UIButton",AtlasConfig.DynamicTex)
	self.scoreSlider = self:AddComponent(UISlider,"UIImgPanel/bg2/scrollbar")
	self.posImg = self:AddComponent(UIImage,"UIImgPanel/fighting_num_Img",AtlasConfig.DynamicTex)
	self.scoreImg = self:AddComponent(UIImage,"UIImgPanel/score_Img",AtlasConfig.DynamicTex)
	self.tournamentAwardBtn = self:AddComponent(UIButton,"UIImgPanel/score_reward_UIButton")
	self.tournamentAwardBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenAwardWindow(1)
	end)
	self.serverAwardBtn = self:AddComponent(UIButton,"UIImgPanel/team_pos_UIButton")
	self.serverAwardBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.ctrl:OpenAwardWindow(2)
	end)
	self.winNumSlider = self:AddComponent(UISlider,"UIImgPanel/score_scrollbar")
	--寶箱
	self.boxGridObj=self:AddComponent(UIBaseContainer,"UIImgPanel/BoxPanel")
	self.boxList={}
	local count=self.boxGridObj.transform.childCount
	for i = 0, count-1 do
		local tempItem = self.boxGridObj:AddComponent(UIBaseContainer,i)
		local icon = tempItem:AddComponent(UIButton,"box_icon_Img")
		local has_get =tempItem:AddComponent(UIButton,"box_has_get_Img")
		local get=tempItem:AddComponent(UIButton,"box_get_Img")
		local num = tempItem:AddComponent(UIText,"box_num_UIText")
		table.insert(self.boxList,{obj=tempItem,iconBtn = icon,has_getImg = has_get,getBtn=get,numText = num})
	end

	self.select_img =UIUtil.FindTrans(self.transform,"UIImgPanel/select_UIButton")
	self.select_text = self:AddComponent(UIText,"UIImgPanel/select_UIButton/select_UIText")
	self.teamAttackBtn = self:AddComponent(UIButton,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/attackBtn")
	self.teamAttackBtnText = self:AddComponent(UIText,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/attackBtn/attackText")
	self.teamAttackBtnText:SetText(DataUtil.GetClientText(100220))
	self.teamAttackBtn:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self:SetObjActive(1)
		SetBtnParent(self,self.select_img,self.teamAttackBtn.transform)
		self.select_text:SetText(DataUtil.GetClientText(100220))
	end)
	self.reportButton = self:AddComponent(UIButton,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/reportBtn")
	self.reportButtonText = self:AddComponent(UIText,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/reportBtn/reportText")
	self.reportButtonText:SetText(DataUtil.GetClientText(100015))
	self.reportButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self:SetObjActive(2)
		SetBtnParent(self,self.select_img,self.reportButton.transform)
		self.ctrl:RequestReportData()
		self.select_text:SetText(DataUtil.GetClientText(100015))
	end)
	self.posButton = self:AddComponent(UIButton,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/DebrisForMonBtn")
	self.posButtonText = self:AddComponent(UIText,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/DebrisForMonBtn/posText")
	self.posButtonText:SetText(DataUtil.GetClientText(100249))
	self.posButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self:SetObjActive(3)
		SetBtnParent(self,self.select_img,self.posButton.transform)
		self.select_text:SetText(DataUtil.GetClientText(100249))
	end)
	self.rankButton = self:AddComponent(UIButton,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/rankBtn")
	self.rankButtonText = self:AddComponent(UIText,"UIImgPanel/rightBtnPanel/Scroll View/GameObject/rankBtn/DebrisForMonText")
	self.rankButtonText:SetText(DataUtil.GetClientText(100222))
	self.rankButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self:SetObjActive(4)
		self.type = 1
		SetBtnParent(self,self.select_img,self.rankButton.transform)
		self.select_text:SetText(DataUtil.GetClientText(100222))
		if ArenaPVPData:GetInstance().requestRankData then
			self.ctrl:RequestRankData()
		else
			UpdateRankListData(self)
		end
		SetBtnParent(self,self.rankSelect,self.rankOneButton.transform)
		self.myRankNumText:SetText(self.personData.rankServer == -1 and DataUtil.GetClientText(100082) or self.personData.rankServer)
	end)
	self.playerName = self:AddComponent(UIText,"UITextPanel/player_name_UIText")
	self.lvText = self:AddComponent(UIText,"UITextPanel/level_num_UIText")
	self.posText = self:AddComponent(UIText,"UITextPanel/fight_score_num_UIText")
	self.noeScoreText = self:AddComponent(UIText,"UITextPanel/now_score_num_UIText")
	self.winNumWeekText = self:AddComponent(UIText,"UITextPanel/has_get_score_num_UIText")
	self.nextLvText = self:AddComponent(UIText,"UITextPanel/score_num_UIText")

	self.pkInfoPanel = UIUtil.FindTrans(self.transform,"PKInfoPanel")
	self.pkInfoPanel = UIArenaPKInfo.New(self,self.pkInfoPanel.gameObject)
	self.pkInfoPanel:OnCreate()
	self.reportPanel = UIUtil.FindTrans(self.transform,"UIReportPanel")

	self.posShowPanel = UIUtil.FindTrans(self.transform,"UIPosShowPanel")
	self.posShowPanel = UIArenaPosShow.New(self,self.posShowPanel.gameObject)
	self.posShowPanel:OnCreate()
	self.rankPanel = UIUtil.FindTrans(self.transform,"UIRankPanel")

	---战报相关
	self.report_scroll_view_content=self:AddComponent(UIWrapGroup3D,"UIReportPanel/UIReportScrolRect/UIReportGrad",UIArenaPVPReportItem)
	---排行相关
	self.rankSelect = UIUtil.FindTrans(self.transform,"UIRankPanel/bg/selectArenaImg")
	self.rank_scroll_view_content=self:AddComponent(UIWrapGroup3D,"UIRankPanel/rankScrollRect/rankGrid",UIArenaPVPRankItem)
	self.rank_scroll_view_content.gameObject:SetActive(false)
	self.rankOneButton = self:AddComponent(UIButton,"UIRankPanel/bg/rankOneButton")
	self.rankOneButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.type = 1
		if ArenaPVPData:GetInstance().requestRankData then
			self.ctrl:RequestRankData()
		else
			UpdateRankListData(self)
		end
		SetBtnParent(self,self.rankSelect,self.rankOneButton.transform)
		self.myRankNumText:SetText(self.personData.rankServer == -1 and DataUtil.GetClientText(100082) or self.personData.rankServer)
	end)
	self.rankTwoButton = self:AddComponent(UIButton,"UIRankPanel/bg/rankTwoButton")
	self.rankTwoButton:SetOnClick(function ()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		self.type = 2
		if ArenaPVPData:GetInstance().requestAllRankData then
			self.ctrl:RequestAllRankData()
		else
			UpdateRankListData(self)
		end
		SetBtnParent(self,self.rankSelect,self.rankTwoButton.transform)
		self.myRankNumText:SetText(self.personData.rankAllServer == -1 and DataUtil.GetClientText(100082) or self.personData.rankAllServer)
	end)
	self.myRankNumText = self:AddComponent(UIText,"UIRankPanel/bg/myRankNumText")
	self.myNameText = self:AddComponent(UIText,"UIRankPanel/bg/myNameText")
	self.myscoreNumText = self:AddComponent(UIText,"UIRankPanel/bg/myscoreNumText")

	self.resourceBarParent=UIUtil.FindTrans(self.transform,"resourceBarParent")
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIArenaPvp,ResourceBarType.ARENA,self)
	UIUtil.CreatCloseBtnComponent(self,self.resourceBarParent,function(go) self.closeComponent=go end,function()
		self.ctrl:CloseSelf()
		UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIArenaMain")
	end,function()UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIArenaMain") end ,DataUtil.GetClientText(100225),true,7)
	self.fighting_num_UIText = self:AddComponent(UIText,"UITextPanel/fighting_num_UIText")
	self.score_num1_UIText = self:AddComponent(UIText,"UITextPanel/score_num1_UIText")
	self.has_get_UIText = self:AddComponent(UIText,"UITextPanel/has_get_UIText")
	self.week_win_UIText = self:AddComponent(UIText,"UITextPanel/week_win_UIText")
	self.score_reward_UIText = self:AddComponent(UIText,"UITextPanel/score_reward_UIText")
	self.team_pos_UIText = self:AddComponent(UIText,"UITextPanel/team_pos_UIText")
	self.arena_num_UIText = self:AddComponent(UIText,"UITextPanel/arena_num_UIText")
	self.rankOneButtonText = self:AddComponent(UIText,"UIRankPanel/bg/rankOneText")
	self.rankTwoButtonText = self:AddComponent(UIText,"UIRankPanel/bg/rankTwoText")
	self.rankText1 = self:AddComponent(UIText,"UIRankPanel/bg/rankText1")
	self.iconText = self:AddComponent(UIText,"UIRankPanel/bg/iconText")
	self.nameText1 = self:AddComponent(UIText,"UIRankPanel/bg/nameText1")
	self.scoreText1 = self:AddComponent(UIText,"UIRankPanel/bg/scoreText1")
	self.playerIcon = self:AddComponent(UIImage,"UIRankPanel/bg/playerIconImg",AtlasConfig.DynamicTex)
	self.playerFrame = self:AddComponent(UIImage,"UIRankPanel/bg/playerfromImg",AtlasConfig.DynamicTex)
	self.rankText1:SetText(DataUtil.GetClientText(100246))
	self.iconText:SetText(DataUtil.GetClientText(100241))
	self.nameText1:SetText(DataUtil.GetClientText(100242))
	self.scoreText1:SetText(DataUtil.GetClientText(100243))
	self.fighting_num_UIText:SetText(DataUtil.GetClientText(100226))
	self.score_num1_UIText:SetText(DataUtil.GetClientText(100214))
	self.has_get_UIText:SetText(DataUtil.GetClientText(100234))
	self.week_win_UIText:SetText(DataUtil.GetClientText(100008))
	self.score_reward_UIText:SetText(DataUtil.GetClientText(100232))
	self.team_pos_UIText:SetText(DataUtil.GetClientText(100233))
	self.arena_num_UIText:SetText(DataUtil.GetClientText(100227))
	self.rankOneButtonText:SetText(DataUtil.GetClientText(100247))
	self.rankTwoButtonText:SetText(DataUtil.GetClientText(100248))
end

---请求战报
local function OnBattleReturnPlay(self, _data)
	self.ctrl:RequestReportInfoData(_data)
end

local function SetBoxListData(self)
	local boxData = ArenaPVPData:GetInstance().arena_pvp_boxList
	if boxData ~= nil then
		for i, v in ipairs(self.boxList) do
			if boxData[i] == nil then
				v.obj.transform.gameObject:SetActive(false)
			else
				v.obj.transform.gameObject:SetActive(true)
				v.iconBtn.gameObject:SetActive(boxData[i].state == 1)
				if self.personData.victoryTimes > boxData[i].victory_num then
					v.numText:SetText(boxData[i].victory_num.."/"..boxData[i].victory_num)
				else
					v.numText:SetText(self.personData.victoryTimes.."/"..boxData[i].victory_num)
				end
				v.iconBtn:SetOnClick(function()
					if self.personData.victoryTimes > boxData[i].victory_num then
						UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaBoxInfoTip,boxData[i],boxData[i].victory_num.."/"..boxData[i].victory_num,2)
					else
						UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaBoxInfoTip,boxData[i],self.personData.victoryTimes.."/"..boxData[i].victory_num,2)
					end
				end )
				--v.has_getImg:RemoveOnClick()
				v.has_getImg:SetOnClick(function ()
					if self.personData.victoryTimes > boxData[i].victory_num then
						UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaBoxInfoTip,boxData[i],boxData[i].victory_num.."/"..boxData[i].victory_num,2)
					else
						UIManager:GetInstance():OpenWindow(UIWindowNames.UIArenaBoxInfoTip,boxData[i],self.personData.victoryTimes.."/"..boxData[i].victory_num,2)
					end
				end)
				v.getBtn.gameObject:SetActive(boxData[i].state == 2)
				--v.getBtn:RemoveOnClick()
				v.getBtn:SetOnClick(function ()
					--todo 領取寶箱
					self.ctrl:RequestBoxAwardData(boxData[i].id)
				end)
				v.has_getImg.gameObject:SetActive(boxData[i].state == 3)
			end
			self.winNumSlider:SetValue(self.personData.victoryTimes/boxData[3].victory_num)
		end
	end

end

local function SetPlayerInfoData(self)
	--self.playerData = ArenaPVPData:GetInstance():GetArenaPVPData()
	self.personData = ArenaPVPData:GetInstance().arena_pvp_player_data
	self.player_iconUIImage:SetSpriteName(self.personData.icon)
	self.player_fromUIImage:SetSpriteName(self.personData.frame)
	self.playerIcon:SetSpriteName(self.personData.icon)
	self.playerFrame:SetSpriteName(self.personData.frame)
	self.playerName:SetText(self.personData .name)
	self.lvText:SetText(self.personData .lv)
	self.posText:SetText(self.personData .dan)
	self.noeScoreText:SetText(self.personData.score)
	self.posImg:SetSpriteName(self.personData.danIcon)
	self.nextLvText:SetText(self.personData.score.."/"..self.personData.nextScore)
	self.scoreSlider:SetValue(self.personData.score/self.personData.nextScore)
	self.winNumWeekText:SetText(self.personData.victoryTimes)
	self.myNameText:SetText(self.personData.name)
	self.myscoreNumText:SetText(self.personData.score)
	--设置对阵信息
	self.pkInfoPanel:Refresh(ArenaPVPData:GetInstance().arena_pvp_player_data)
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	SetBtnParent(self,self.select_img,self.teamAttackBtn.transform)
	self.select_text:SetText(DataUtil.GetClientText(100220))
	self:SetObjActive(1)
	if ArenaPVPData:GetInstance().arena_pvp_info == nil then
		return
	end
	--玩家信息展示
	SetPlayerInfoData(self)
	--設置段位信息展示
	self.posShowPanel:Refresh(ArenaPVPData:GetInstance().arena_pvp_danList)
	--設置寶箱數據
	SetBoxListData(self)
	ArenaPVPData:GetInstance().requestRankData = true
	ArenaPVPData:GetInstance().requestAllRankData = true
	self.type = 1
end

---挑战点击反馈
local function OnChallengeClick(self,_type)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIPVPTip,_type)
end

local function OnRefresh(self)
	-- 各组件刷新
	
end

--战报刷新
local function UpdateReportListData(self)
	self.report_data = ArenaPVPData:GetInstance().reportList
	if self.report_data ~= nil and #self.report_data > 0 then
		self.report_scroll_view_content.gameObject:SetActive(true)
		self.report_scroll_view_content:SetLength(table.count(self.report_data))
		self.report_scroll_view_content:SetGridPositionByIndex(0)
	else
		self.report_scroll_view_content.gameObject:SetActive(false)
		self.report_scroll_view_content:SetLength(0)
	end
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_ARENA_PVP_REPORT_UPDATE, UpdateReportListData)
	self:AddUIListener(UIMessageNames.UI_ARENA_PVP_RANK_UPDATE,UpdateRankListData)
	self:AddUIListener(UIMessageNames.UI_PVP_ARENA_BOX_DATA_UPDATE,SetBoxListData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_ARENA_PVP_REPORT_UPDATE, UpdateReportListData)
	self:RemoveUIListener(UIMessageNames.UI_ARENA_PVP_RANK_UPDATE,UpdateRankListData)
	self:RemoveUIListener(UIMessageNames.UI_PVP_ARENA_BOX_DATA_UPDATE,SetBoxListData)
end

local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量

end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIArenaPvp)
end

UIArenaPvpView.OnBattleReturnPlay = OnBattleReturnPlay
UIArenaPvpView.OnChallengeClick = OnChallengeClick
UIArenaPvpView.SetObjActive = SetObjActive
UIArenaPvpView.OnDisable = OnDisable
UIArenaPvpView.OnCreate = OnCreate
UIArenaPvpView.OnEnable = OnEnable
UIArenaPvpView.OnRefresh = OnRefresh
UIArenaPvpView.OnAddListener = OnAddListener
UIArenaPvpView.OnRemoveListener = OnRemoveListener
UIArenaPvpView.OnDestroy = OnDestroy

return UIArenaPvpView
