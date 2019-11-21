--[[
-- added by ljl @ 2018-11-26
-- UIMail模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIMailModel=BaseClass("UIMailModel",UIBaseModel)
local base = UIBaseModel
--单个邮件数据
--[[local MailSingleAwardData={
    itemid=0,
    itemnum=0,
    itemquality="",
    itemtype=0
}--]]

--local MailSingleAward=DataClass("MailSingleAward",MailSingleAwardData)--]]

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
end

local function FetchRecommendList(servers)
    local list = {}
    for _,v in pairs(servers) do
        table.insert(list,v)
    end
    return list
end
--邮件赋值
local function SetMailsData(self)
    local redMailNum = 0
    self.mail_System_Data={}
    self.mail_Report_Data={}
    local mail_data=MailData:GetInstance():GetAllMailsData()
    self.mail_All_Data= FetchRecommendList(mail_data)
    self:FiltrateMails()
    for _, v in ipairs(mail_data) do
        if v.mailDrawst ==2 then
            redMailNum = redMailNum + 1
            break
        end
    end
    if redMailNum > 0 then
        MailData:GetInstance():SetMailRedPointShow(true)
    else
        MailData:GetInstance():SetMailRedPointShow(false)
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_MAILREDPOINT_UPDATE)
end

--邮件筛选
local function FiltrateMails(self)
    if self.mail_All_Data == nil then
        return
    end
    for _, v in ipairs(self.mail_All_Data) do
        if v.mailType==1 then
            table.insert(self.mail_System_Data,v)
        else
            if  v.mailType==2  then
                table.insert(self.mail_Report_Data,v)
            end
        end
    end
end

-- 打开
local function OnEnable(self)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    --local mail_data=MailData:GetInstance():GetAllMailsData()
    --[[Logger.Log("我mailModel邮件的东西 ~~ ； ".. table.dump(mail_data,nil,10))
    for _, v in ipairs(mail_data) do
        local newMailData=MailSingleDataModel.New()
        newMailData.id=v.id
        newMailData.titleName=v.titleName
        newMailData.sendName=v.sendName
        newMailData.sendTime=v.sendTime
        newMailData.mailState=v.mailState
        newMailData.mailType=v.mailType
        newMailData.mailDrawst=v.mailDrawst
        newMailData.mailContent=v.mailContent
        newMailData.itemList=v.itemStr
        self.mail_All_Data[newMailData.id] = newMailData
    end
    for key,val in pairs(mailAllData.mailAllList)
    do
        self.mail_All_Data[key]=mailAllData.mailAllList[key]
        self.mail_All_Data[val]=mailAllData.mailAllList[val]
    end
    --]]
    --self.mail_All_Data= FetchRecommendList(mail_data)
    --self.mailRedPoint=mail_data.isShowRedPoint
    SetMailsData(self)

end

local function UpdateMailsData(self)
    SetMailsData(self)
    self:UIBroadcast(UIMessageNames.UISINGLE_MAIL_REAR_STATE_UPDATE)
end

local function UpdateMailsDelegate(self)
    SetMailsData(self)
    self:UIBroadcast(UIMessageNames.UISINGLE_MAIL_DELEGATE_UPDATE)
end

-- 监听数据变动
local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddDataListener(DataMessageNames.ON_SINGLE_MAIL_READ_STATE, UpdateMailsData)
    self:AddDataListener(DataMessageNames.On_SINGLE_MAIL_DELEGATE_STATE,UpdateMailsDelegate)
    self:AddDataListener(DataMessageNames.ON_MAILALL_GET_UPDATE_STATE,UpdateMailsData)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self:RemoveDataListener(DataMessageNames.ON_SINGLE_MAIL_READ_STATE, UpdateMailsData)
    self:RemoveDataListener(DataMessageNames.On_SINGLE_MAIL_DELEGATE_STATE,UpdateMailsDelegate)
    self:RemoveDataListener(DataMessageNames.ON_MAILALL_GET_UPDATE_STATE,UpdateMailsData)
end



-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.mail_All_Data=nil
    self.mail_System_Data=nil
    self.mail_Report_Data=nil
end

-- 销毁
local function OnDistroy(self)
    base.OnDistroy(self)
    -- 清理成员变量

end

UIMailModel.OnCreate=OnCreate
UIMailModel.OnEnable=OnEnable
UIMailModel.FiltrateMails=FiltrateMails
UIMailModel.OnAddListener=OnAddListener
UIMailModel.OnRemoveListener=OnRemoveListener
UIMailModel.OnDisable=OnDisable
UIMailModel.OnDistroy=OnDistroy

return UIMailModel