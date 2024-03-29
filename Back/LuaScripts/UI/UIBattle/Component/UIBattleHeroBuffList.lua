---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aaa.
--- DateTime: 2019/3/7 14:07
---
local UIBattleHeroBuffList = BaseClass("UIBattleHeroBuffList", UIBaseContainer)
local base = UIBaseContainer

local function LongTapCall(self,index)
    local type = 1
    if self.type ~= nil then
        type = self.type
    end
    self.view.skill_tip:BuffInfo(self.result_icon[index].id,self.buffs[index].img.transform.position,type)
end

local function LongTapEnd(self)
    self.view.skill_tip:OnShowOrHide(false)
end

local function OnCreate(self,type)
    base.OnCreate(self)
    self.buffs = {}
    for i = 1, 6 do
        self.buffs[i] = {}
        self.buffs[i].img = self:AddComponent(UIImage,tostring(i),AtlasConfig.DynamicTex);
        self.buffs[i].long_tap = self:AddComponent(UIEventTrigger,tostring(i));
        self.buffs[i].long_tap:SetOnLongPress(Bind(self,LongTapCall,i),Bind(self,LongTapEnd),true)
        self.buffs[i].text = self:AddComponent(UIText,i.."/"..i.."_num");
        self.buffs[i].img.gameObject:SetActive(false)
    end

    self.type = type

end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,data)
    if data~= nil then
        --首先检测图标有没有 没有不显示
        local skill_effect = DataUtil.GetData("skill_effect")
        local skill_effect_buff = DataUtil.GetData("skill_effect_buff")
        local result_icon = {}
        for i, v in ipairs(data) do
            if skill_effect[v.id] ~= nil then
                local id = skill_effect[v.id].DetailType
                if skill_effect_buff[id] ~= nil and skill_effect_buff[id].BuffIcon~= nil and #skill_effect_buff[id].BuffIcon>0 then
                    table.insert(result_icon,{icon = skill_effect_buff[id].BuffIcon,layer = v.layer,id = id})
                end
            end
        end
        for i = 1, 6 do
            if result_icon[i] ~= nil then
                self.buffs[i].img.gameObject:SetActive(true)
                if result_icon[i].layer ~= nil then
                    self.buffs[i].text:SetText(math.floor(result_icon[i].layer))
                else
                    self.buffs[i].text:SetText("")
                end
                self.buffs[i].img:SetSpriteName(result_icon[i].icon)
            else
                self.buffs[i].img.gameObject:SetActive(false)
            end
        end
        self.result_icon = result_icon

    else
        for i = 1, 6 do
            self.buffs[i].img.gameObject:SetActive(false)
        end
    end
end


UIBattleHeroBuffList.OnRefresh = OnRefresh
UIBattleHeroBuffList.OnCreate = OnCreate
return UIBattleHeroBuffList