--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIItemTipsModel = BaseClass("UIItemTipsModel", UIBaseModel)
local base = UIBaseModel
local item_data = DataUtil.GetData("item")

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self, _id)
    Logger.Log("```````````````进入item表里id是-------------".._id)
    base.OnEnable(self)
    self.item_single_data = {}

    -- 窗口关闭时可以清理的成员变量放这
    local data_info=item_data[_id]
    if data_info ~= nil then
        local itemData = {}
        itemData.name = data_info.Name
        itemData.icon = data_info.Icon
        itemData.type=data_info.ItemType
        itemData.frame = (itemData.type==20 or itemData.type==21) and SpriteDefine:GetCircleFrameByType (data_info.Quality)   or SpriteDefine:GetItemQualityFrameByType(data_info.Quality)
        if data_info.ShowBagTab == 1 then
            itemData.type_name = "【材料】"
        elseif data_info.ShowBagTab == 2 then
            itemData.type_name = "【寄灵人碎片】"
        elseif data_info.ShowBagTab == 3 then
            itemData.type_name = "【守护灵碎片】"
        elseif data_info.ShowBagTab == 4 then
            itemData.type_name = "【消耗】"
        elseif data_info.ShowBagTab == 5 then
            itemData.type_name = "【宝箱】"
        elseif data_info.ShowBagTab == 9 then
            itemData.type_name = "【资源】"
        end
        if _id == 1401014 then
            local curTeamLv=UserData:GetInstance().pLevel-1;
            local haveExp=UserData:GetInstance().userExp-DataUtil.GetData("team_level")[curTeamLv].Exp;
            itemData.have_num = "拥有：" .. math.floor(haveExp)
        else
            --国战物品
            if _id > 6000000 and _id < 7000000 then
                itemData.have_num = "拥有：" .. DataUtil.GetDataNumDes(NationPlayerData:GetInstance():GetNationResourceRealNumByItemId(_id))
            else
                itemData.have_num = "拥有：" .. BackpackData:GetInstance():GetItemNumById(_id)
            end
        end

        itemData.des = data_info.Des
        self.item_single_data = itemData
    else
        Logger.Log("```````````````结束item表里没-------------".._id)
    end
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

end

-- 销毁
local function OnDistroy(self)
    base.OnDistroy(self)
    -- 清理成员变量

end

UIItemTipsModel.OnCreate = OnCreate
UIItemTipsModel.OnEnable = OnEnable
UIItemTipsModel.OnRefresh = OnRefresh
UIItemTipsModel.OnAddListener = OnAddListener
UIItemTipsModel.OnRemoveListener = OnRemoveListener
UIItemTipsModel.OnDisable = OnDisable
UIItemTipsModel.OnDistroy = OnDistroy

return UIItemTipsModel