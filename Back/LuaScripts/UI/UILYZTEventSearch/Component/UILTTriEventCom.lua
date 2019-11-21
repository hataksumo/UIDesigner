
local UILTTriEventCom = BaseClass("UILTTriEventCom", UIBaseContainer)
local base = UIBaseContainer
local function OnCreate(self)
    base.OnCreate(self)
    self.title_text = self:AddComponent(UIText,"Title/TN")
    self.address_text = self:AddComponent(UIText,"Address/AddText")
    self.desc_text = self:AddComponent(UIText,"Desc/DescText")
    self.back_btn = self:AddComponent(UIButton,"Close")
    self.back_btn:SetOnClick(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTEventSearch)
    end)
    self.begin_btn = self:AddComponent(UIButton,"Begin")
    self.begin_btn:SetOnClick(function()
        Logger.Log("--------当前type = "..tostring(self.type))
        UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTEventSearch)
    end)
    self.begin_text = self:AddComponent(UIText,"Begin/Name")
end

local function OnRefresh(self,address,desc,type)
    self.gameObject:SetActive(true)

    self.address_text:SetText(address)
    self.desc_text:SetText(desc)
    if type == 1 then
        self.begin_text:SetText("开始战斗")
        self.title_text:SetText("遭遇战斗")
    else
        self.begin_text:SetText("开始剧情")
        self.title_text:SetText("触发剧情")
    end
    self.type = type
end


UILTTriEventCom.OnRefresh = OnRefresh
UILTTriEventCom.OnCreate = OnCreate
return UILTTriEventCom