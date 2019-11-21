--[[
-- added by wsh @ 2017-12-01
-- UILogin视图层
-- 注意：
-- 1、成员变量最好预先在__init函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UIBackpackWrapItem = require "UI.UIBackpack.Component.UIBackpackWrapItem"
local UIBackpackView = BaseClass("UIBackpackView", UIBaseView)
local base = UIBaseView
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");

--设置按钮的父物体
local function SetBtnParent(self,child,parent)
    child.transform:SetParent(parent)
    child.localScale=Vector3.New(1,1,1)
    child.localPosition = Vector3.New(0,0,0)
    child.anchoredPosition=Vector3.New(0,0,0)
    --child:SetAsFirstSibling()
    child.gameObject:SetActive(true)
end


local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.btn_content=UIUtil.FindTrans(self.transform,"rightBtnPanel/Scroll View/GameObject")
    self.select_img = UIUtil.FindTrans(self.transform,"rightBtnPanel/SelectBtn")
    self.select_text = self:AddComponent(UIText, "rightBtnPanel/SelectBtn/SelectText")
   -- self.chese_item_img = UIUtil.FindTrans(self.transform, "leftDown/cheseImg")
--[[    self.nullImg=self:AddComponent(UIImage,"rightBtnPanel/CenterNull/nullImg/CenterLeft/nullImgleft",AtlasConfig.Language)
    self.nullImg:SetSpriteName("ui_t_c2_230")
    self.nullImgR=self:AddComponent(UIImage,"rightBtnPanel/CenterNull/nullImg/CenterRight/nullImgRight",AtlasConfig.Language)
    self.nullImgR:SetSpriteName("ui_t_c2_230")]]
    self.nul_img = UIUtil.FindTrans(self.transform,"rightBtnPanel/CenterNull/nullImg")

    self.TitleBar=UIUtil.FindTrans(self.transform,"TopLeft")

    UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
        self.ctrl:CloseSelf()
    end,function ()
        self.backMainCityAnim:Play("ef_ui_UI Generic board back")
        LJAudioManger:GetInstance():PlayVoice("UI_Brush_03")
        TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
            UIUtil.BackHomeMain()
        end,nil,true)
    end ,"背包",false,0,true)


    self.use_btn = self:AddComponent(UIButton, "right panel/include r/CenterRight/useBtn")
    self.use_btn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.ctrl:OpenUsePanel(self.itemData.id)
    end)
    self.sell_btn = self:AddComponent(UIButton, "right panel/include r/CenterRight/sellBtn")
    self.sell_btn:SetOnClick(function()
        self.ctrl:OpenSellPanel()
    end)

    ---右侧的页签按钮
    self.all_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/AllBtn")
    self.all_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.SetBtnParent(self,self.select_img,self.all_btn.transform)
        self.select_text:SetText("全部")
        self.type = 1
        self.itemList=self.model.itemDataAll
        self.indexId = nil
        self:UpdateSkillItem()
    end)
    self.materials_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/MaterialsBtn")
    self.materials_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.SetBtnParent(self,self.select_img,self.materials_btn.transform)
        self.select_text:SetText("材料")
        self.type = 2
        self.itemList=self.model.itemMaterialsData
        self.indexId = nil
        self:UpdateSkillItem()
    end)
    self.debrisForPeo_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/DebrisForPeoBtn")
    self.debrisForPeo_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.SetBtnParent(self,self.select_img,self.debrisForPeo_btn.transform)
        self.select_text:SetText("(寄)碎片")
        self.type = 3
        self.itemList=self.model.itemDebrisForPeoData
        self.indexId = nil
        self:UpdateSkillItem()
    end)
    self.debrisForMon_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/DebrisForMonBtn")
    self.debrisForMon_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.SetBtnParent(self,self.select_img,self.debrisForMon_btn.transform)
        self.select_text:SetText("(守)碎片")
        self.type = 4
        self.itemList=self.model.itemDebrisForMonData
        self.indexId = nil
        self:UpdateSkillItem()
    end)
    self.consume_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/ConsumeBtn")
    self.consume_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.SetBtnParent(self,self.select_img,self.consume_btn.transform)
        self.select_text:SetText("消耗")
        self.type = 5
        self.itemList=self.model.itemConsumeData
        self.indexId = nil
        self:UpdateSkillItem()
    end)
    self.bos_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/BoxBtn")
    self.bos_btn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.SetBtnParent(self,self.select_img,self.bos_btn.transform)
        self.select_text:SetText("宝箱")
        self.type = 6
        self.itemList=self.model.itemBoxData
        self.indexId = nil
        self:UpdateSkillItem()
    end)
    ---中间滑动区域组件获取
    --self.skill_scroll_view=UIUtil.FindTrans(self.transform,"CenterLeft/cardPool")
    self.skill_scroll_view_content=self:AddComponent(UIWrapGroup3D,"left panel/include l/CenterLeft/Scroll View/GameObject",UIBackpackWrapItem)
    self.skill_scroll_view_grid=self:AddComponent(UIGrid,"left panel/include l/CenterLeft/Scroll View/GameObject")
    self.bag_slect=UIUtil.FindTrans(self.transform,"left panel/include l/CenterLeft/ItemSlect")
    --self.unity_grid = self.transform:GetComponent(typeof(CS.UnityEngine.UI.GridLayoutGroup))
    ---右侧信息栏组件获取
    --self.left_panel = UIUtil.FindTrans(self.transform,"leftDown")
    self.item_name_text = self:AddComponent(UIText,"right panel/include r/CenterRight/name/nameText")
    self.have_num_text = self:AddComponent(UIText,"right panel/include r/CenterRight/haveNum")
    self.item_des_text = self:AddComponent(UIText,"right panel/include r/CenterRight/scrollrctText/desText")
    self.item_fram_img = self:AddComponent(UIImage,"right panel/include r/CenterRight/name/CostItem",AtlasConfig.DynamicTex)
    self.item_icon_img = self:AddComponent(UIImage,"right panel/include r/CenterRight/name/CostItem/Icon",AtlasConfig.DynamicTex)
    self.item_chip=UIUtil.FindTrans(self.transform,"right panel/include r/CenterRight/name/CostItem/chipImg")
    self.resourceBarParent=UIUtil.FindTrans(self.transform,"resourceBarParent");
    ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIBackpack,ResourceBarType.BAGPACK,self)
    self.backMainCityAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"")
end


local function OnEnable(self)
    base.OnEnable(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Brush_04")
    self:OnRefresh()

end
-- 每次打开刷新界面
local function OnRefresh(self)
    -- 各组件刷新

    self.SetBtnParent(self,self.select_img,self.all_btn.transform)
    self.itemList = self.model.itemDataAll
    self.select_text:SetText("全部")
    self.btn_content.localPosition=Vector3.New(0,0,0)
    self.type = 1
    self.indexId = nil

    self:UpdateSkillItem()
end

---设置界面的显示隐藏
local function SetUIActive(self)
    if self.itemList==nil or table.count(self.itemList)==0 then
        self.nul_img.gameObject:SetActive(true)
        --self.left_panel.gameObject:SetActive(false)
        -- self.skill_scroll_view.gameObject:SetActive(false)
        --self.chese_item_img.gameObject:SetActive(false)
    else
        self.nul_img.gameObject:SetActive(false)
        --self.chese_item_img.gameObject:SetActive(true)
        --self.skill_scroll_view.gameObject:SetActive(true)
        --self.left_panel.gameObject:SetActive(true)
    end
end


---根据类型不同生成对应
local function UpdateSkillItem(self)
    if self.itemList~=nil or #self.itemList ~=0 then
        self.skill_scroll_view_content:SetLength(table.count(self.itemList))
        self.skill_scroll_view_content:SetGridPositionByIndex(0)

        if self.indexId == nil then
            local trans = self.skill_scroll_view_content:GetComponentByIndex(0)
            if trans == nil then
                self:SetUIActive(self.itemList)
                return
            end
            self:SetLeftPanelData(0,self.itemList[1])
        else
            local k = 0
            for i, v in ipairs(self.itemList) do
                k = i
                if self.indexId == v.id then
                    local trans = self.skill_scroll_view_content.transform:GetChild(i-1)
                    if trans == nil then
                        return
                    end
                    self:SetLeftPanelData(0,self.itemList[k])
                    k = 0
                    break
                end
            end
            if k ~= 0 then
                local trans = self.skill_scroll_view_content:GetComponentByIndex(0)
                if trans == nil then
                    self:SetUIActive(self.itemList)
                    return
                end
                self:SetLeftPanelData(0,self.itemList[1])
            end
        end
    else
        self.skill_scroll_view_content:SetLength(0)
    end
    self:SetUIActive()
end

local function SetLeftPanelData(self,index,single_item_data)
    if single_item_data == nil then
        return
    end
    local trans = self.skill_scroll_view_content:GetComponentByIndex(index)
    if trans ~= nil then
        self.bag_slect.transform:SetParent(trans.transform:GetChild(1))
        self.bag_slect.localPosition = Vector3.zero
        self.bag_slect.gameObject:SetActive(true)
    end
    self.slect_Index=index
    self.indexId = single_item_data.id
    self.itemData = single_item_data
    --self.SetBtnParent(self,self.chese_item_img.transform,my_trans)
    self.item_name_text:SetText(single_item_data.name)
    self.have_num_text:SetText(tostring(math.floor(single_item_data.haveNum)))
    self.item_des_text:SetText(single_item_data.des)
    if single_item_data.quality == 1 then
        self.item_fram_img:SetSpriteName(SpriteDefine._Frame_N)
    elseif single_item_data.quality == 2 then
        self.item_fram_img:SetSpriteName(SpriteDefine._Frame_R)
    elseif single_item_data.quality == 3 then
        self.item_fram_img:SetSpriteName(SpriteDefine._Frame_SR)
    elseif single_item_data.quality == 4 then
        self.item_fram_img:SetSpriteName(SpriteDefine._Frame_SSR)
    end
    self.item_icon_img:SetSpriteName(single_item_data.icon)
    self.use_btn.gameObject:SetActive(single_item_data.canUse ~= 0)
    self.item_chip.gameObject:SetActive(single_item_data.type == 17  )
    --self:UIBroadcast(UIMessageNames.UI_NEWCARD_SKILL_UPDATE,_id)
end

local function UpdateBoxData(self)
    if self.type == 1 then
        self.itemList = self.model.itemDataAll
    elseif self.type == 2 then
        self.itemList=self.model.itemMaterialsData
    elseif self.type == 3 then
        self.itemList=self.model.itemDebrisForPeoData
    elseif self.type == 4 then
        self.itemList=self.model.itemDebrisForMonData
    elseif self.type == 5 then
        self.itemList=self.model.itemConsumeData
    elseif self.type == 6 then
        self.itemList=self.model.itemBoxData
    end
    if #self.itemList == 0 then
        self.SetBtnParent(self,self.select_img,self.all_btn.transform)
        self.select_text:SetText("全部")
        self.type = 1
        self.itemList=self.model.itemDataAll
    end
    self:UpdateSkillItem()
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UPDATE_ITEM_COUNT, UpdateBoxData)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UPDATE_ITEM_COUNT, UpdateBoxData)
end

local function OnDestroy(self)
    base.OnDestroy(self)
    ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIBackpack);
    if self.closeComponent~=nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf();
    end
end

UIBackpackView.OnCreate = OnCreate
UIBackpackView.OnEnable = OnEnable
UIBackpackView.SetBtnParent = SetBtnParent
UIBackpackView.UpdateSkillItem = UpdateSkillItem
UIBackpackView.SetLeftPanelData = SetLeftPanelData
UIBackpackView.SetUIActive = SetUIActive
UIBackpackView.OnRefresh = OnRefresh
UIBackpackView.OnAddListener = OnAddListener
UIBackpackView.OnRemoveListener = OnRemoveListener
UIBackpackView.OnDestroy = OnDestroy

return UIBackpackView