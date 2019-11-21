
--[[
-- 控制层
--]]

local UIGetNewCardCtrl = BaseClass("UIGetNewCardCtrl", UIBaseCtrl)

--刷新消耗
local function UpdateBackpackCost(self,_id,_type)
	local drawListData=DataUtil.GetData("card_draw_option");
	local totalNum=_type==1 and 1 or 10;
	for i, v in ipairs(drawListData) do
		if v.ID==_id then
			--先计算花费的券
			local haveTicketNum=BackpackData:GetInstance():GetItemNumById(v.Cost.ID);
			local useNum=0
			if haveTicketNum>0 then
				useNum=haveTicketNum-totalNum>=0 and totalNum or haveTicketNum;
				BackpackData:GetInstance():UpdateItemData(v.Cost.ID,-useNum)
			end
			--计算替代物品消耗
			if v.ID~=4 then
				local singlePrice=v.SubCost.Val;
				local costNum=(totalNum-useNum)*singlePrice;
				BackpackData:GetInstance():UpdateItemData(v.SubCost.ID,-costNum)
			end

		end
	end
end

local function BeginDrawCard(self,id,_type,_callback)
	--关门聊条聊天
	UIUtil.SetChatImgStatus(false)
	local msdId = MsgIDDefine.PBCARD_CARD_RANDOM_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.poolId = id
	msdObj.count=_type==1 and 1 or 10;
	self.poolId=id
	GuideManager:GetInstance():SetGuideServerStep(msdObj)
	NetManager:GetInstance():SendMessage(msdId,msdObj,function (msg_obj)
		UIManager:GetInstance():Broadcast(UIMessageNames.UIGACHA_SET_MASK_ACTIVE,true)

		if msg_obj.OpCode ~= 0 then
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		end
		UpdateBackpackCost(self,id,_type);
		UserData:GetInstance():RefreshDrawList(id,msg_obj.Packages.lucky,_type);
		if _callback~=nil then
			_callback()
		end
		local cardNewList={}
		local newList={}
		local newCardIds = {}
		for i, v in ipairs(msg_obj.Packages.cardIds) do
			local isNew=true;
			if CardData:GetInstance():GetCardDataById(v)~=nil then
				isNew=false;
			else
				if newList[v]~=nil then
					isNew=false;
				else
					newList[v]=0;
				end
			end
			if isNew then
				table.insert(newCardIds,v)
			end
			table.insert(cardNewList,isNew);
		end
		self.isJumpId = CS.UnityEngine.PlayerPrefs.GetInt(ClientData:GetInstance().user_id.."jump")
		if self.isJumpId ~= nil and self.isJumpId == 1 then
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIGetNewCardResult,msg_obj.Packages.cardIds,self.poolId,cardNewList,_type)
		else
			LJAudioManger:GetInstance():PlayVoice("UI_Card_01")
			TimerManager:GetInstance():SimpleTimerArgs(7,function ()
				UIManager:GetInstance():OpenWindow(UIWindowNames.UIGetNewCardResult,msg_obj.Packages.cardIds,self.poolId,cardNewList,_type)
			end,nil,true)
		end
		--local cardPoolXlsx =  DataUtil.GetData("card_random_pool");
		--if cardPoolXlsx[self.poolId]~=nil then
		--	local singlPool=cardPoolXlsx[self.poolId];
		--	GameChannelMgr:GetInstance().DataReport:PurchaseTrace({[1]=string.format("%s",singlPool.PoolName),[2]=singlPool.RandomCount,[3]=0});
		--end

		local dropItem = msg_obj.Packages.dropItem
		if not dropItem ._is_null then
			DataUtil.ParseDropItem(dropItem)
		else
			Logger.Log("服务器返回空")
		end
		--TODO ADD GUOZHAN CARD
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_GET_NEW_CARD_REFRESH);
		NationCardData:GetInstance():CreateDefaultNationCardByCardIdList(newCardIds)
	end)
end

local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIGetNewCard)
end

UIGetNewCardCtrl.BeginDrawCard = BeginDrawCard
UIGetNewCardCtrl.CloseSelf = CloseSelf

return UIGetNewCardCtrl