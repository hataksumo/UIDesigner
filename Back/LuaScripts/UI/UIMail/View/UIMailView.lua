--[[
-- added by ljl @ 2018-11-26
-- UIMail视图层
-- 注意：
-- 1、成员变量最好预先在__init函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UIMailWrapItem=require"UI.UIMail.Component.UIMailWrapItem"
local UIMailRewardsWrapItem = require "UI.UIMail.Component.UIMailAwardItem"
local UIMailView=BaseClass("UIMailView",UIBaseView)
local base=UIBaseView
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");
local item_scroll_rect_path="right panel/include r/MailInfoRoot/Panelr/MailAwardScrollViem/MailAwardScrollRect";
local left_empty_panel_path="left panel/include l/AllMailScrollView/emptyLeft";
local right_empty_panel_path="right panel/include r/MailInfoRoot/emptyRight";

local function OnCreate(self)
    base.OnCreate(self)
    self.TitleBar=UIUtil.FindTrans(self.transform,"TopLeft")
    UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
        self.ctrl:CloseSelf()
    end,function ()
        self.mailindex = nil
        self.backMainCityAnim:Play("ef_ui_UI Generic board back")
        LJAudioManger:GetInstance():PlayVoice("UI_Brush_04")
        TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
            UIUtil.BackHomeMain()
        end,nil,true)
    end ,"邮件",false,0,true)
    self.leftEmptyPanel=UIUtil.FindTrans(self.transform,left_empty_panel_path);
    self.rightEmptyPanel=UIUtil.FindTrans(self.transform,right_empty_panel_path);

    self.select_img=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"rightBtnPanel/SelectBtn")
    self.select_text = self:AddComponent(UIText,"rightBtnPanel/SelectBtn/SelectText")

    --全部按钮
    self.all_btn=self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/AllBtn")
    self.all_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.SetBtnParent(self,self.select_img,self.all_btn.transform)
        self.select_text:SetText(DataUtil.GetClientText(100013))
        self.btntype=1
        self: SetSingleMailCount(1)
    end
    )
    self.itemScrollRect=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.UI.ScrollRect),item_scroll_rect_path);
    --系统按钮
    self.system_btn=self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/SysteBtn")
    self.system_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.SetBtnParent(self,self.select_img,self.system_btn.transform)
        self.select_text:SetText(DataUtil.GetClientText(100014))
        self.btntype=2
        self: SetSingleMailCount(1)
    end)

    --战报按钮
    self.report_btn=self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/ReportBtn")
    self.report_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.SetBtnParent(self,self.select_img,self.report_btn.transform)
        self.select_text:SetText(DataUtil.GetClientText(100015))
        self.btntype=3
        self: SetSingleMailCount(1)
    end)
    self.report_btn.gameObject:SetActive(false)
    --左边panel
    self.leftpanel=UIUtil.FindTrans(self.transform,"left panel/include l/AllMailScrollView/Panell")
    --右边panel
    self.rightpanel=UIUtil.FindTrans(self.transform,"right panel/include r/MailInfoRoot/Panelr")
    --一键领取按钮
    self.all_get_btn=self:AddComponent(UIButton,"left panel/include l/AllMailScrollView/Panell/AllGetBtn")
    self.all_get_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.get_num = 0
        if self.itemList==nil or #self.itemList ==0 then
            self.ctrl:OnNullDelegateMail()
            return
        end
        for i = 1, #self.itemList do
            if self.itemList[i].mailDrawst==2 then
                self.ctrl:SendAllGetMailsRequest()
                return
            else
              self.get_num = self.get_num + 1
            end
        end
        if self.get_num ==  #self.itemList then
            UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100032))
        end
    end)
    --一键删除按钮
    self.all_deleate_btn=self:AddComponent(UIButton,"left panel/include l/AllMailScrollView/Panell/AllDeleateBtn")
    self.all_deleate_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        UIManager:GetInstance():OpenTwoButtonTip("提示","是否删除全部已领邮件？","确定","取消",function()
            self.dele_num = 0
            if self.itemList==nil or #self.itemList ==0 then
                self.ctrl:OnNullDelegateMail()
                return
            end
            for _, v in ipairs(self.itemList) do
                if v.mailDrawst ~= 2 then
                    self.ctrl:SendDelegateAllMaillsRequest(self.itemList)
                    return
                else
                    self.dele_num = self.dele_num +1
                end
            end
            if self.dele_num == #self.itemList then
                UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100032))
            end
        end,nil)
    end)
    self.mail_get_btn_text=self:AddComponent(UIText,"right panel/include r/MailInfoRoot/Panelr/GetBtn/GetText")
    --领取按钮
    self.get_btn=self:AddComponent(UIButton,"right panel/include r/MailInfoRoot/Panelr/GetBtn")
    self.get_btn:SetOnClick(function()
        if self.singlemaildata==nil then
            return
        end
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        if self.singlemaildata.mailDrawst==1 and self.singlemaildata.mailState== 2 then--没附件已读的
            self.ctrl:SendDelegateMailRequest(self.singlemaildata.id)
        end
        if self.singlemaildata.mailDrawst==2 then--未领取请求领取
            self.ctrl:SendGetMailRewardRequest(self.singlemaildata.id)
        end
        if self.singlemaildata.mailDrawst==3 then--已领取请求删除
            self.mailindex=1
            self.ctrl:SendDelegateMailRequest(self.singlemaildata.id)
        end

    end)
    self.all_mail_scroll_content=self:AddComponent(UIWrapGroup3D,"left panel/include l/AllMailScrollView/Panell/AllMailScrollRect/AllMailScrollContent",UIMailWrapItem)
    self.mail_single_info=UIUtil.FindTrans(self.transform,"right panel/include r/MailInfoRoot")

    self.mail_single_info_title=self:AddComponent(UIText,"right panel/include r/MailInfoRoot/Panelr/TitleText")
    self.mail_single_info_send_people=self:AddComponent(UIText,"right panel/include r/MailInfoRoot/Panelr/SendText")
    self.mail_single_info_info=self:AddComponent(UIText,"right panel/include r/MailInfoRoot/Panelr/ScrollRect (1)/InfoText")
    self.mail_singlle_info_time=self:AddComponent(UIText,"right panel/include r/MailInfoRoot/Panelr/TimeText")

    self.mail_item_scroll=UIUtil.FindTrans(self.transform,"right panel/include r/MailInfoRoot/Panelr/MailAwardScrollViem")
    self.mail_item_scroll_content=self:AddComponent(UIWrapGroup3D,"right panel/include r/MailInfoRoot/Panelr/MailAwardScrollViem/MailAwardScrollRect/MailAwardScrollContent",UIMailRewardsWrapItem)
    self.mail_null_items_img=UIUtil.FindTrans(self.transform,"right panel/include r/MailInfoRoot/Panelr/MailAwardScrollViem/NullItemsImg")
    self.mail_null_items_img.gameObject:SetActive(false)
    --self.mail_single_info.gameObject:SetActive(false)
    self.nullImg=self:AddComponent(UIImage,"NullCenter/nullImg/nullImg",AtlasConfig.DynamicTex)
    self.nullImg:SetSpriteName("ui_t_c2_230")
    self.nullObj=UIUtil.FindTrans(self.transform,"NullCenter/nullImg")
    self.nullObj.gameObject:SetActive(false)
    self.SlectObj=UIUtil.FindTrans(self.transform,"left panel/include l/AllMailScrollView/Panell/AllMailScrollRect/Slect")

    self.resourceBarParent=UIUtil.FindTrans(self.transform,"resourceBarParent");
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIMail,ResourceBarType.BAGPACK,self)
    self.backMainCityAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"")
end

--设置按钮的父物体
local function SetBtnParent(self,child,parent)
    child.transform:SetParent(parent)
    child.localScale=Vector3.New(1,1,1)
    child.anchoredPosition=Vector2.New(0,0)
    --child:SetAsFirstSibling()
    child.gameObject:SetActive(true)

end

--设置单封邮件的信息
local function SetSelectMailInfo(self,index)
    self.mailindex=index
    local trans = self.all_mail_scroll_content:GetComponentByIndex(index-1)
    if trans ~= nil then
        self.SlectObj.transform:SetParent(trans.transform:GetChild(1))
        self.SlectObj.transform.anchoredPosition = Vector3.zero
        self.SlectObj.gameObject:SetActive(true)
    end
    if #self.itemList<=0 then
        return
    end
    --self.mail_single_info.gameObject:SetActive(true)
    self.singlemaildata=self.itemList[index]
    if self.singlemaildata.mailDrawst ==1 and self.singlemaildata.mailState ==1 then--无附件请求未读状态请求
        self:SetSingleMailReadRequest(self.singlemaildata.id,self.mailindex)
    end
    self.all_mail_scroll_content:WrapContent(true)
    if  self.itemList[index]==nil then
        return
    end
    if self.itemList[index].mailDrawst==1 and self.itemList[index].mailState==2 then
        self.mail_get_btn_text:SetText(DataUtil.GetClientText(100016))
        self.mail_item_scroll.gameObject:SetActive(false)
        self.mail_null_items_img.gameObject:SetActive(true)
    end
    if self.itemList[index].mailDrawst==2 then
        self.mail_item_scroll.gameObject:SetActive(true)
        self.mail_null_items_img.gameObject:SetActive(false)
        self.mail_get_btn_text:SetText(DataUtil.GetClientText(100017))
    end
    if self.itemList[index].mailDrawst==3 then
        self.mail_item_scroll.gameObject:SetActive(true)
        self.mail_null_items_img.gameObject:SetActive(false)
        for i, v in ipairs(self.itemList[index].awardlist) do
            v.state = 2
        end
        self.award=self.itemList[index].awardlist
        self.mail_item_scroll_content:WrapContent(true)
        self.mail_get_btn_text:SetText(DataUtil.GetClientText(100016))
    end
    if self.itemList[index].mailDrawst~=1 then
        self.award=self.itemList[index].awardlist
        if  self.award~=nil and #self.award > 0 then
            self.mail_get_btn_text.gameObject:SetActive(true)
            self.get_btn.gameObject:SetActive(true)
            self.mail_item_scroll_content:SetLength(table.count(self.award))
            self.mail_item_scroll_content:ResetToBeginning()
        else
            self.mail_item_scroll_content:SetLength(0)
            self.mail_get_btn_text.gameObject:SetActive(false)
            self.get_btn.gameObject:SetActive(false)
        end
    end
    self.mail_single_info_title:SetText( self.itemList[index].titleName)
    self.mail_single_info_send_people:SetText( self.itemList[index].sendName)
    self.mail_single_info_info:SetText( self.itemList[index].mailContent)
    self.mail_singlle_info_time:SetText(os.date("%Y-%m-%d",math.floor(self.itemList[index].sendTime/1000)))
end
--设置邮件列表
local function SetSingleMailCount(self,index)
    if self.btntype==1 then
        --全部
        self.itemList=self.model.mail_All_Data
    elseif self.btntype==2 then
        --系统
        self.itemList= self.model.mail_System_Data
    elseif self.btntype==3then
        --系统
        self.itemList=self.model.mail_Report_Data
    end

    local length = 0
    if self.itemList then
        length=#self.itemList
    end
    if  length>0 then
        self.all_mail_scroll_content:SetLength(table.count(self.itemList))
        self.all_mail_scroll_content:SetGridPositionByIndex(0)
        --self.nullObj.gameObject:SetActive(false)
    else
        self.all_mail_scroll_content:SetLength(0)
        --self.nullObj.gameObject:SetActive(true)
    end
    self.leftpanel.gameObject:SetActive(length>0)
    self.rightpanel.gameObject:SetActive(length>0)
    self.leftEmptyPanel.gameObject:SetActive(length<=0);
    self.rightEmptyPanel.gameObject:SetActive(length<=0);
    if index then
        self:SetSelectMailInfo(index)
    end

end
--刷新读邮件信息
local function UpdateMailReadState(self)
    self:SetSingleMailCount()
    self:SetSelectMailInfo(self.mailindex)
end
--刷新邮件信息,隐藏单个邮件详情信息
local function UpdateMailState(self)
    self:SetSingleMailCount()
    self:SetSelectMailInfo(self.mailindex)
    --self.mail_single_info.gameObject:SetActive(false)
end

local function OnEnable(self)
    base.OnEnable(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Brush_04")
    self.btntype=1
    self.SetBtnParent(self,self.select_img,self.all_btn.transform)
    self.select_text:SetText(DataUtil.GetClientText(100013))
    self.itemList=self.model.mail_All_Data
    local length = #self.itemList
    if length>0 then
        self:SetSingleMailCount(1)
       -- self.nullObj.gameObject:SetActive(false)
    else
       -- self.nullObj.gameObject:SetActive(true)
    end
    self.leftpanel.gameObject:SetActive(length>0)
    self.rightpanel.gameObject:SetActive(length>0)



    --UIFuzzy:GetInstance():ShowFuzzy("UIMailView")
end
--请求读邮件
local function SetSingleMailReadRequest(self,mailid,index)
    self.ctrl:SendReadMailRequest(mailid)
    self.mailindex=index
end
--监听
local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UISINGLE_MAIL_REAR_STATE_UPDATE, UpdateMailReadState)
    self:AddUIListener(UIMessageNames.UISINGLE_MAIL_DELEGATE_UPDATE, UpdateMailState)
    self:AddUIListener(UIMessageNames.UIALLMAIL_GET_UPDATE_STATE, UpdateMailState)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UISINGLE_MAIL_REAR_STATE_UPDATE, UpdateMailReadState)
    self:RemoveUIListener(UIMessageNames.UISINGLE_MAIL_DELEGATE_UPDATE, UpdateMailState)
    self:RemoveUIListener(UIMessageNames.UIALLMAIL_GET_UPDATE_STATE,UpdateMailState)
end

-- 关闭：窗口隐藏
local function OnDisable(self)
    base.OnDisable(self)
    MailData:GetInstance():Sort()
    --UIFuzzy:GetInstance():CloseFuzzy("UIMailView")
end
local function OnDestroy(self)
    base.OnDestroy(self)
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIMail);
    if self.closeComponent~=nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf();
    end
end
UIMailView.OnDestroy = OnDestroy
UIMailView.OnDisable = OnDisable
UIMailView.OnCreate=OnCreate
UIMailView.OnEnable=OnEnable
UIMailView.SetSingleMailCount=SetSingleMailCount
UIMailView.OnAddListener=OnAddListener
UIMailView.OnRemoveListener=OnRemoveListener
UIMailView.SetSingleMailReadRequest=SetSingleMailReadRequest
UIMailView.SetSelectMailInfo = SetSelectMailInfo
UIMailView.SetBtnParent=SetBtnParent
return UIMailView