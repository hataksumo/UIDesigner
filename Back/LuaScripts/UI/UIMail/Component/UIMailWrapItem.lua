---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2018/11/27 14:02
---
local UIMailWrapItem=BaseClass("UIMailWrapItem",UIWrapComponent)
local base = UIWrapComponent

local function SetSingleMailData(self,_data)
    if self.view.singlemaildata.id ==  _data.id then
        self.mail_red_point.gameObject:SetActive(false)
    end
    if _data.mailDrawst==1 then--无附件
        self.mail_item_icon.gameObject:SetActive(false)
        self.mail_get_state.gameObject:SetActive(false)
        self.mail_get_state_bg.gameObject:SetActive(false)
        if _data.mailState==1 then--无附件未读
            self.mail_close.gameObject:SetActive(true)
            self.mail_open.gameObject:SetActive(false)

            self.mail_get_state.gameObject:SetActive(true)
            self.mail_get_state:SetSpriteName("ui_t_c2_172")
            self.mail_get_state_Text:SetText("新邮件")
        end
        if _data.mailState==2 then-- --无附件已读

            self.mail_close.gameObject:SetActive(false)
            self.mail_open.gameObject:SetActive(true)
            self.mail_red_point.gameObject:SetActive(false)
            self.mail_get_state_bg.gameObject:SetActive(true)
        end
    end
    if _data.mailDrawst==2 then--有附件未领取
        self.mail_get_state.gameObject:SetActive(true)
        self.mail_get_state:SetSpriteName("ui_t_c2_172")
        self.mail_get_state_Text:SetText("未领取")
        self.mail_get_state:SetSpriteName("ui_t_c2_172")
        self.mail_get_state_Text:SetText("未领取")
        self.mail_get_state_bg.gameObject:SetActive(false)
        self.mail_item_icon.gameObject:SetActive(true)
        self.mail_close.gameObject:SetActive(false)
        self.mail_open.gameObject:SetActive(false)
        self.mail_red_point.gameObject:SetActive(true)
        if _data.awardlist[1]~= nil then
            self.mail_item_icon:SetSpriteName(_data.awardlist[1].icon)
        end
    end
    if _data.mailDrawst==3  then --有附件已领取
        self.mail_item_icon.gameObject:SetActive(true)
        self.mail_close.gameObject:SetActive(false)
        self.mail_open.gameObject:SetActive(false)
        self.mail_get_state.gameObject:SetActive(true)
        self.mail_get_state:SetSpriteName("ui_t_c2_173")
        self.mail_get_state_Text:SetText("已领取")
        if self.view.singlemaildata.id ==  _data.id then
            self.mail_get_state_bg.gameObject:SetActive(false)
        else
            self.mail_get_state_bg.gameObject:SetActive(true)
        end
        self.mail_red_point.gameObject:SetActive(false)
        if _data.awardlist[1] ~= nil then
            self.mail_item_icon:SetSpriteName(_data.awardlist[1].icon)
        end
    end
end

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnMailItemClick(self)
    self.view:SetSelectMailInfo(self.index)
    if self.mail_single_data.mailDrawst ==1 and self.mail_single_data.mailState ==1 then--无附件请求未读状态请求
        self.mail_close.gameObject:SetActive(false)
        self.mail_open.gameObject:SetActive(true)
        self.mail_red_point.gameObject:SetActive(false)
    end

end


local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.mail_title=self:AddComponent(UIText,"TitleText")
    self.mail_send_person=self:AddComponent(UIText,"SendPersonText")
    self.mail_send_time=self:AddComponent(UIText,"SendTimeText")
    self.mail_close=UIUtil.FindTrans(self.transform,"MailCloseImg")
    self.mail_open=UIUtil.FindTrans(self.transform,"MailOpenImg")
    self.mail_item_icon=self:AddComponent(UIImage,"ItemIconImg",AtlasConfig.DynamicTex)
    self.mail_red_point=UIUtil.FindTrans(self.transform,"RedPointImg")
    self.mail_get_state=self:AddComponent(UIImage,"GetStateImg",AtlasConfig.DynamicTex)
    self.mail_get_state_Text=self:AddComponent(UIText,"GetStateImg/stateText")
    self.mail_get_state_bg=UIUtil.FindTrans(self.transform,"GetStateBgImg")
    --self.mail_item_icon=self:AddComponent(UIImage,"ItemIcon",AtlasConfig.Mail)
    self.mail_item=self:AddComponent(UIButton,"bgclick")
    self.mail_item:SetOnClick(self,OnMailItemClick)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    local MailData=self.view.itemList[real_index+1]
    self.mail_single_data=MailData
    self.mail_title:SetText(MailData.titleName)
    self.mail_send_person:SetText("发件人 :"..MailData.sendName)
    self.mail_send_time:SetText("时   间 :"..os.date("%Y-%m-%d",math.floor(MailData.sendTime/1000)))
    self.index = real_index+1
    self.slect=UIUtil.FindTrans(self.transform,"bgbtn/Slect")
     if self.view.singlemaildata~=nil and self.view.singlemaildata.id ==  self.mail_single_data.id then
        if self.slect~=nil and  not self.slect.gameObject.activeInHierarchy then
            self.slect.gameObject:SetActive(true)
        end
    else
        if self.slect~=nil and self.slect.gameObject.activeInHierarchy then
            self.slect.gameObject:SetActive(false)
        end
    end
    if self.view.singlemaildata~=nil then
        SetSingleMailData(self, self.mail_single_data)
    end

end

UIMailWrapItem.OnCreate = OnCreate
UIMailWrapItem.OnItemClick=OnMailItemClick
UIMailWrapItem.OnRefresh=OnRefresh

return UIMailWrapItem