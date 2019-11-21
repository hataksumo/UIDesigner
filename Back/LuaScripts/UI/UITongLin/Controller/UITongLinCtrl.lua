
--[[
-- 控制层
--]]

local UITongLinCtrl = BaseClass("UITongLinCtrl", UIBaseCtrl)
local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UITongLin)
end
--self.data_state = 0  -- 0-为请求 1-请求中  2-请求结束
local function ClickGetBtn(self,click_data_id)
	--这里判断背包有无  打开二级界面

	local msdId = MsgIDDefine.PBCARD_CARD_CHANNELING_REQUEST
	local msdObj = MsgIDMap[msdId]()
	msdObj.channelingId = click_data_id
	self.data_state = 1
	--调完协议放到协议里
	NetManager:GetInstance():SendMessage(msdId,msdObj,function(msg_obj)
		--print("收到协议--1")
		if msg_obj.OpCode ~= 0 then
			Logger.Log("OnRecvPveStart出错了~")
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
			return
		end
		self.data_state=2

		if msg_obj.Packages.cardId and  msg_obj.Packages.dropItem then
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_GET_RESULT_TONGLING,click_data_id)
			--检查 是否拥有
			local havethiscard=false
			if CardData:GetInstance():GetCardDataById(msg_obj.Packages.cardId)~=nil then
				havethiscard=true
			end
			DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
			if havethiscard then
				UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem)
			else
				UIManager:GetInstance():OpenWindow(UIWindowNames.UICardShow,msg_obj.Packages.cardId)
			end

		end
	end)
end
UITongLinCtrl.CloseSelf = CloseSelf
UITongLinCtrl.ClickGetBtn = ClickGetBtn
--UITongLinCtrl.OpenSuccessWindow =OpenSuccessWindow
return UITongLinCtrl