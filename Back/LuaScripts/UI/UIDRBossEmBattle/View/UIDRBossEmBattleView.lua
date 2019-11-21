
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIDRBossEmBattleView = BaseClass("UIDRBossEmBattleView", UIBaseView)
local base = UIBaseView

local UIEmBattle2DCardWrapItem = require "UI.UIEmBattle2D.Component.UIEmBattle2DCardWrapItem";
local UIEmBattle2DDragWrapItem = require "UI.UIEmBattle2D.Component.UIEmBattle2DDragWrapItem";
local UIEmBattle2DJLRWrapItem = require "UI.UIEmBattle2D.Component.UIEmBattle2DJLRWrapItem";
local UIEmBattle2DSHLWrapItem = require "UI.UIEmBattle2D.Component.UIEmBattle2DSHLWrapItem";
local UIDRBossEmBattleTeamItem = require "UI.UIDRBossEmBattle.Component.UIDRBossEmBattleTeamItem";

local Input = CS.UnityEngine.Input;
local Screen = CS.UnityEngine.Screen;

--关闭守护灵选择弹框
local function CloseSHLChoose(self)
    self.dragCardIndex = 0;
    self.curListType = 1;
    self.shl_choose_obj.gameObject:SetActive(false);
    self.shlmask_btn.gameObject:SetActive(false);
end

--切换队伍
local function SwitchTeam(self, teamIndex)
    self.curTeam = teamIndex
    for i = 1, 3 do
        self.teamInfoItems[i]:ChooseTeam(i == teamIndex)
    end
    self:updateSelfUpHeroData()
    self:OnRefresh()
end

--更新队伍信息
local function UpdateTeamData(self)
    for i = 1, 3 do
        local finalForceNum = 0
        local finalHpNum = 0
        local finalActionNum = 100
        local finalCardId = 0
        local maxPower = 0
        for m = 1, 2 do
            for n = 1, 3 do
                if self.selfCardData[i][m][n] ~= nil then
                    local singleHero = CardData:GetInstance():GetCardDataById(self.selfCardData[i][m][n].cardXlsxData.id);
                    if singleHero ~= nil then
                        finalForceNum = finalForceNum + singleHero.power;
                        finalHpNum = finalHpNum + singleHero.finalProperty[103];
                        if singleHero.power > maxPower then
                            maxPower = singleHero.power
                            finalCardId = self.selfCardData[i][m][n].cardXlsxData.id
                        end
                    end
                end
            end
        end
        self.teamInfoItems[i]:OnRefresh({index = i, power = finalForceNum, hp = finalHpNum, cardId = finalCardId, action = finalActionNum})
    end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
    self.maskBtn = self:AddComponent(UIButton, "MaskImg")
    self.maskBtn:SetOnClick(function ()
        self.ctrl:SaveBattleTeamData(self.selfCardData)
        self.ctrl:CloseSelf()
    end)

    --队伍信息
    self.teamInfoItems = {}
    for i = 1, 3 do
        self.teamInfoItems[i] = UIDRBossEmBattleTeamItem.New(self, "ParentLayout/TeamList/EditTeam"..i);
        self.teamInfoItems[i]:OnCreate(self);
        local btn = self:AddComponent(UIButton, "ParentLayout/TeamList/EditTeam"..i);
        btn:SetOnClick(function ()
            LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
            SwitchTeam(self, i)
        end)
    end

    --寄灵人和守护灵滑动区域
    self.jlr_wrapgroup = self:AddComponent(UIWrapGroup3D, "ParentLayout/jilingren/Scroll View/GameObject_jlr", UIEmBattle2DDragWrapItem);
    self.jlr_scrollRect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.ScrollRect), "ParentLayout/jilingren/Scroll View");

    --守护灵弹框遮罩
    self.shlmask_btn = self:AddComponent(UIButton, "ParentLayout/SHLmaskObj");
    self.shlmask_btn.gameObject:SetActive(false);
    self.shlmask_btn:SetOnClick(function()
        CloseSHLChoose(self);
    end);
    --守护灵选择弹框
    self.shl_choose_obj = UIUtil.FindTrans(self.transform, "ParentLayout/SHLChooseTip");
    self.shl_choose_obj.gameObject:SetActive(true);
    self.shl_wrapgroup = self:AddComponent(UIWrapGroup3D, "ParentLayout/SHLChooseTip/chooseScrollView/chooseGroup", UIEmBattle2DCardWrapItem);
    self.shl_choose_obj.gameObject:SetActive(false);
    self.shl_choose_text = self:AddComponent(UIText, "ParentLayout/SHLChooseTip/tip_1/chooseTip");
    self.shl_choose_close_btn = self:AddComponent(UIButton, "ParentLayout/SHLChooseTip/closeBtn");
    self.shl_choose_close_btn:SetOnClick(function()
        CloseSHLChoose(self);
    end);
    --自己卡牌预设
    self.selfJLRCardItems = {};
    self.selfSHLCardItems = {};
    --拖动目标区域
    self.dragJLRTargetPosition = {};
    self.dragSHLTargetPosition = {};
    for i = 1, 3 do
        self.selfJLRCardItems[i] = UIEmBattle2DJLRWrapItem.New(self, "ParentLayout/CardGroup_self/dragJLRIcon" .. i .. "_self");
        self.selfSHLCardItems[i] = UIEmBattle2DSHLWrapItem.New(self, "ParentLayout/CardGroup_self/dragSHLIcon" .. i .. "_self");
        self.selfJLRCardItems[i]:OnCreate(self);
        self.selfJLRCardItems[i]:OnSetIndex(i, true);
        self.selfJLRCardItems[i]:OnRefresh(nil);
        self.selfSHLCardItems[i]:OnCreate(self);
        self.selfSHLCardItems[i]:OnSetIndex(i, true);
        self.selfSHLCardItems[i]:OnRefresh(nil);
        table.insert(self.dragJLRTargetPosition, UIUtil.FindComponent(self.selfJLRCardItems[i].gameObject, typeof(CS.UnityEngine.RectTransform)).anchoredPosition);
        table.insert(self.dragSHLTargetPosition, UIUtil.FindComponent(self.selfSHLCardItems[i].gameObject, typeof(CS.UnityEngine.RectTransform)).anchoredPosition);
    end
    --拖动出来的卡牌预设
    self.dragJLRCardItem = UIEmBattle2DCardWrapItem.New(self, "ParentLayout/dragJLRIcon");
    self.dragJLRCardItem:OnCreate(self);
    self.dragJLRCardItem:OnSetCardAtr(true,false);
    self.dragJLRCardItem.gameObject:SetActive(false);
    self.dragSHLCardItem = UIEmBattle2DCardWrapItem.New(self, "ParentLayout/dragSHLIcon");
    self.dragSHLCardItem:OnCreate(self);
    self.dragSHLCardItem:OnSetCardAtr(false,false);
    self.dragSHLCardItem.gameObject:SetActive(false);

    local layer = UIManager:GetInstance():GetLayer(UILayers.NormalLayer.Name)
    self.canvasScreen = UIUtil.FindComponent(layer.transform, typeof(CS.UnityEngine.RectTransform)).sizeDelta

    self.arrayType = BattleEnum.BattleType.DRBOSS;
    self.checkDrag = false;--是否检测拖拽
    self.isDrag = false;
    self.startCheckTime = 0;--开始检测时间
    self.dragCardData = nil;--拖拽出来的卡牌数据(寄灵人)
    self.dragCardIndex = 0;--拖拽出来的卡牌位置（0--下方列表 1--左 2--中 3--右）
    self.dragEnterIndex = 0;--拖入的卡牌位置（0--下方列表 1--左 2--中 3--右）
    self.curListType = 1;--当前选择的列表 1--寄灵人列表 2--守护灵列表
    self.curTeam = 1;--当前队伍

    self.jlrlist = nil;--自己可用的寄灵人列表
    self.shllist = nil;--自己可用的守护灵列表
    self.shlChooseList = nil;--守护灵选择列表（去除自己之外上阵的守护灵）
    self.selfCardData = {{{ nil, nil, nil }, { nil, nil, nil }},{{ nil, nil, nil }, { nil, nil, nil }},{{ nil, nil, nil }, { nil, nil, nil }} };--自己的卡牌数据{寄灵人，守护灵}
end

--更新列表上阵状态
local function updateListUpArray(self, type, cardid, isUp)
    local dataList = type == 2 and self.shllist or self.jlrlist;
    for i, v in ipairs(dataList) do
        if v.cardXlsxData.id == cardid then
            v.isUpArray = isUp;
            if isUp == 1 then
                v.teamId = self.curTeam
            else
                v.teamId = 0
            end
            break
        end
    end
end

--获取卡牌位置
local function GetCardIndexById(self, type, cardId)
    for i = 1, 3 do
        for j = 1, 3 do
            if self.selfCardData[i][type][j] ~= nil and self.selfCardData[i][type][j].cardXlsxData.id == cardId then
                return j
            end
        end
    end
    return 0
end

--更新寄灵人列表信息
local function updateCardListData(self)
    --寄灵人
    local type = self.dragCardData.cardXlsxData.type;
    for i = 1, 3 do
        if self.dragCardIndex == 0 and self.selfCardData[self.curTeam][type][i] ~= nil and self.selfCardData[self.curTeam][type][i].cardXlsxData.id == self.dragCardData.cardXlsxData.id then
            self.dragCardIndex = i;
            updateCardListData(self);
            return
        end
    end
    --关闭卡牌虚化
    for i = 1, 3 do
        self.selfJLRCardItems[i]:ShowVirtualCard(false);
        self.selfSHLCardItems[i]:ShowVirtualCard(false);
    end

    if self.dragCardIndex == 0 then
        --从列表到上阵
        if self.dragEnterIndex == 0 then
            return
        end
        --守护灵不能单独上阵
        if type == 2 and self.selfCardData[self.curTeam][1][self.dragEnterIndex] == nil then
            return
        end
        local cardIndex = GetCardIndexById(self, type, self.dragCardData.cardXlsxData.id)
        local enterData = self.selfCardData[self.curTeam][type][self.dragEnterIndex];
        if enterData ~= nil then
            --上阵的与现有的一样
            if enterData.cardXlsxData.id == self.dragCardData.cardXlsxData.id then
                return
            end
            --阵上的下阵
            if self.dragCardData.isUpArray == 0 then
                updateListUpArray(self, type, enterData.cardXlsxData.id, 0);
            end
        end
        if self.dragCardData.isUpArray == 1 then
            if enterData ~= nil then
                enterData.teamId = self.dragCardData.teamId
            end
            self.selfCardData[self.dragCardData.teamId][type][cardIndex] = enterData
            if type == 1 then
                self.selfCardData[self.dragCardData.teamId][2][cardIndex], self.selfCardData[self.curTeam][2][self.dragEnterIndex] = self.selfCardData[self.curTeam][2][self.dragEnterIndex], self.selfCardData[self.dragCardData.teamId][2][cardIndex]
                if self.selfCardData[self.dragCardData.teamId][2][cardIndex] ~= nil then
                    self.selfCardData[self.dragCardData.teamId][2][cardIndex].teamId = self.dragCardData.teamId
                end
                if self.selfCardData[self.curTeam][2][self.dragEnterIndex] ~= nil then
                    self.selfCardData[self.curTeam][2][self.dragEnterIndex].teamId = self.curTeam
                end
            end
        end
        self.selfCardData[self.curTeam][type][self.dragEnterIndex] = self.dragCardData;
        self.selfCardData[self.curTeam][type][self.dragEnterIndex].teamId = self.curTeam;
        updateListUpArray(self, type, self.dragCardData.cardXlsxData.id, 1);
    else
        --下阵
        if self.dragEnterIndex == 0 then
            --最后一个寄灵人不能下阵
            if type == 1 then
                local hasJLR = false
                for i = 1, 3 do
                    for j = 1, 3 do
                        if i ~= self.dragCardIndex and self.selfCardData[i][type][j] ~= nil then
                            hasJLR = true
                            break
                        end
                    end
                end
                if not hasJLR then
                    UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100174))
                    return
                end
            end
            updateListUpArray(self, type, self.dragCardData.cardXlsxData.id, 0);
            self.selfCardData[self.curTeam][type][self.dragCardIndex] = nil;
            --寄灵人下阵，守护灵也要下阵
            if type == 1 and self.selfCardData[self.curTeam][2][self.dragCardIndex] ~= nil then
                updateListUpArray(self, 2, self.selfCardData[self.curTeam][2][self.dragCardIndex].cardXlsxData.id, 0);
                self.selfCardData[self.curTeam][2][self.dragCardIndex] = nil;
            end
        else
            --上阵交换位置
            --守护灵不能单独上阵
            if type == 2 and self.selfCardData[self.curTeam][1][self.dragEnterIndex] == nil then
                return
            end
            local enterData = self.selfCardData[self.curTeam][type][self.dragEnterIndex];
            self.selfCardData[self.curTeam][type][self.dragEnterIndex] = self.dragCardData;
            self.selfCardData[self.curTeam][type][self.dragCardIndex] = enterData;
            --寄灵人互换，守护灵也要互换
            if type == 1 then
                self.selfCardData[self.curTeam][2][self.dragCardIndex], self.selfCardData[self.curTeam][2][self.dragEnterIndex] = self.selfCardData[self.curTeam][2][self.dragEnterIndex], self.selfCardData[self.curTeam][2][self.dragCardIndex];
            end
        end
    end

    self:OnRefresh();
end

--更新自己上阵的卡牌数据
local function updateSelfUpHeroData(self)
    --更新寄灵人卡牌信息
    for i = 1, 3 do
        self.selfJLRCardItems[i]:OnRefresh(self.selfCardData[self.curTeam][1][i]);
        if self.selfCardData[self.curTeam][1][i] ~= nil then
            self.selfSHLCardItems[i]:OnRefresh(self.selfCardData[self.curTeam][2][i], true);
        else
            self.selfSHLCardItems[i]:OnRefresh(nil, false);
        end
    end

    --刷新队伍信息
    UpdateTeamData(self)

    --- 判断是否有可上阵的守护灵，显示提示特效
    self.canUpArray = false;
    for a, b in pairs(self.shllist) do
        if b.isUpArray == 0 then
            self.canUpArray = true
            break
        end
    end
    for i = 1, 3 do
        if self.selfCardData[self.curTeam][1][i] ~= nil and self.selfCardData[self.curTeam][2][i] == nil then
            self.selfSHLCardItems[i]:ShowDragGlowEffect(self.canUpArray)
        else
            self.selfSHLCardItems[i]:ShowDragGlowEffect(false)
        end
    end
end

--开始拖拽卡牌
local function BeginDrag(self)
    if self.dragCardData.cardXlsxData.type == 1 then
        self.dragJLRCardItem.gameObject:SetActive(true);
        self.dragJLRCardItem:OnSetData(self.dragCardData);
        if self.selfCardData[self.curTeam][2][self.dragCardIndex] == nil then
            self.dragSHLCardItem.gameObject:SetActive(false);
        else
            self.dragSHLCardItem.gameObject:SetActive(true);
            self.dragSHLCardItem:OnSetData(self.selfCardData[self.curTeam][2][self.dragCardIndex]);
            self.selfSHLCardItems[self.dragCardIndex]:ShowVirtualCard(true);
        end
    else
        self.dragSHLCardItem.gameObject:SetActive(true);
        self.dragSHLCardItem:OnSetData(self.dragCardData);
        self.dragJLRCardItem.gameObject:SetActive(false);
    end

    self.checkDrag = false;
    self.isDrag = true;

    --- 显示对应闪烁特效
    for i = 1, 3 do
        self.selfJLRCardItems[i]:ShowDragGlowEffect(self.dragCardData.cardXlsxData.type == 1);
        self.selfSHLCardItems[i]:ShowDragGlowEffect(self.dragCardData.cardXlsxData.type ~= 1 and self.selfCardData[self.curTeam][1][i] ~= nil);
    end
end

--结束拖拽
local function EndDrag(self)
    self.checkDrag = false;
    self.dragEnterIndex = 0;
    if self.isDrag == false then
        return
    end

    --- 隐藏闪烁特效
    for i = 1, 3 do
        self.selfJLRCardItems[i]:ShowDragGlowEffect(false);
        self.selfSHLCardItems[i]:ShowDragGlowEffect(false);
    end

    if self.dragCardData.cardXlsxData.type == 1 then
        self.curPos = self.dragJLRCardItem.transform.localPosition
    else
        self.curPos = self.dragSHLCardItem.transform.localPosition
    end

    local minDis = Mathf.Infinity;
    for i = 1, 3 do
        if self.dragCardData.cardXlsxData.type == 1 then
            local curDisX = Mathf.Abs(self.dragJLRTargetPosition[i].x - self.curPos.x);
            local curDisY = Mathf.Abs(self.dragJLRTargetPosition[i].y - self.curPos.y);
            if (curDisX <= 200 and curDisY < 300 and curDisX < minDis and curDisY < minDis) then
                self.dragEnterIndex = i;
                self.selfJLRCardItems[i]:ShowDownTipEffect();
                if self.selfCardData[self.curTeam][2][self.dragCardIndex] ~= nil then
                    self.selfSHLCardItems[i]:ShowDownTipEffect();
                end
            end
        else
            local curDisX = Mathf.Abs(self.dragSHLTargetPosition[i].x - self.curPos.x);
            local curDisY = Mathf.Abs(self.dragSHLTargetPosition[i].y - self.curPos.y);
            if (curDisX <= 175 and curDisY < 175 and curDisX < minDis and curDisY < minDis) and self.selfCardData[self.curTeam][1][i] ~= nil then
                self.dragEnterIndex = i;
                self.selfSHLCardItems[i]:ShowDownTipEffect();
            end
        end
    end
    updateCardListData(self);
    self.isDrag = false;
    self.dragCardIndex = 0;
    self.dragJLRCardItem.gameObject:SetActive(false);
    self.dragSHLCardItem.gameObject:SetActive(false);
    updateSelfUpHeroData(self);
end

--检测拖拽
local function BattleCheckDrag(self, itemData, cardIndex)
    if itemData == nil then
        self.checkDrag = false;
        EndDrag(self);
    else
        self.checkDrag = true;
        self.startCheckTime = Time.time;
        self.dragCardData = itemData;
        self.dragCardIndex = cardIndex;
    end
end

--更新拖拽的卡牌位置
local function UpdateCardPos(self)
    if self.checkDrag == true then
        self.curPos = Vector2.New((Input.mousePosition.x / Screen.width - 0.5) * self.canvasScreen.x,
                (Input.mousePosition.y / Screen.height - 0.5) * self.canvasScreen.y);
        if self.curPos.x > -800 and self.curPos.x < 800 then
            BeginDrag(self);
            self.lastDragPos = self.curPos
        end
    end
    if self.isDrag == false then
        return ;
    end
    self.curPos = Vector2.New((Input.mousePosition.x / Screen.width - 0.5) * self.canvasScreen.x,
            (Input.mousePosition.y / Screen.height - 0.5) * self.canvasScreen.y);
    --- 卡牌旋转效果
    local posDisX = self.curPos.x - self.lastDragPos.x;
    local rotDixX = Mathf.Floor(Mathf.Min(posDisX * 2, 60));
    if posDisX < 0 then
        rotDixX =  Mathf.Floor(Mathf.Max(posDisX * 2, -60));
    end
    self.lastDragPos = self.curPos

    if self.dragCardData.cardXlsxData.type == 1 then
        self.dragJLRCardItem.transform.localPosition = self.curPos;
        self.dragJLRCardItem.transform.localEulerAngles =Vector3.New(0, rotDixX,0)
        if self.dragSHLCardItem.gameObject.activeInHierarchy then
            self.dragSHLCardItem.transform.localPosition = Vector2.New(self.curPos.x + 209, self.curPos.y - 70);
            self.dragSHLCardItem.transform.localEulerAngles =Vector3.New(0, rotDixX,0)
        end
    else
        self.dragSHLCardItem.transform.localPosition = self.curPos;
        self.dragSHLCardItem.transform.localEulerAngles =Vector3.New(0, rotDixX,0)
    end

    --- 显示拖拽提示特效
    local minDis = Mathf.Infinity;
    for i = 1, 3 do
        if self.dragCardData.cardXlsxData.type == 1 then
            local curDisX = Mathf.Abs(self.dragJLRTargetPosition[i].x - self.curPos.x);
            local curDisY = Mathf.Abs(self.dragJLRTargetPosition[i].y - self.curPos.y);
            if (curDisX <= 200 and curDisY < 300 and curDisX < minDis and curDisY < minDis) or i == self.dragCardIndex then
                self.selfJLRCardItems[i]:ShowVirtualCard(true);
                if self.selfCardData[self.curTeam][2][self.dragCardIndex] ~= nil then
                    self.selfSHLCardItems[i]:ShowVirtualCard(true);
                else
                    self.selfSHLCardItems[i]:ShowVirtualCard(false);
                end
            else
                self.selfJLRCardItems[i]:ShowVirtualCard(false);
                self.selfSHLCardItems[i]:ShowVirtualCard(false);
            end
        else
            local curDisX = Mathf.Abs(self.dragSHLTargetPosition[i].x - self.curPos.x);
            local curDisY = Mathf.Abs(self.dragSHLTargetPosition[i].y - self.curPos.y);
            if i == self.dragCardIndex or ((curDisX <= 175 and curDisY < 175 and curDisX < minDis and curDisY < minDis) and self.selfCardData[self.curTeam][1][i] ~= nil) then
                self.selfSHLCardItems[i]:ShowVirtualCard(true);
            else
                self.selfSHLCardItems[i]:ShowVirtualCard(false);
            end
        end
    end
end

--显示选择守护灵界面(将要设置守护灵的位置)
local function ShowSHLChoose(self, index, isReset)
    BattleCheckDrag(self, nil);
    --是否有对应的寄灵人
    if self.selfCardData[self.curTeam][1][index] == nil then
        return
    end
    --判断是否有可上阵的守护灵
    if not self.canUpArray and self.selfCardData[self.curTeam][2][index] == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100131))
        return
    end
    --拷贝出一份守护灵数据，用于单独显示
    if isReset then
        self.shlmask_btn.gameObject:SetActive(true);
        self.shl_choose_text:SetText(string.format(DataUtil.GetClientText(100173),self.selfCardData[self.curTeam][1][index].cardXlsxData.name));
        --排序守护灵
        self.model:SortCardList(self.shllist)
    end
    self.shlChooseList = {};
    for a, b in ipairs(self.model.shllist) do
        table.insert(self.shlChooseList, b);
    end
    for i = 1, 3 do
        if self.selfCardData[self.curTeam][2][i] ~= nil and i ~= index then
            for j = 1, #self.shlChooseList do
                if self.shlChooseList[j].cardXlsxData.id == self.selfCardData[self.curTeam][2][i].cardXlsxData.id then
                    table.remove(self.shlChooseList, j);
                    break
                end
            end
        end
    end
    self.curListType = 2;
    self.shl_wrapgroup:SetLength(table.count(self.shlChooseList));
    if isReset then
        self.shl_wrapgroup:ResetToBeginning();
    else
        self.shl_wrapgroup:WrapContent(true);
    end

    if not self.shl_choose_obj.gameObject.activeInHierarchy then
        self.shl_choose_obj.gameObject:SetActive(true);
    end
    self.dragCardIndex = index;
    self.dragEnterIndex = index;
end

--设置守护灵数据
local function SetSHLData(self, itemData)
    if itemData == nil then
        if self.selfCardData[self.curTeam][2][self.dragCardIndex] == nil then
            return
        else
            --守护灵下阵
            self.dragEnterIndex = 0;
            self.dragCardData = self.selfCardData[self.curTeam][2][self.dragCardIndex];
        end
        CloseSHLChoose(self);
    else
        --守护灵上阵
        self.dragCardIndex = 0;
        self.dragCardData = itemData;
        CloseSHLChoose(self);
        self.selfSHLCardItems[self.dragEnterIndex]:ShowDownTipEffect();
    end
    updateCardListData(self);
    self.dragCardIndex = Mathf.Max(self.dragCardIndex, self.dragEnterIndex);
    self.dragEnterIndex = Mathf.Max(self.dragCardIndex, self.dragEnterIndex);
    updateSelfUpHeroData(self);
end

--初始化卡牌列表
local function InitWrapList(self)
    self.jlrlist = self.model.jlrlist
    self.jlr_wrapgroup:SetLength(table.count(self.jlrlist))
    self.jlr_wrapgroup:ResetToBeginning()
    self.shllist = self.model.shllist
    self.shl_wrapgroup:SetLength(table.count(self.shllist))
    self.shl_wrapgroup:ResetToBeginning()
    self.selfCardData = self.model.roles;

    for i = 1, 3 do
        self.selfJLRCardItems[i]:ShowDownTipEffect(false);
        self.selfSHLCardItems[i]:ShowDownTipEffect(false);
    end

    updateSelfUpHeroData(self);
end

local function OnEnable(self)
	base.OnEnable(self)
    InitWrapList(self)
    SwitchTeam(self, self.curTeam)
    UpdateTeamData(self)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
    if self.curListType == 1 then
        self.jlr_wrapgroup:SetLength(table.count(self.jlrlist))
        self.jlr_wrapgroup:WrapContent(true);
    else
        ShowSHLChoose(self, Mathf.Max(self.dragCardIndex, self.dragEnterIndex), false);
    end
end

local function Update(self)
    if self.checkDrag == true and Time.time - self.startCheckTime > 0.5 then
        UpdateCardPos(self)
    end
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
	-- 销毁
	base.OnDestroy(self)
end

UIDRBossEmBattleView.OnCreate = OnCreate
UIDRBossEmBattleView.OnEnable = OnEnable
UIDRBossEmBattleView.OnRefresh = OnRefresh
UIDRBossEmBattleView.Update = Update
UIDRBossEmBattleView.OnAddListener = OnAddListener
UIDRBossEmBattleView.OnRemoveListener = OnRemoveListener
UIDRBossEmBattleView.OnDestroy = OnDestroy
UIDRBossEmBattleView.EndDrag = EndDrag;
UIDRBossEmBattleView.BattleCheckDrag = BattleCheckDrag;
UIDRBossEmBattleView.UpdateCardPos = UpdateCardPos;
UIDRBossEmBattleView.ShowSHLChoose = ShowSHLChoose;
UIDRBossEmBattleView.SetSHLData = SetSHLData;
UIDRBossEmBattleView.BeginDrag = BeginDrag
UIDRBossEmBattleView.updateSelfUpHeroData = updateSelfUpHeroData

return UIDRBossEmBattleView
