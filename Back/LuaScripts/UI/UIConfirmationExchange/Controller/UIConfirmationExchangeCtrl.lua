
--[[
-- 控制层
--]]

local UIConfirmationExchangeCtrl = BaseClass("UIConfirmationExchangeCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIConfirmationExchange)
end
--兑换金币
local function BeginExchangeCoin(self,frequency,typeValue,costDiamondNumber,getGoldsNumber)
	local msdId = MsgIDDefine.PBITEM_COIN_EXCHANGE_REQUEST
	local msdObj = MsgIDMap[msdId]()
	Logger.LogAny(frequency)
	msdObj.type=typeValue
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100081))
			return
		end
		if (frequency>1) then
			UserData:GetInstance().buy_coin_times=UserData:GetInstance().buy_coin_times+frequency
		end
		if(frequency==1) then
			UserData:GetInstance().buy_coin_times=UserData:GetInstance().buy_coin_times+1
		end
		UISpecial:GetInstance():UITipText("兑换成功")
		BackpackData:GetInstance():UpdateItemData(CoinDefine.Diamond,-costDiamondNumber)
		BackpackData:GetInstance():UpdateItemData(CoinDefine.Gold,getGoldsNumber)
		UIManager:GetInstance():Broadcast(UIMessageNames.ON_EXCHANGE_COIN)
	end)
end

UIConfirmationExchangeCtrl.CloseSelf = CloseSelf
UIConfirmationExchangeCtrl.BeginExchangeCoin=BeginExchangeCoin
return UIConfirmationExchangeCtrl