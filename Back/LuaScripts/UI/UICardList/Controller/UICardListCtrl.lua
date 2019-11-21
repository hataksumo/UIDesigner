
--[[
-- 控制层
--]]

local UICardListCtrl = BaseClass("UICardListCtrl", UIBaseCtrl)
local CardList= DataUtil.GetData("card")

local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICardList)
end
----------------------------------------
-----获得卡牌
local function SendComposeRequest(self,_id)
	local msg_id = MsgIDDefine.PBCARD_SYNTHETIC_CARD_REQUEST
	local msg = MsgIDMap[msg_id]()
	msg.cardId = _id
	self.composeCardId = _id
	NetManager:GetInstance():SendMessage(msg_id, msg,Bind(self,self.OnReceiveSyntheticResponse))
end
local function OnReceiveSyntheticResponse(self,msg_obj)
	if msg_obj.OpCode ~= 0 then
		Logger.Log("出错了~")
		return
	end
	local cardData = DataUtil.GetData("card")[self.composeCardId]
	CardData:GetInstance():ParseCardListFromServer(msg_obj.Packages.dropItem.cards)
	BackpackData:GetInstance():UpdateItemData(cardData.DebrisID,-cardData.ComposeNum)
	local cardID=msg_obj.Packages.dropItem.cards[1].id
	--TODO ADD GUOZHAN CARD
	NationCardData:GetInstance():CreateDefaultNationCardByCardId(cardID)

	UIManager:GetInstance():OpenWindow(UIWindowNames.UICardShow,cardID)
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_GET_NEW_CARD,cardID)
end
--升级
local function OnLevelUpBtnClick(self,_id ,cur_lv,upLevel)
	local levelUpRequestMsg_id = MsgIDDefine.PBCARD_CARD_UP_LEVEL_REQUEST
	local levelUpRequestMsg = MsgIDMap[levelUpRequestMsg_id]()
	levelUpRequestMsg.cardId = _id
	levelUpRequestMsg.upLevel = upLevel
	GuideManager:GetInstance():SetGuideServerStep(levelUpRequestMsg)
	self.upLevel = upLevel
	self.nowLevel = cur_lv
	NetManager:GetInstance():SendMessage(levelUpRequestMsg_id,levelUpRequestMsg,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		end
		--DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_OverEvent)
		--更新擦片数据包
		local showCardData = CardData:GetInstance().cards[msg_obj.Params[3]]

		if showCardData ~= nil then
			local nextLevel = math.min(showCardData.maxLevelByHell,  msg_obj.Params[2] + msg_obj.Params[1])
			local levelUpExp = DataUtil.GetCardLevelUpNeedExp(msg_obj.Params[2], nextLevel, showCardData.quality)
			--更新卡片
			CardData:GetInstance():UpdateCardDataByLevel(showCardData.id, nextLevel)
			--更新背包
			BackpackData:GetInstance():UpdateItemData(showCardData.type == 1 and CoinDefine.HostExp or CoinDefine.GuardExp, -levelUpExp)
			local weapon = WeaponData:GetInstance().weapons[msg_obj.Params[3]]
			if weapon then
				weapon:UpdateSelf()
			end
			UISpecial:GetInstance():UITipText("升级成功")
			--UIManager:GetInstance():Broadcast(UIMessageNames.UI_NEWCARD_BREAK_SUCCESS,1)
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_NEWCARD_HEROEFFECT)
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_NEWUICARD_GET_NEW_CARD,_id)
		end
	end,{upLevel,cur_lv,_id})
end


--升星
local function UpStarFunc(self)
	--card_up_star_request
	local msdId = MsgIDDefine.PBCARD_CARD_UP_STAR_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.cardId = self.model.select_card_id
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return

		end

		local starlv =CardData:GetInstance().cards[self.model.select_card_id].starlv
		UIManager:GetInstance():OpenWindow(UIWindowNames.UICardUpTip,2,self.model.select_card_id,starlv);
		local cost = CardList[self.model.select_card_id].stars[starlv+1].Cost
		--  TODO 去掉消耗品
		CardData:GetInstance():UpdateCardDataByStar(self.model.select_card_id, starlv+1)
		for i = 1, #cost do
			BackpackData:GetInstance():UpdateItemData(cost[i].Id, -cost[i].Val)
		end

		local function GetWindow()
			return UIManager:GetInstance():GetWindow(UIWindowNames.UICardUpTip,true,true)~=nil
		end
		coroutine.start(function()
			coroutine.waituntil(GetWindow)
			--派发刷新界面
			DataManager:GetInstance():Broadcast(DataMessageNames.UI_CARD_STAR_REFRESH)
		end
		)


	end)
end
--更换武器
local function ChangeWeapon(self,game)
	local cardData = CardData:GetInstance().cards[self.model.select_card_id]
	if cardData == nil then
		Logger.LogError("---------->换装找不到卡牌")
		return
	end
	if self.model.select_card_id ~= 1102002 then
		Logger.Log("---------->除了许褚其他不换装")
		return
	end
	local msdId = MsgIDDefine.PBCARD_CARD_CHANGE_WEAPON_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.cardId = self.model.select_card_id
	msdObj.weaponId = 1-cardData.weaponId
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		end
		cardData.weaponId = 1-cardData.weaponId
		if not IsNull(game) then
			RolePartUtil.RolePartLoad(game,cardData.id,cardData.weaponId)
		end
	end)
end
--获取国战卡牌数据
local function GetCardNationDataByCardID(self, isSendNetMsg, cardId)
    if isSendNetMsg then
        local msgId = MsgIDDefine.PBUSER_PLAYER_DATA_REQUEST
        local msgObj = MsgIDMap[msgId]()
        msgObj.cardId = cardId or self.model.select_card_id
        NetManager:GetInstance():SendMessage(msgId, msgObj, function(msg_obj)
            if msg_obj.OpCode ~= 0 then
                Logger.Log("获取卡牌国战属性出错了~")
                UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
                return
            end

            --派发
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_CARD_NATION_DATA_UPDATE, msg_obj.Packages)
        end)
    else
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_CARD_NATION_DATA_UPDATE)
    end
end

-----------------------------------------
UICardListCtrl.ChangeWeapon = ChangeWeapon
UICardListCtrl.CloseSelf = CloseSelf
UICardListCtrl.SendComposeRequest=SendComposeRequest
UICardListCtrl.OnReceiveSyntheticResponse = OnReceiveSyntheticResponse
UICardListCtrl.OnLevelUpBtnClick = OnLevelUpBtnClick
UICardListCtrl.UpStarFunc=UpStarFunc
UICardListCtrl.GetCardNationDataByCardID = GetCardNationDataByCardID
return UICardListCtrl