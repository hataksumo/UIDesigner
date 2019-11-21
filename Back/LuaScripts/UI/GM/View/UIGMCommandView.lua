
local UIGMCommandView = BaseClass("UIGMCommandView", UIBaseView)
local base = UIBaseView
local propertyList = DataUtil.GetData("property")
-- 各个组件路径
local getCmdId_txt_path = "getCommand/getCmdIdField"
local getInput_txt_path = "getCommand/getInputField"
--local getInput_txt_path3 = "getCommand/getInputField3/getInputText3"
--local getInput_txt_path4 = "getCommand/getInputField4/getInputText4"
local getConfirm_btn_path = "getCommand/getConfirmBtn"
local close_btn_path = "closeBtn"
local get_mail_item_btn_path="getCommand/GetMailitemBtn"
local get_mail_null_btn_path="getCommand/GetMailNullBtn"


local gm_server_time_tips ="getCommand/tipsTime/Text"

-- 变量
local GMGetText = ""


local function GetMailsGMItems(self)
    local mail_item={}
    mail_item.title="我是gm命令创建的"
    mail_item.subTilte="啦啦啦"
    mail_item.content="content1111"
    mail_item.sendTime="2018-12-07 05:10:30"
    mail_item.reward="1401001#100|1401001#200|1401001#300|1401001#400|1401001#500|1401001#600|1401001#700"
    mail_item.name="机器人发的"
    mail_item.version="0"
    local json=require "cjson"
    return json.encode(mail_item)
end

local function GetMailsGM(self)
    local mail_item={}
    mail_item.title="我是gm命令创建的"
    mail_item.subTilte="啦啦啦"
    mail_item.content="content1111"
    mail_item.sendTime="2018-12-07 05:10:30"
    mail_item.reward=""
    mail_item.name="机器人发的"
    mail_item.version="0"
    local json=require "cjson"
    return json.encode(mail_item)
end
local function SetProper(self,type,type_index,id,name,value)
    if self.proper_table[type]~=nil and  self.proper_table[type][type_index]~=nil then
        self.proper_table[type][type_index].img.gameObject:SetActive(true)
        self.proper_table[type][type_index].text.text=id..name..value
        local width=self.proper_table[1][type_index].text.preferredWidth
        self.proper_table[type][type_index].rect.sizeDelta=Vector2.New(width,50)
    else
        Logger.Log("属性GMItem"..type.."--"..type_index.."不够")
    end

end
-- 点击确认按钮
local function OnGetConfirmBtnClick(self)
    local cmdId = tonumber(self.getCmdId_txt:GetText());
    local content = self.getInput_txt:GetText();
    if cmdId == nil then
        return
    end
    --local content3=self.getInput_txt3:GetText();
    --local content4=self.getInput_txt4:GetText();
    if cmdId == 2 then
        if self.mails_items~=nil then
            self.ctrl:SendGetCommand(cmdId, self.mails_items)
            self.mails_items = nil
        end
        if self.mail_null~=nil then
            self.ctrl:SendGetCommand(cmdId, self.mail_null)
            self.mail_null =nil
        end
    elseif cmdId == 100  then
        local card_id=tonumber(content) or 0 --nil会溢出，但是会获得1
        if card_id == 0 or CardData:GetInstance().cards[card_id] == nil then
            return
        end
        self.proper_parent.gameObject:SetActive(true)
        local card_data=CardData:GetInstance().cards[card_id]
        --创建资源条 显示
        self.proper_name:SetText( card_data.name)
        self.proper_power:SetText( card_data.power)
        local lv_index=1
        local eqp_index=1
        local art_index=1
        local relation_index=1
        local weapon_index=1
        local hun_index=1
        for i, v in ipairs(self.proper_table) do
            for index, data in ipairs(v) do
                if index > 1 then
                    data.img.gameObject:SetActive(false)
                end
            end
        end
        for i, v in pairs(propertyList) do
            if card_data.lvandstarproperty[i]>0 then
                lv_index=lv_index+1
                SetProper(self,1,lv_index,i,v.CnName,card_data.lvandstarproperty[i])
            end
            if card_data.artifactsproperty[i]>0 then
                art_index=art_index+1
                SetProper(self,2,art_index,i,v.CnName,card_data.artifactsproperty[i])
            end
            if card_data.equipproperty[i]>0 then
                eqp_index=eqp_index+1
                SetProper(self,3,eqp_index,i,v.CnName,card_data.equipproperty[i])
            end
            if card_data.relationproperty[i]>0 then
                relation_index=relation_index+1
                SetProper(self,4,relation_index,i,v.CnName,card_data.relationproperty[i])
            end
            if card_data.personalWeapon and card_data.personalWeapon.status == 1 and card_data.personalWeapon.all_property[i]>0 then
                weapon_index=weapon_index+1
                SetProper(self,5,weapon_index,i,v.CnName,card_data.personalWeapon.all_property[i])
            end
            if card_data.type~=1 and card_data.ghostproperty[i]>0 then
                hun_index=hun_index+1
                SetProper(self,6,hun_index,i,v.CnName,card_data.ghostproperty[i])
            end
        end
    else
        self.ctrl:SendGetCommand(cmdId,content,content3,content4)
    end


end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件local cardCount=self.cardLayout.transform.childCount
    --	for i = 0, cardCount-1 do
    --		local singleCardTrans=self.cardLayout.transform:GetChild(i)
    --		local singleCard=GetNewCardResultItem.New(self,singleCardTrans.gameObject)
    --		singleCard:OnCreate()
    --		table.insert(self.tenCardList,singleCard)
    --	end
    self.proper_parent=self:AddComponent(UIBaseComponent,"getCommand/property_obj")
    self.proper_name=self:AddComponent(UIText,"getCommand/property_obj/Image/name")
    self.proper_power=self:AddComponent(UIText,"getCommand/property_obj/Image (1)/power")
    self.proper_grid_parent=self:AddComponent(UIBaseComponent,"getCommand/property_obj/proper_grid")
    local count=self.proper_grid_parent.transform.childCount
    self.proper_table={}
    for i = 0, count-1 do
        local son=self.proper_grid_parent.transform:GetChild(i)
        local son_count=son.transform.childCount
        self.proper_table[i+1]={}
        for j = 0, son_count-1 do
            local son_son=son.transform:GetChild(j)
            local proper_text = UIUtil.FindText(son_son.transform,"Text")
            local proper_img = UIUtil.FindImage(son_son.transform,"")
            local rect_size = UIUtil.FindComponent(son_son.transform,typeof(CS.UnityEngine.RectTransform),"");
            self.proper_table[i+1][j+1]={img=proper_img,text=proper_text,rect=rect_size}
            if j == 0then
                rect_size.sizeDelta=Vector2.New(200,50)
                if i == 0 then
                    proper_text.text="等级星星阶级"
                elseif i==1 then
                    proper_text.text="神器"
                elseif i==2 then
                    proper_text.text="装备"
                elseif i==3 then
                    proper_text.text="羁绊"
                elseif i==4 then
                    proper_text.text="武器"
                elseif i==5 then
                    proper_text.text="魂火"
                end
            end
        end
    end
    self.getInput_txt = self:AddComponent(UIInput, getInput_txt_path)
    self.getCmdId_txt = self:AddComponent(UIInput, getCmdId_txt_path)
    --self.getInput_txt3=self:AddComponent(UIText, getInput_txt_path3)
    --self.getInput_txt4=self:AddComponent(UIText, getInput_txt_path4)
    self.getConfirm_btn = self:AddComponent(UIButton, getConfirm_btn_path)
    self.gmServerTimeTips = self:AddComponent(UIText, gm_server_time_tips)

    self.getConfirm_btn:SetOnClick(self, OnGetConfirmBtnClick)
    self.close_btn = self:AddComponent(UIButton, close_btn_path)
    self.close_btn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)
    self.get_mail_item_btn=self:AddComponent(UIButton,get_mail_item_btn_path)
    self.get_mail_item_btn:SetOnClick(function ()
        self.mails_items=GetMailsGMItems(self)
    end)
    self.get_mail_null_btn=self:AddComponent(UIButton,get_mail_null_btn_path)
    self.get_mail_null_btn:SetOnClick(function ()
        self.mail_null=GetMailsGM(self)
    end)

end

local function UpdateTime(self)
    local curTime  = Mathf.Floor(TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000)
    local formatTime = os.date("%Y-%m-%d %H:%M:%S",curTime)
    self.gmServerTimeTips:SetText("服务器时间 : ".. formatTime)
end


-- 每次打开刷新界面
local function OnRefresh(self)
    -- 各组件刷新
    self:UpdateTime(self)
end


local function OnEnable(self)
    base.OnEnable(self)
    GMGetText = ""
    self.proper_parent.gameObject:SetActive(false)
    -- 关于层级的部分
    self.timer = TimerManager:GetInstance():GetTimer(1, self.UpdateTime , self)
    self.timer:Start()
    self:OnRefresh()
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    if self.timer ~= nil then
        self.timer:Stop()
    end
    self.timer = nil
end


local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
end

local function OnDestroy(self)
    base.OnDestroy(self)

end

UIGMCommandView.OnCreate = OnCreate
UIGMCommandView.OnEnable = OnEnable
UIGMCommandView.OnDisable = OnDisable
UIGMCommandView.OnRefresh = OnRefresh
UIGMCommandView.OnAddListener = OnAddListener
UIGMCommandView.OnRemoveListener = OnRemoveListener
UIGMCommandView.OnDestroy = OnDestroy
UIGMCommandView.UpdateTime = UpdateTime

return UIGMCommandView