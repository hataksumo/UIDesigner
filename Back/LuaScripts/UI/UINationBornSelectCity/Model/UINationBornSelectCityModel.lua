--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationBornSelectCityModel = BaseClass("UINationBornSelectCityModel", UIBaseModel)
local base = UIBaseModel

local BornCityData = DataUtil.GetData("national_ascription")

local EnumCityState = {
    UnSelect = 0, --不可选择(争夺之地)
    UnActive = 1, --未开放
    CanSelect = 2, --可选择
    Full = 3, --爆满
    UnStart = 4, --还没有开启（还没做开发功能）
}

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self, msgObj, callback)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    self.callback = callback
    self.bornCityList = {}
    local cityInfo = nil
    for k, v in ipairs(msgObj.bronState) do
        cityInfo = BornCityData[k]
        local item = {}
        item.name = cityInfo.Name
        item.des = cityInfo.Des
        item.born = cityInfo.Born
        item.state = v.state

        if v.state == EnumCityState.UnActive then
            item.stateText = DataUtil.GetClientText(200408)
            item.stateImage = "ui_t_c2_224"
        elseif v.state == EnumCityState.CanSelect then
            item.stateText = DataUtil.GetClientText(200409)
            item.stateImage = "ui_t_c2_223"
            if self.default == nil then
                self.default = k
            end
        elseif v.state == EnumCityState.Full then
            item.stateText = DataUtil.GetClientText(100187)
            item.stateImage = "ui_t_c2_222"
        end

        table.insert(self.bornCityList, item)
    end

    --cityInfo = BornCityData[#self.bornCityList + 1]
    --local item = {}
    --item.name = cityInfo.Name
    --item.des = cityInfo.Des
    --item.born = cityInfo.Born
    --item.state = 0
    --table.insert(self.bornCityList, item)

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听

end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.bornCityList = nil
    self.default = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationBornSelectCityModel.OnCreate = OnCreate
UINationBornSelectCityModel.OnEnable = OnEnable
UINationBornSelectCityModel.OnRefresh = OnRefresh
UINationBornSelectCityModel.OnAddListener = OnAddListener
UINationBornSelectCityModel.OnRemoveListener = OnRemoveListener
UINationBornSelectCityModel.OnDisable = OnDisable
UINationBornSelectCityModel.OnDestroy = OnDestroy
UINationBornSelectCityModel.EnumCityState = EnumCityState

return UINationBornSelectCityModel