---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/7/15 14:20
---
local UIArenaPosShow = BaseClass("UIArenaPosShow", UIBaseContainer)
local base = UIBaseContainer
local item_data = DataUtil.GetData("item")

local function OnCreate(self)
    base.OnCreate(self)
    self.timeText = self:AddComponent(UIText,"awardTimeText")
    self.timeText:SetText(DataUtil.GetClientText(100239))
    self.gridObj=self:AddComponent(UIBaseContainer,"posScrollRect/grid")
    self.objList={}
    local count=self.gridObj.transform.childCount
    for i = 0, count-1 do
        local tempItem = self.gridObj:AddComponent(UIBaseContainer,i)
        local icon = tempItem:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex)
        local name =tempItem:AddComponent(UIText,"nameBg/name")
        local scoreNum = tempItem:AddComponent(UIText,"scoreBg/scoreNumText")
        local awardList = tempItem:AddComponent(UIBaseContainer,"awardGrid")
        local nowObj = UIUtil.FindTrans(tempItem.transform,"nameBg/Image")
        local nowText = tempItem:AddComponent(UIText,"nameBg/Image/infoText")
        nowText:SetText(DataUtil.GetClientText(100240))
        local bgImg = tempItem:AddComponent(UIImage,"nameBg",AtlasConfig.DynamicTex)
        local awardObjList = {}
        local num=awardList.transform.childCount
        for i = 0, num-1 do
            local awardItem = awardList:AddComponent(UIBaseContainer,i)
            local icon = awardItem:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex)
            local frame = awardItem:AddComponent(UIImage,"",AtlasConfig.DynamicTex)
            table.insert(awardObjList,{objItem = awardItem,iconImg = icon,frameImg = frame})
        end
        table.insert(self.objList,{obj=tempItem,iconImg = icon,nameText = name,scoreNumText=scoreNum,nowObj = nowObj,bgImg = bgImg,awardListObj = awardObjList})
    end
end

--刷新

local function Refresh(self,_data)
    if _data ~= nil then
        for i, v in ipairs(self.objList) do
            if _data[i] == nil then
                v.obj.transform.gameObject:SetActive(false)
            else
                v.obj.transform.gameObject:SetActive(true)
                v.iconImg:SetSpriteName(_data[i].icon)
                v.nameText:SetText(_data[i].name)
                v.scoreNumText:SetText(_data[i].score)
                if _data[i].award ~= nil then
                    for j, m in ipairs(v.awardListObj) do
                        if _data[i].award[j] == nil then
                            m.objItem.transform.gameObject:SetActive(false)
                        else
                            m.objItem.transform.gameObject:SetActive(true)
                            m.iconImg:SetSpriteName(item_data[_data[i].award[j].id].Icon)
                            m.frameImg:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(item_data[_data[i].award[j].id].Quality))
                        end
                    end
                end
                if i == #_data and ArenaPVPData:GetInstance().arena_pvp_player_data.score >= _data[i].score then
                    v.nowObj.gameObject:SetActive(true)
                    v.bgImg:SetSpriteName(" ")
                else
                    if _data[i].score <ArenaPVPData:GetInstance().arena_pvp_player_data.score and _data[i + 1].score ~= nil and _data[i + 1].score >= ArenaPVPData:GetInstance().arena_pvp_player_data.score then
                        v.nowObj.gameObject:SetActive(true)
                        v.bgImg:SetSpriteName("ui_t_c2_352")
                    else
                        v.nowObj.gameObject:SetActive(false)
                        v.bgImg:SetSpriteName("ui_t_c2_351")
                    end
                end
            end
        end
    end
end


UIArenaPosShow.OnCreate = OnCreate
UIArenaPosShow.Refresh = Refresh
return UIArenaPosShow
