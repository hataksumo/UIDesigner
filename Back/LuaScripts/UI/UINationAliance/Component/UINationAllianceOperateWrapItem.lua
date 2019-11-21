local UINationAllianceOperateWrapItem = BaseClass("UINationAllianceOperateWrapItem", UIWrapComponent)
local base = UIWrapComponent

local EnumOperateType = {
    PositionManagement = 1, --职位管理
    KickOut = 2, --踢出联盟
    Quit = 3, --退出联盟
    Demise = 4, --禅让盟主
    GiveUpPos = 5, --放弃职位
}

local function OnClickItem(self)
    if self.type == EnumOperateType.PositionManagement then
        self.view.ctrl:posCtrlButtonClick()
    elseif self.type == EnumOperateType.KickOut then
        self.view.ctrl:tichuButtonClick()
    elseif self.type == EnumOperateType.Quit then
        self.view.ctrl:tuiChuButton()
    elseif self.type == EnumOperateType.Demise then
        self.view.ctrl:shanRangButton()
    elseif self.type == EnumOperateType.GiveUpPos then
        self.view.ctrl:fangQiButton()
    end
end

local function OnCreate(self)
    base.OnCreate(self)

    self.button = self:AddComponent(UIButton, "")
    self.button:SetOnClick(function()
        OnClickItem(self)
    end)

    self.text = self:AddComponent(UIText, "Text")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    local data = self.view.allLayoutList[self.view.model.MAIN_FUNC_INDEX.MEMBER_LIST].script.memberCtrlPanel.buttonFuncList[real_index + 1]
    if data == nil then
        return
    end

    self.text:SetText(data.text)
    self.type = data.type
end

UINationAllianceOperateWrapItem.OnCreate = OnCreate
UINationAllianceOperateWrapItem.OnRefresh = OnRefresh

return UINationAllianceOperateWrapItem