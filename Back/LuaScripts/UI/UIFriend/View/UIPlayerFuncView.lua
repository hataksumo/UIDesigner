--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UIPlayerFuncView = BaseClass("UIPlayerFuncView", UIBaseView)
local base = UIBaseView

local function CloseWindow()
    UIManager:GetInstance():CloseWindow(UIWindowNames.UIPlayerFunc)
end

local function OpenDealWindow(self, type, str)
    self.deal_con_game:SetActive(true)
    self.deal_text:SetText(str)
    self.type = type
end

local function OpenApplyWindow(self)
    self.add_friend_input:SetText("")
    self.add_con_game:SetActive(true)
end

local function OnCreate(self)
    base.OnCreate(self)

    --TODO:此处点击关闭按钮被舍弃了，暂时注销处理
    -- self.close_btn = self:AddComponent(UIButton,"Close")
	-- self.close_btn:SetOnClick(CloseWindow)
	self.closeBtn=self:AddComponent(UIButton,"BG");
    self.closeBtn:SetOnClick(function()
        CloseWindow();
    end)
    -- 初始化各个组件
    self.btn_group = {
        {btn = false, text = false, img = false},
        {btn = false, text = false, img = false},
        {btn = false, text = false, img = false},
        {btn = false, text = false, img = false},
        {btn = false, text = false, img = false},
        {btn = false, text = false, img = false},
        {btn = false, text = false, img = false},
        {btn = false, text = false, img = false}
    }
    self.btn_group_game = UIUtil.FindTrans(self.transform, "BtnGroup").gameObject
    self.btn_group[1].btn = self:AddComponent(UIButton, "BtnGroup/Del")
    self.btn_group[1].btn:SetOnClick(
        function()
            if self.model.type == 1 then
                OpenDealWindow(
                    self,
                    4,
                    string.format(
                        DataUtil.GetClientText(100073),
                        FriendData:GetInstance():GetFriendData(self.model.id).name
                    )
                )
                self.btn_group_game:SetActive(false)
            elseif self.model.type == 0 then
                OpenApplyWindow(self)
                self.btn_group_game:SetActive(false)
            else
                UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100072))
            end
        end
    )
    self.btn_group[1].text = self:AddComponent(UIText, "BtnGroup/Del/DelText")
    self.btn_group[1].img = self:AddComponent(UIImage, "BtnGroup/Del")

    self.btn_group[2].btn = self:AddComponent(UIButton, "BtnGroup/Chat")
    self.btn_group[2].btn:SetOnClick(
        function()
            CloseWindow()
            FriendData:GetInstance():CheckHavePlayer(self.model.id)
            if UIManager:GetInstance():GetWindow(UIWindowNames.UIChat, true, true) ~= nil then
                UIManager:GetInstance():CloseWindow(UIWindowNames.UIChat)
            end
            if UIManager:GetInstance():GetWindow(UIWindowNames.UIFriend, true, true) == nil then
                UIManager:GetInstance():OpenWindow(UIWindowNames.UIFriend, self.model.id)
            end
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_OPEN_FRIEND_CHAT, self.model.id)
        end
    )
    self.btn_group[2].text = self:AddComponent(UIText, "BtnGroup/Chat/ChatText")
    self.btn_group[2].img = self:AddComponent(UIImage, "BtnGroup/Chat")

    self.btn_group[3].btn = self:AddComponent(UIButton, "BtnGroup/LookAt")
    self.btn_group[3].text = self:AddComponent(UIText, "BtnGroup/LookAt/LookAtText")
    self.btn_group[3].img = self:AddComponent(UIImage, "BtnGroup/LookAt")

    self.btn_group[4].btn = self:AddComponent(UIButton, "BtnGroup/Invite")
    self.btn_group[4].text = self:AddComponent(UIText, "BtnGroup/Invite/InviteText")
    self.btn_group[4].img = self:AddComponent(UIImage, "BtnGroup/Invite")

    self.btn_group[5].btn = self:AddComponent(UIButton, "BtnGroup/Invite2")
    self.btn_group[5].text = self:AddComponent(UIText, "BtnGroup/Invite2/Invite2Text")
    self.btn_group[5].img = self:AddComponent(UIImage, "BtnGroup/Invite2")

    self.btn_group[6].btn = self:AddComponent(UIButton, "BtnGroup/Gift")
    self.btn_group[6].text = self:AddComponent(UIText, "BtnGroup/Gift/GiftText")
    self.btn_group[6].img = self:AddComponent(UIImage, "BtnGroup/Gift")

    self.btn_group[7].btn = self:AddComponent(UIButton, "BtnGroup/Report")
    self.btn_group[7].text = self:AddComponent(UIText, "BtnGroup/Report/ReportText")
    self.btn_group[7].img = self:AddComponent(UIImage, "BtnGroup/Report")

    self.btn_group[8].btn = self:AddComponent(UIButton, "BtnGroup/Black")
    self.btn_group[8].btn:SetOnClick(
        function()
            if self.model.type == 2 then
                FriendData:GetInstance():DealFriend(8, self.model.id)
                CloseWindow()
            else
                OpenDealWindow(
                    self,
                    5,
                    "是否确定将" .. ChatData:GetInstance():FindPlayerInfo(self.model.id).name .. "加入黑名单？"
                )
                self.btn_group_game:SetActive(false)
            end
        end
    )
    self.btn_group[8].text = self:AddComponent(UIText, "BtnGroup/Black/BlackText")
    self.btn_group[8].img = self:AddComponent(UIImage, "BtnGroup/Black")

    self.deal_con_game = UIUtil.FindTrans(self.transform, "DealWindow").gameObject
    self.deal_con_game:SetActive(false)
    self.deal_text = self:AddComponent(UIText, "DealWindow/DealText")

    local btn = self:AddComponent(UIButton, "DealWindow/DealConfirm")
    btn:SetOnClick(
        function()
            FriendData:GetInstance():DealFriend(self.type, self.model.id)
            CloseWindow()
        end
    )

    btn = self:AddComponent(UIButton, "DealWindow/DealCancel")
    btn:SetOnClick(
        function()
            CloseWindow()
        end
    )

    self.gray_mat = self.btn_group[1].img:GetMat()
    self.btn_group[1].img:SetMat(nil)

    self.add_con_game = UIUtil.FindTrans(self.transform, "AddFriendWindow").gameObject
    self.add_friend_input = self:AddComponent(UIInput, "AddFriendWindow/AddFriendInput")
    btn = self:AddComponent(UIButton, "AddFriendWindow/Confirm")
    btn:SetOnClick(
        function()
            local str = self.add_friend_input:GetText()
            --ChatData:GetInstance():AddNewChat(str)
            FriendData:GetInstance():DealFriend(1, self.model.id, str)
            self.add_friend_input:SetText("")
            CloseWindow()
        end
    )
    btn = self:AddComponent(UIButton, "AddFriendWindow/CloseAdd")
    btn:SetOnClick(CloseWindow)
end

local function OnEnable(self)
    base.OnEnable(self)
    self:OnRefresh()
    self.btn_group_game:SetActive(true)
    self.deal_con_game:SetActive(false)
    self.add_con_game:SetActive(false)
end

local function OnRefresh(self)
    -- 各组件刷新
    for i, v in ipairs(self.btn_group) do
        if i == 1 or i == 8 or i == 2 then
            v.btn.gameObject:SetActive(true)
        else
            v.btn.gameObject:SetActive(false)
        end
    end
    if self.model.type == 1 then
        self.btn_group[1].text:SetText("删除好友")
        self.btn_group[1].text:SetColor32(239, 234, 222, 255)
        self.btn_group[1].img:SetMat(nil)
        self.btn_group[8].text:SetText("拉黑")
    elseif self.model.type == 2 then
        self.btn_group[1].text:SetText("加为好友")
        self.btn_group[1].text:SetColor32(239, 234, 222, 255)
        self.btn_group[1].img:SetMat(self.gray_mat)
        self.btn_group[8].text:SetText("移除黑名单")
    else
        self.btn_group[1].text:SetText("加为好友")
        self.btn_group[1].text:SetColor32(239, 234, 222, 255)
        self.btn_group[1].img:SetMat(nil)
        self.btn_group[8].text:SetText("拉黑")
    end
end

UIPlayerFuncView.OnCreate = OnCreate
UIPlayerFuncView.OnEnable = OnEnable
UIPlayerFuncView.OnRefresh = OnRefresh

return UIPlayerFuncView
