--[[
-- added by wsh @ 2017-12-03
-- UI工具类
--]]

local UIUtil = {}

local item_prb_path = "UI/Prefabs/View/CommonItemPrefab.prefab"
local component_prb_path = "UI/Prefabs/View/CloseBtnComponent.prefab"

local function GetChild(trans, index)
    return trans:GetChild(index)
end

-- 注意：根节点不能是隐藏状态，否则路径将找不到
local function FindComponent(trans, ctype, path)
    assert(trans ~= nil)
    assert(ctype ~= nil)

    local targetTrans = trans
    if path ~= nil and type(path) == "string" and #path > 0 then
        targetTrans = trans:Find(path)
    end
    if IsNull(targetTrans) then
        return nil
    end
    local cmp = targetTrans:GetComponent(ctype)
    if not IsNull(cmp) then
        return cmp
    end
    return targetTrans:GetComponentInChildren(ctype)
end

local function FindTrans(trans, path)
    return trans:Find(path)
end

local function FindText(trans, path)
    return FindComponent(trans, typeof(CS.UnityEngine.UI.Text), path)
end

local function FindOutline(trans, path)
    return FindComponent(trans, typeof(CS.UnityEngine.UI.Outline), path)
end
local function FindOutlineEx(trans, path)
    return FindComponent(trans, typeof(CS.OutlineEx), path)
end
local function FindImage(trans, path)
    return FindComponent(trans, typeof(CS.UnityEngine.UI.Image), path)
end

local function FindButton(trans, path)
    return FindComponent(trans, typeof(CS.UnityEngine.UI.Button), path)
end

local function FindToggle(trans, path)
    return FindComponent(trans, typeof(CS.UnityEngine.UI.Toggle), path)
end

local function FindDrag(trans, path)
    return FindComponent(trans, typeof(CS.UIDrag), path)
end

local function FindDrop(trans, path)
    return FindComponent(trans, typeof(CS.UIDrop), path)
end
local function FindInput(trans, path)
    return FindComponent(trans, typeof(CS.UnityEngine.UI.InputField), path)
end
local function FindGrid(trans, path)
    return FindComponent(trans, typeof(CS.UnityEngine.UI.GridLayoutGroup), path)
end
local function FindSlider(trans, path)
    return FindComponent(trans, typeof(CS.UnityEngine.UI.Slider), path)
end

local function FindScrollRect(trans, path)
    return FindComponent(trans, typeof(CS.UnityEngine.UI.ScrollRect), path)
end

local function CommonLoadImg(trans, atlas, img_name)
    AtlasManager:GetInstance():LoadImageAsync(atlas, img_name
    , function(sprite)
                -- 预设已经被销毁
                if IsNull(trans) then
                    return
                end
                if not IsNull(sprite) then
                    UIUtil.FindImage(trans).sprite = sprite
                end
            end)
end

-- 获取直属画布
local function GetCanvas(ui_component)
    -- 初始化直属画布
    local canvas = nil
    if ui_component._class_type == UILayer then
        canvas = ui_component
    else
        local now_holder = ui_component.holder
        while now_holder ~= nil do
            local var = ui_component:GetComponents(UICanvas)
            if table.count(var) > 0 then
                assert(table.count(var) == 1)
                canvas = var[1]
                break
            end
            now_holder = now_holder.holder
        end
    end
    assert(canvas ~= nil)
    return canvas
end

--计算文本高度
local function GetTextHeight(unity_text, str, width)
    if width == nil then
        width = unity_text.rectTransform.sizeDelta.x;
    end
    local textSettings = unity_text:GetGenerationSettings(Vector2.New(width, 0))
    local unitPixed = unity_text.pixelsPerUnit;
    local textGener = CS.UnityEngine.TextGenerator()
    return textGener:GetPreferredHeight(str, textSettings) / unitPixed;
end

--计算文本宽度
local function GetTextWidth(unity_text, str)
    local textSettings = unity_text:GetGenerationSettings(Vector2.New(unity_text.rectTransform.sizeDelta.x, 0))
    local unitPixed = unity_text.pixelsPerUnit;
    local textGener = CS.UnityEngine.TextGenerator()
    return textGener:GetPreferredWidth(str, textSettings) / unitPixed;
end

local function RecyleComItem(item_list)
    for i, v in ipairs(item_list) do
        v:RecyleItem();
    end
end
--创建公用的物品item,
--item_list{{Id=0,Num=10},{Id=0,Num==10},{Id=0,Num==10}};
local function CreatCommonItem(self, item_List, callback, parent_trans, isShowName)
    local count = 0
    local commonItem = require("UI.UIComm.Component.UICommonItemComponent")
    local itemList = {};
    for _, v in ipairs(item_List) do
        GameObjectPool:GetInstance():GetGameObjectAsync(item_prb_path, function(go)
            if not IsNull(go) then
                count = count + 1
                local singleItem = commonItem.New(self, go);
                local trans = FindComponent(go.transform, typeof(CS.UnityEngine.RectTransform), "");
                trans:SetParent(parent_trans.transform);
                trans.localScale = Vector3.New(1, 1, 1);
                trans.localPosition = Vector3.New(0, 0, 0);
                singleItem:OnCreate();
                singleItem:Refresh(v, isShowName);
                table.insert(itemList, singleItem)
                if count == #item_List then
                    callback(itemList);
                end
            end
        end)
    end
end

--创建一个返回按钮组件
--_parent 父节点
--_callback 关闭按钮回调
--_callback 关闭按钮回调
--_backMainCallback 返回主城按钮回调
--_titleName 标题名字
--_isShowHelp 是否显示帮助按钮
--_helpDataId 帮助提示面板id 对应help表
local function CreatCloseBtnComponent(self, _parent, _callback, _closeCallback, _backMainCallback, _titleName, _isShowHelp, _helpDataId, notreturn)
    local commonItem = require("UI.UIComm.Component.UICloseBtnComponent")
    GameObjectPool:GetInstance():GetGameObjectAsync(component_prb_path, function(go)
        if not IsNull(go) then
            local singleComponent = commonItem.New(self, go);
            local rectTrans = FindComponent(go.transform, typeof(CS.UnityEngine.RectTransform), "");
            rectTrans:SetParent(_parent.transform);
            rectTrans.localScale = Vector3.New(1, 1, 1);
            rectTrans.anchorMin = Vector2.New(0, 0);
            rectTrans.anchorMax = Vector2.New(1, 1);
            rectTrans.pivot = Vector2.New(0.5, 0.5);
            rectTrans.anchoredPosition3D = Vector3.New(0, 0, 0);
            rectTrans.sizeDelta = Vector2.New(0, 0);
            singleComponent:OnCreate();
            singleComponent:Refresh(_closeCallback, _backMainCallback, _titleName, _isShowHelp, _helpDataId, notreturn);
            _callback(singleComponent);
        end
    end)
end

--item_list{{Id=0,Num=10,Frame="",Icon="",TypeName=""},{。。。}};
local function CreatCommonFunctionItem(self, item_List, callback, parent_trans)

    local commonItem = require("UI.UIComm.Component.UICommonItemComponent")
    local itemList = {};
    for i, v in ipairs(item_List) do
        GameObjectPool:GetInstance():GetGameObjectAsync(item_prb_path, function(go)
            if not IsNull(go) then
                local singleItem = commonItem.New(self, go);
                local trans = FindComponent(go.transform, typeof(CS.UnityEngine.RectTransform), "");
                trans:SetParent(parent_trans.transform);
                trans.localScale = Vector3.New(1, 1, 1);
                trans.localPosition = Vector3.New(0, 0, 0);
                singleItem:OnCreate();
                singleItem:RefreshFunctionItem(v);
                table.insert(itemList, singleItem)
                if i == #item_List then
                    callback(itemList);
                end
            end
        end)
    end
end
--字符串截取，安字符长度截取
local function StringSub(inputStr, subi, subj)
    if not inputStr or type(inputStr) ~= "string" or #inputStr <= 0 then
        return nil;
    end
    local length = 0; --字符的个数
    local index = 1;
    local subByteCount = 1;--截取掉的字节长度
    for i = 1, subj do
        local curByte = string.byte(inputStr, index);
        local byteCount = 1;
        if curByte > 239 then
            byteCount = 4;--4字节字符
        elseif curByte > 223 then
            byteCount = 3;--汉字
        elseif curByte > 128 then
            byteCount = 2;--双字节字符
        else
            byteCount = 1;--单字节字符
        end
        index = index + byteCount;
        if length + 1 < subi then
            subByteCount = subByteCount + byteCount;
        end
        if length + 1 > subj then
            break ;
        end
        length = length + 1;
    end
    local finalStr = string.sub(inputStr, subByteCount, index - 1);
    return finalStr;
end

--设置英雄星级
local function SetHeroStar(starNum, starList)
    for i, v in ipairs(starList) do
        if i <= starNum then
            v:SetSpriteName("ui_t_c2_099");
        else
            v:SetSpriteName("ui_t_c2_100");
        end
    end
end

local function SetUIParent(child, parent)
    child:SetParent(parent)
    local _rect = FindComponent(child, typeof(CS.UnityEngine.RectTransform))
    _rect.offsetMax = Vector2.zero
    _rect.offsetMin = Vector2.zero
    _rect.localScale = Vector3.one
    _rect.localPosition = Vector3.zero
end


--获取卡牌的品质框
local function GetCardFrameByQuality(quality)
    local bottomBgTable = { "ui_dtex_Quality_014", "ui_dtex_Quality_015", "ui_dtex_Quality_016", "ui_dtex_Quality_017" };
    local topBgTable = { "ui_dtex_Quality_018", "ui_dtex_Quality_019", "ui_dtex_Quality_020", "ui_dtex_Quality_021" };
    local qualityIconTable = { "ui_dtex_Quality_010", "ui_dtex_Quality_011", "ui_dtex_Quality_012", "ui_dtex_Quality_013" };
    local diBgTable = { "ui_t_Gacha_003", "ui_t_Gacha_004", "ui_t_Gacha_005", "ui_t_Gacha_006" };
    local topBg, bottomBg, qualityIcon, gachaBg = "";
    if bottomBgTable[quality] ~= nil then
        bottomBg = bottomBgTable[quality];
    else
        bottomBg = bottomBgTable[1];
    end
    if topBgTable[quality] ~= nil then
        topBg = topBgTable[quality];
    else
        topBg = topBgTable[1];
    end
    if qualityIconTable[quality] ~= nil then
        qualityIcon = qualityIconTable[quality];
    else
        qualityIcon = qualityIconTable[1];
    end
    if diBgTable[quality] ~= nil then
        gachaBg = diBgTable[quality];
    else
        gachaBg = diBgTable[1];
    end
    return bottomBg, topBg, qualityIcon, gachaBg;
end


--获取时间字符串
local function GetTimeStr(num)
    if num >= 10 then
        return tostring(num)
    elseif num > 0 then
        return string.format("0%s", num)
    else
        return "00"
    end
end

--转化时间格式（00:00:00）（时分秒）
local function GetFinialTime(num)
    if num <= 0 then
        return "00:00:00"
    end
    local hour = math.floor(num / 3600)
    local tempMin = num % 3600
    local min = math.floor(tempMin / 60)
    local seconds = math.floor(tempMin % 60)
    return GetTimeStr(hour) .. ":" .. GetTimeStr(min) .. ":" .. GetTimeStr(seconds)
end

--转化时间格式（00d 00:00:00）（天 时分秒）
local function GetTimeStrDHMS(num)
    if num <= 0 then
        return "00:00:00"
    end
    local day = math.floor(num / 86400)
    local tempMin = num % 86400
    local hour = math.floor(tempMin / 3600)
    tempMin = tempMin % 3600
    local min = math.floor(tempMin / 60)
    local seconds = math.floor(tempMin % 60)
    return day .. "天 " .. GetTimeStr(hour) .. ":" .. GetTimeStr(min) .. ":" .. GetTimeStr(seconds)
end

--转化时间格式（00:00）（分秒）
local function GetTimeStrMS(num)
    if num <= 0 then
        return "00:00:00"
    end
    local min = math.floor(num / 60)
    local seconds = math.floor(num % 60)
    return GetTimeStr(min) .. ":" .. GetTimeStr(seconds)
end

local function SetChatImgStatus(status)
    if UIManager:GetInstance():GetWindow(UIWindowNames.UIOpenChat, true, true) ~= nil then
        if status then
            if GuideGroup:GetInstance().Runing or GuideWeakGroup:GetInstance().Runing then
            else
                UIManager:GetInstance():Broadcast(UIMessageNames.UI_CHAT_SHOW_ACTIVE, status)
            end
        else
            UIManager:GetInstance():Broadcast(UIMessageNames.UI_CHAT_SHOW_ACTIVE, status)
        end
    else
        if not GuideGroup:GetInstance().Runing and not GuideWeakGroup:GetInstance().Runing and status then
            --UIManager:GetInstance():OpenWindow(UIWindowNames.UIOpenChat)
        end
    end

end
--返回主城，关闭所有窗口，只打开主城窗口
local function BackHomeMain()
    UIManager:GetInstance():CloseAllWindows({ UIWindowNames.UIGuide })
    UIManager:GetInstance():ClearWindowStack()
    SetChatImgStatus(true)
    if SceneManager:GetInstance().current_scene.scene_config.Name == SceneConfig.HomeScene.Name then
        UIManager:GetInstance():OpenWindow(UIWindowNames.UITestMain)
        local mainSceneName = SceneManager:GetInstance().scenes[SceneConfig.HomeScene.Name].scene_name;
        if not string.isNilOrEmpty(mainSceneName) then
            SceneLoadManager:GetInstance():ConfigLitAndShadow(mainSceneName, Vector3.zero, Vector3.zero)
        end
    else
        SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
    end

end

local function GetCountDownDayTime(time)
    local curTime = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000)
    local curWeek = os.date("%w", curTime)
    local temp = math.modf(curTime / 86400)
    local totalDay = temp - (tonumber(curWeek) - 1)
    local resultTime = (totalDay * 86400 + time) - curTime
    if resultTime < 0 then
        resultTime = (totalDay * 86400 + time) + 86400 * 7 - curTime
    end

    return resultTime
end

--设置按钮状态显示
local function SetButtonState(_btnCom, _btnImgCom, _text, _outline, _grayMat, _state)
    if _state then
        _btnCom:SetInteractable(true)
        _btnImgCom:SetMat(nil)
        _text:SetColor32(239, 234, 222, 255);
        _outline:SetColor32(5, 5, 5, 255)
    else
        _btnCom:SetInteractable(false)
        _btnImgCom:SetMat(_grayMat)
        _text:SetColor32(21, 24, 30, 255);
        _outline:SetColor32(84, 83, 83, 255)
    end
end

--按某个字符，分割字符串，返回list
local function StringSplitByChar(str, char)
    local strList = {}
    local startIndex = 1
    local endIndex = string.find(str, char)
    while endIndex do
        table.insert(strList, string.sub(str, startIndex, endIndex - 1))
        startIndex = endIndex + 1
        endIndex = string.find(str, char, startIndex)
    end

    if startIndex < string.len(str) then
        table.insert(strList, string.sub(str, startIndex, string.len(str)))
    end

    return strList
end

--给定一个transform判断父节点名字是不是tranName
local function DoseTranParentHasName(tran, tranName)
    if tran == nil then
        return false
    end
    local parent = tran
    local canvas = nil
    while not IsNull(parent) do
        --canvas = parent:GetComponent(typeof(CS.UnityEngine.Canvas))
        canvas = parent.name
        if canvas == tranName then
            return true
        end
        parent = parent.parent
    end
    return false
end

--获取装备名字通过品质
local function GetEquipNameByQuality(_quality)
    local strList = { [1] = "<color=#5cd882>%s</color>", [2] = "<color=#4ac6ef>%s</color>", [3] = "<color=#d178ff>%s</color>", [4] = "<color=#ffa82b>%s</color>" };
    if strList[_quality] ~= nil then
        return strList[_quality];
    end
    return "<color=#efeade>%s</color>";
end
--设置特效层级
local function SetEffectLayer(effect, layer, add_num)
    if effect then
        local topRenderer = effect.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.ParticleSystem))
        if topRenderer ~= nil then
            for i = 0, topRenderer.Length - 1 do
                local mats = topRenderer[i]:GetComponentsInChildren(typeof(CS.UnityEngine.Renderer))
                if mats then
                    for j = 0, mats.Length - 1 do
                        if add_num then
                            mats[j].sortingOrder = layer + add_num
                        else
                            mats[j].sortingOrder = layer + 1
                        end

                    end
                end
            end
        end
    else
        Logger.LogError("特效不存在")
    end

end

--从战斗返回关卡场景
local function ReturnMapScene(bool)
    LJAudioManger:GetInstance():StopAllSoundEffect()
    if SceneManager:GetInstance().current_scene.proxy ~= nil then
        SceneManager:GetInstance().current_scene.proxy:OnDestroy();
        SceneManager:GetInstance().current_scene.proxy = nil;
    end
    UIManager:GetInstance():OpenWindow(UIWindowNames.UILevelMainNew, 1, nil, not bool);
end
--获得当前模式阵容key
local function GetKeyByBattleType(battle_type, son_type)
    --0-冒险，1-风，2-花，3-雪，4-月，5-恶灵入侵，6-试炼宝库，7-个人竞技进攻，8-个人竞技防守，9-实时竞技
    if battle_type == BattleEnum.BattleType.NORMAL then
        --普通关卡
        return 0
    elseif battle_type == BattleEnum.BattleType.LUHUAGULOU then
        --楼花鼓楼
        return LuHuaGuLouData:GetInstance().campIndex
    elseif battle_type == BattleEnum.BattleType.SOLO_BOSS then
        --个人Boss

    elseif battle_type == BattleEnum.BattleType.SOLO_ARENA then
        --个人竞技场
        return 7
    elseif battle_type == BattleEnum.BattleType.TEACHING then
        --教学关卡

    elseif battle_type == BattleEnum.BattleType.CACODEMON then
        --恶灵来袭
        return 5
    elseif battle_type == BattleEnum.BattleType.PVP then
        --PVP战斗
        return 9
    elseif battle_type == BattleEnum.BattleType.STORY then
        --剧情战斗

    elseif battle_type == BattleEnum.BattleType.TESTHOARD then
        --试炼宝库
        return 6
    elseif battle_type == BattleEnum.BattleType.BIOGRAPLY then
        --传记副本
        return 0
    else
        --其他
        return 0
    end

end

local function UIAutoAdaptiveScreen(rectTrans, isLeft)
    local needScaleWidthPixel = 86
    if (rectTrans ~= null) then
        if (rectTrans.sizeDelta.x == 0) then
            rectTrans.sizeDelta = Vector2.New(-needScaleWidthPixel * 2, 0)
        else
            if (isLeft) then
                rectTrans.anchoredPosition = rectTrans.anchoredPosition + Vector2.New(needScaleWidthPixel, 0)
            else
                rectTrans.anchoredPosition = rectTrans.anchoredPosition - Vector2.New(needScaleWidthPixel, 0)
            end
        end
    end
end

--清空场景动态创建组件
local function CleanDynamicCreateScenePath()
    local getNwaCardSceneName = SceneLoadManager.GenSceneAssetFullPath("Map_SendTheSpirit")
    SceneLoadManager:GetInstance():CleanSceneNode(getNwaCardSceneName)
    local JLROrSHLSceneDataPath = SceneLoadManager.GenSceneAssetFullPath("Map_RolesDisplay")
    SceneLoadManager:GetInstance():CleanSceneNode(JLROrSHLSceneDataPath)
end

local function CreateUIFadeAnim(fade_game, old_alpha, new_alpha)
    if old_alpha == nil then
        old_alpha = 0
    end
    if new_alpha == nil then
        new_alpha = 1
    end
    LuaTweener.UIFadeTo(fade_game, old_alpha, new_alpha, 1, EaseFormula.OutQuad, function()
        if not IsNull(fade_game) and fade_game:GetActive() then
            CreateUIFadeAnim(fade_game, new_alpha, old_alpha)
        end
    end, true)
end
UIUtil.CreateUIFadeAnim = CreateUIFadeAnim
UIUtil.ReturnMapScene = ReturnMapScene;
UIUtil.GetEquipNameByQuality = GetEquipNameByQuality;
UIUtil.SetUIParent = SetUIParent
UIUtil.DoseTranParentHasName = DoseTranParentHasName
UIUtil.GetTextWidth = GetTextWidth
UIUtil.GetTextHeight = GetTextHeight
UIUtil.CommonLoadImg = CommonLoadImg
UIUtil.GetChild = GetChild
UIUtil.FindComponent = FindComponent
UIUtil.FindTrans = FindTrans
UIUtil.FindText = FindText
UIUtil.FindImage = FindImage
UIUtil.FindButton = FindButton
UIUtil.FindToggle = FindToggle
UIUtil.FindOutline = FindOutline
UIUtil.FindOutlineEx = FindOutlineEx
UIUtil.FindInput = FindInput
UIUtil.FindSlider = FindSlider
UIUtil.FindScrollRect = FindScrollRect
UIUtil.CreatCommonItem = CreatCommonItem
UIUtil.CreatCommonFunctionItem = CreatCommonFunctionItem
UIUtil.RecyleComItem = RecyleComItem
UIUtil.SetHeroStar = SetHeroStar
UIUtil.StringSub = StringSub
UIUtil.GetCardFrameByQuality = GetCardFrameByQuality
UIUtil.FindDrag = FindDrag
UIUtil.FindDrop = FindDrop
UIUtil.BackHomeMain = BackHomeMain
UIUtil.SetChatImgStatus = SetChatImgStatus
UIUtil.FindGrid = FindGrid
UIUtil.GetTimeStr = GetTimeStr
UIUtil.GetFinialTime = GetFinialTime
UIUtil.GetTimeStrDHMS = GetTimeStrDHMS
UIUtil.GetTimeStrMS = GetTimeStrMS
UIUtil.GetCountDownDayTime = GetCountDownDayTime
UIUtil.CreatCloseBtnComponent = CreatCloseBtnComponent
UIUtil.SetButtonState = SetButtonState
UIUtil.StringSplitByChar = StringSplitByChar
UIUtil.SetEffectLayer = SetEffectLayer
UIUtil.GetKeyByBattleType = GetKeyByBattleType
UIUtil.CleanDynamicCreateScenePath = CleanDynamicCreateScenePath
UIUtil.UIAutoAdaptiveScreen = UIAutoAdaptiveScreen
return ConstClass("UIUtil", UIUtil)