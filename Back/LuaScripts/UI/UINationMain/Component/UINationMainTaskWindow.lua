local UINationMainTaskWindow = BaseClass("UINationMainTaskWindow", UIBaseContainer)
local base = UIBaseContainer

local function OnMainBtnClick(self)
    local curPos = self.bgObj.anchoredPosition3D
    local targetPos = self.btnStateOpen and Vector3.New(curPos.x + (self.bgObj.sizeDelta.x), curPos.y, curPos.z) or Vector3.New(curPos.x - (self.bgObj.sizeDelta.x), curPos.y, curPos.z);
    if self.anim == nil then
        self.anim = LuaTweener.UIMoveTo(self.bgObj, curPos, targetPos, self.intervalTime, EaseFormula.OutQuad, function()
            self.anim = nil
            self.arrowBtn.gameObject:SetActive(not self.btnStateOpen);
            if self.btnStateOpen then
                --self.arrowImage.transform.rotation = Vector3.New(0, 0, 0)
                --self.arrowImage.transform.rotation = Vector3.New(0, 0, 180)
                --self.mainBtn.transform.rotation= Vector3.New(0,0,180)
            else
                --self.arrowImage.transform.rotation = Vector3.New(0, 180, 0)
                --self.arrowImage.transform.rotation = Vector3.New(0, 0, 0)
                --self.mainBtn.transform.rotation= Vector3.New(0,0,0)
            end
        end)
    else
        self.anim = nil
    end
    self.btnStateOpen = not self.btnStateOpen
end

local function TaskOnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.bgObj = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "")

    self.title_name = self:AddComponent(UIText, "parent/title_name")

    --self.main_name = self:AddComponent(UIText, "main_name")
    self.getBtn = self:AddComponent(UIButton, "parent/btn")
    self.getBtn:SetOnClick(function()
        NationMainTaskData:GetInstance():SendGetAwardRequest(self.data.id)
    end)
    self.ani_obj = UIUtil.FindTrans(self.transform, "parent/TipsObj")
    self.ani_obj.gameObject:SetActive(false)
    self.des = self:AddComponent(UIText, "parent/des")
    self.grid = self:AddComponent(UIBaseContainer, "parent/grid")
    self.award_name = self:AddComponent(UIText, "parent/award_name")
    self.btnStateOpen = true
    self.intervalTime = 0.5

    self.mainBtn = self:AddComponent(UIButton, "parent/Image/closeBtn") -- 关闭按钮
    self.mainBtn:SetOnClick(Bind(self, OnMainBtnClick))

    self.arrowImage = self:AddComponent(UIImage, "arrow_UIButton/Image")
    self.arrowRedImageTran = UIUtil.FindTrans(self.transform, "arrow_UIButton/redPointImg");
    self.arrowBtn = self:AddComponent(UIButton, "arrow_UIButton")
    self.arrowBtn:SetOnClick(function()
        self.arrowBtn.gameObject:SetActive(false);
        OnMainBtnClick(self)
    end)
    self.arrowBtn.gameObject:SetActive(not self.btnStateOpen);

    self.jumpBtn = self:AddComponent(UIButton, "parent/jumpBtn")
    self.jumpBtn:SetOnClick(function()
        if self.data.jump ~= nil then
            UIJumpManager.JumpByTypeAndParam(self.data.jump.To, self.data.jump.Param)
        end
    end)
end

--刷新
local function TaskRefresh(self)
    self.data = NationMainTaskData:GetInstance().mainTaskData
    self.title_name:SetText(self.data.info)
    --self.main_name:SetText(self.data.info)
    self.des:SetText(self.data.des)
    self.getBtn.gameObject:SetActive(self.data.status == 2)
    self.award_name:SetText(self.data.now_progress .. "/" .. self.data.all_progress)
    self.jumpBtn.gameObject:SetActive(self.data.status ~= 2)
    ---  0 未领取  1 已领取 2 可领取
    self.des.gameObject:SetActive(self.data.status ~= 2)
    --self.getBtn.gameObject:SetActive(self.data.status == 2)
    --self.des.gameObject:SetActive(self.data.status ~= 2)
    if self.openfunctionItemList ~= nil then
        UIUtil.RecyleComItem(self.openfunctionItemList)
    end
    self.ani_obj.gameObject:SetActive(self.data.id <= 10002 and self.data.status == 2)
    self.openfunctionItemList = nil
    UIUtil.CreatCommonItem(self, self.data.reward, function(itemList)
        self.openfunctionItemList = itemList
        for _, v in ipairs(self.openfunctionItemList) do
            v.itemNum:SetTextFontSize(28)
        end
    end, self.grid.transform, false)
end

local function __OnRedPointChangedEvent(self)
    self.arrowRedImageTran.gameObject:SetActive(
            RedPointData:GetInstance():GetRedState(
                    RedPointData:GetInstance().RedName.Nation_Major_Task_Red))
end

UINationMainTaskWindow.TaskOnCreate = TaskOnCreate
UINationMainTaskWindow.TaskRefresh = TaskRefresh
UINationMainTaskWindow.__OnRedPointChangedEvent = __OnRedPointChangedEvent

return UINationMainTaskWindow