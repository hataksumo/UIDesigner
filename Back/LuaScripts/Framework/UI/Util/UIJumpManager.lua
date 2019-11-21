---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/6/17 15:13
---

local UIJumpManager = {};

local function JumpByTypeAndParam(_type, _param)
    if _type == 10101 then
        --冒险 param-章节id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UILevelMainNew,1,false);
    elseif _type == 10102 then
        --关卡详情 param-关卡id

    elseif _type == 10201 then
        --芦花古楼 param-门id (决定跳转后，是否选中指定门；配置为空则使用默认选中)
        local state, type, des = UnlockData:GetInstance():GetLockDataState(102)
        if state then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UILhglNew, _param);
        else
            UISpecial:GetInstance():UITipText(des)
        end

    elseif _type == 10301 then
        --恶灵入侵 param-恶灵组id  (决定跳转后，是否选中指定恶灵组；配置为空则使用默认选中)
        local state, type, des = UnlockData:GetInstance():GetLockDataState(103)
        if state then
            if CacodemonData:GetInstance().cacodemonList ~= nil and #CacodemonData:GetInstance().cacodemonList > 0 then
                UIManager:GetInstance():OpenWindow(UIWindowNames.UICacodemon, _param);
            else
                CacodemonData:GetInstance():GetCacodemonListRequest()
            end
        else
            UISpecial:GetInstance():UITipText(des)
        end
    elseif _type == 10401 then
        --集训营 param-集训营  (决定跳转后，是否选中指定集训组；配置为空则使用默认选中)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UITrainingCamp, true,_param)
    elseif _type == 10501 then
        --派遣挂机 param-章节id
        local state, type, des = UnlockData:GetInstance():GetLockDataState(106)
        if state then
            ExploreData:GetInstance():GetExploreDataState(function(state)
                if state==0 then--第一次探险挂机
                    UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreSetTeamList);
                else
                    UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreMain);
                end

            end);
        else
            UISpecial:GetInstance():UITipText(des)
        end
    elseif _type == 10601 then
        local state, type, des = UnlockData:GetInstance():GetLockDataState(107)
        if state then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UITestHoard)
        else
            UISpecial:GetInstance():UITipText(des)
        end
    elseif _type == 20100 then
        --寄灵人列表 param-寄灵人id  （决定跳转后，是否选中指定寄灵人；配置为空则使用默认选中）
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, true)
    elseif _type == 20101 then
        --寄灵人属性页 param-寄灵人id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, true,2)
    elseif _type == 20102 then
        --寄灵人技能页 param-寄灵人id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, true,3)
    elseif _type == 20103 then
        --寄灵人升星页 param-寄灵人id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, true,4)
    elseif _type == 20104 then
        --寄灵人天赋页 param-寄灵人id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, true,6);
    elseif _type == 20105 then
        --寄灵人培养页 param-寄灵人id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, true,2);
    elseif _type == 20106 then
        --寄灵人缘分页 param-寄灵人id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, true,2);
    elseif _type == 20200 then
        --守护灵列表 param-守护灵id   (决定跳转后，是否选中指定守护灵；配置为空则使用默认选中)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, false)
    elseif _type == 20201 then
        --守护灵升级页 param--守护灵id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, false)
    elseif _type == 20202 then
        --守护灵突破页 param--守护灵id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, false,2);
    elseif _type == 20203 then
        --守护灵绝技升级页 param--守护灵id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, false,3)
    elseif _type == 20204 then
        --守护灵绝技觉醒页 param--守护灵id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, false,3);
    elseif _type == 20205 then
        --守护灵升星页 param--守护灵id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, false,4)
    elseif _type == 20206 then
        --守护灵武器解封页 param--守护灵id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, false,5)
    elseif _type == 20207 then
        --守护灵武器强化页 param--守护灵id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, false,5)
    elseif _type == 20208 then
        --守护灵武灵技学习页 param--守护灵id
        local state, type, des = UnlockData:GetInstance():GetLockDataState(204)
        if state then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UICellSkillPacket);
        else
            UISpecial:GetInstance():UITipText(des)
        end
    elseif _type == 20209 then
        --守护灵缘分页 param--守护灵id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardList, true, false,2);
    elseif _type == 20300 then
        --地狱道 param--
        local state, type, des = UnlockData:GetInstance():GetLockDataState(205)
        if state then
            local master_hell_data = DataUtil.GetData("master_hell")
            if UserData:GetInstance().hellLevel >= #master_hell_data then
                UISpecial:GetInstance():UITipText("已到最大等级")
            else
                UIManager:GetInstance():OpenWindow(UIWindowNames.UIUserHell)
            end
        else
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip,1401014)
        end
    elseif _type == 20400 then
        --武灵技背包全部页 param--武灵技id (决定跳转后，是否选中指定武灵技；配置为空则使用默认选中)
        local state, type, des = UnlockData:GetInstance():GetLockDataState(204)
        if state then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UICellSkillPacket);
        else
            UISpecial:GetInstance():UITipText(des)
        end
    elseif _type == 20500 then
        --神器 param--神器id (决定跳转后，是否选中指定神器；配置为空则使用默认选中)
        local state, type, des = UnlockData:GetInstance():GetLockDataState(203)
        if state then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UINewArtifact, _param);
        else
            UISpecial:GetInstance():UITipText(des)
        end
    elseif _type == 20501 then
        --神器组件页 param--组件id

    elseif _type == 30000 then
        --背包全部页 param--物品ID  (决定跳转后，是否选中指定物品；配置为空则使用默认选中)

    elseif _type == 30101 then
        --日常活动页 param--活动组id  (决定跳转后，是否选中指定活动组；配置为空则使用默认选中)

    elseif _type == 30102 then
        --活跃任务页 param--

    elseif _type == 30103 then
        --成就页 param--成就组id (决定跳转后，是否选中指定成就组；配置为空则使用默认选中)

    elseif _type == 30200 then
        --商店 param--商店id (决定跳转后，是否切换到指定商店；配置为空则使用默认选中)
        local state, type, des = UnlockData:GetInstance():GetLockDataState(301)
        if state then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIWindowShopMain);
        else
            UISpecial:GetInstance():UITipText(des)
        end

    elseif _type == 30300 then
        --通灵 param--

    elseif _type == 40101 then
        --竞技场对阵页
        local state, type, des = UnlockData:GetInstance():GetLockDataState(104)
        if state then
            ArenaData:GetInstance():OpenArenaOne(true);
        else
            UISpecial:GetInstance():UITipText(des)
        end

    elseif _type == 40102 then
        --竞技场战报页
        local state, type, des = UnlockData:GetInstance():GetLockDataState(104)
        if state then
            ArenaData:GetInstance():OpenArenaOne(true);
        else
            UISpecial:GetInstance():UITipText(des)
        end
    elseif _type == 40103 then
        --竞技场排行页
        local state, type, des = UnlockData:GetInstance():GetLockDataState(104)
        if state then
            ArenaData:GetInstance():OpenArenaOne(true);
        else
            UISpecial:GetInstance():UITipText(des)
        end
    elseif _type == 40201 then
        --实时竞技
        local state, type, des = UnlockData:GetInstance():GetLockDataState(311)
        if state then
            ArenaPVPData:GetInstance():GetRequestInfo()
        else
            UISpecial:GetInstance():UITipText(des)
        end
    elseif _type == 50100 then
        --购买商品  param--商品id
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIShopBuyItem, _param[1]);
    elseif _type == 50200 then
        --兑换金币
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIExchangeGoldCoins)
    elseif _type == 50300 then
        --打开宝箱  param--物品id

    elseif _type == 50400 then
        --获取途径  param--物品id

    elseif _type == 50500 then
        --抽卡 param 界面id 1,寄灵人，2，守护灵
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIGetNewCard, _param)
    elseif _type == 60100 then
        --金币兑换
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIExchangeGoldCoins)
    elseif _type == 60200 then
        --插槽技能界面跳转打开获取技能经验界面
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIGetSkillExp)
    end
end

UIJumpManager.JumpByTypeAndParam = JumpByTypeAndParam;

return UIJumpManager;