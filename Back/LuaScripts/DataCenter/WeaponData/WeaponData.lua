---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zjy.
--- DateTime: 2018/11/6 10:02
---
--- 2019/01/03 与老乔同步：
--- 1.武器解锁，目前的条件只有卡牌等级，物品消耗（或者任务）暂时没有，等待天悦完善；解锁后会有基础属性
--- 2.武器强化，强化后的属性加成会替代强化前的属性加成
--- 3.武器解封，解封增加的技能、效果，需要去对应表中读取显示字段
---
local weaponStaticData = DataUtil.GetData("personal_weapon")
local propertyList=DataUtil.GetData("property")
local skillList=DataUtil.GetData("skill")
local WeaponItemData = {
    --强化信息
    strengh={},
    --卡牌id
    cardId = 0,
    --武器id
    weaponId = 0,
    --武器名称
    name = "",
    --武器图片
    icon = "",
    --武器状态 0不能解锁，1可以解锁，2已解锁
    status = 0,
    --觉醒
    Awakening=false,
    --品质
    quality = 0,
    --解封次数
    unsealTimes = 0,
    --最大解封次数
    maxUnsealTimes = 0,
    --武器总属性
    all_property={},
    --解封属性
    unseal_property={},
    --强化属性
    strength_property={},

    InitProper=function(self)
        for i, v in pairs(propertyList) do
            self.unseal_property[i]=0
            self.strength_property[i]=0
            self.all_property[i]=0
        end
    end,
    AssignProperty =function(self,_property,_type,_num,add)
        if type(_type) == "number" and type(_num) == "number" then
            if add then
                _property[_type]=_property[_type]+_num
            else
                _property[_type]=_num
            end
        end
    end,
    --解锁所需材料
    costUnlock = {},
    --上次解封所需材料
    lastcostUnseal = {},
    --解封所需材料
    costUnseal = {},
    --解封作用（只做显示描述，属性增加会算到属性中）
    unsealEffect = {},
    UpdateUnsealEffect=function(self)
        for i,_ in pairs(weaponStaticData) do
            if weaponStaticData[i].CardId==self.cardId then
                self.weaponId =i
            end
        end
        local mData = weaponStaticData[self.weaponId]
        self.unsealEffect={}
        for i = 1, #mData.Unseal do
            if mData.Unseal[i].Prop then
                if propertyList[mData.Unseal[i].Prop[1].Id].Show_Fac==100 then
                    local data={type=0,id=0,name="",real_value=0,value=""}
                    data.type=1
                    data.id=mData.Unseal[i].Prop[1].Id
                    data.name=propertyList[mData.Unseal[i].Prop[1].Id].CnName
                    data.real_value=mData.Unseal[i].Prop[1].Val
                    data.value=tostring(Mathf.Floor(mData.Unseal[i].Prop[1].Val*100)).."%"
                    table.insert(self.unsealEffect,data)
                else
                    local data={type=0,id=0,real_value=0,name="",value=0}
                    data.type=1
                    data.id=mData.Unseal[i].Prop[1].Id
                    data.name=propertyList[mData.Unseal[i].Prop[1].Id].CnName
                    data.real_value=mData.Unseal[i].Prop[1].Val
                    data.value=math.floor(mData.Unseal[i].Prop[1].Val)
                    table.insert(self.unsealEffect,data)
                end
            elseif mData.Unseal[i].PSkill then
                local data={type=0,name="",value=""}
                data.type=2
                local skill_effect =DataUtil.GetData("skill_effect")
                local weapon_des=mData.Unseal[i].PSkill.."没有找到等级"..mData.Unseal[i].PSkillLevel
                local skill_data_info=skill_effect[mData.Unseal[i].PSkill]
                if skill_data_info~=nil then
                    --weapon_des=skill_data_info.lvs[mData.Unseal[i].PSkillLevel].EffectDesc
                    weapon_des=DataUtil.GetWeaponUnsealData(mData.Unseal[i].PSkill,mData.Unseal[i].PSkillLevel)
                end
                data.name="武器解封至"..i.."级".."【觉醒】".. (weapon_des == nil and "" or weapon_des)
                data.value=mData.Unseal[i].PSkill
                table.insert(self.unsealEffect,data)
            end
        end
    end,
    UpdateSelf = function(self)
        assert(weaponStaticData)
        local mData = weaponStaticData[self.weaponId]
         self.costUnlock = nil--mData.CostUnlock
        if self.status == 1 then
            local unseal = mData.Unseal
            for i = 1, #mData.Unseal do
                if mData.Unseal[i].PSkill~=nil  then
                    if self.unsealTimes>=i then
                        self.Awakening=true
                    else
                        self.Awakening=false
                    end
                    break
                end
            end
            self.maxUnsealTimes = #unseal
            if self.unsealTimes>0 then
                self.lastcostUnseal = unseal[self.unsealTimes].Cost
            else
                self.lastcostUnseal=nil
            end
            if self.unsealTimes < self.maxUnsealTimes then
                self.costUnseal = unseal[self.unsealTimes + 1].Cost
            else
                self.costUnseal = nil
            end
            self:InitProper()

            for i = 1, self.unsealTimes do
                if unseal[i].Prop  then
                    self:AssignProperty(self.unseal_property,unseal[i].Prop[1].Id, unseal[i].Prop[1].Val,true)
                end
            end

            for i = 1, #self.strengh do
                if self.strengh[i].level > 0 or self.strengh[i].bless > 0 then
                    self.strengh[i].status=true
                else
                    local check_status=true
                    if  self.unsealTimes<self.strengh[i].unseallimit then
                        self.strengh[i].limit_des="武器解封"..self.strengh[i].unseallimit.."级开启"
                        check_status=false
                    end
                    if self.strengh[i].up_id>0 then
                        if self.strengh[self.strengh[i].up_id].level<self.strengh[i].uplimit then
                            self.strengh[i].limit_des=self.strengh[self.strengh[i].up_id].name..self.strengh[i].uplimit.."级开启"
                            check_status=false
                        end
                    end
                    local card_data=CardData:GetInstance().cards[self.cardId]
                    if  card_data.level<self.strengh[i].lvlimit then
                        self.strengh[i].limit_des=card_data.name..self.strengh[i].lvlimit.."级开启"
                        check_status=false
                    end
                    self.strengh[i].status=check_status
                end
                if self.strengh[i].status then
                    self.strengh[i]:UpdateSelf()
                    for i, v in pairs(self.strengh[i].curStrengthProperty) do
                        self:AssignProperty(self.strength_property,i, v,true)
                    end
                end
            end


            for i, v in pairs(self.strength_property) do
                self:AssignProperty(self.all_property,i, v,true)
            end
            for i, v in pairs(self.unseal_property) do
                self:AssignProperty(self.all_property,i, v,true)
            end
        end
    end,
}
local WeaponPartsData={
    --是否激活
    status=false,
    --解锁条件
    limit_des="",
    up_id=0,
    --卡牌等级限制
    lvlimit=0,
    --上一个等级限制
    uplimit=0,
    --解封限制等级
    unseallimit=0,
    --不见id
    id=0,
    --武器名称
    name = "",
    --武器图片
    icon = "",
    --武器等级
    maxLevel = 0,
    --强化信息
    infos={},



    level = 0,
    --武器最大等级
    --当前祝福
    bless = 0,

    --最大祝福值
    maxBless = 0,
    --上次强化所需材料
    lastcostStrength = {},
    --强化所需材料
    costStrength = {},

    --当前强化成功率
    strengthSuccessRate = 0,

    --当前等级强化属性信息
    curStrengthProperty = {},
    --下个等级强化属性信息
    nextStrengthProperty = {},
    InitProper=function(self)
        for i, v in pairs(propertyList) do
            self.curStrengthProperty[i]=0
            self.nextStrengthProperty[i]=0
        end
    end,

    AssignProperty =function(self,_property,_type,_num,add)
        if type(_type) == "number" and type(_num) == "number" then
            if add then
                _property[_type]=_property[_type]+_num
            else
                _property[_type]=_num
            end
        end
    end,
    UpdateSelf=function(self)
        self:InitProper()
        self.maxBless= self.level< self.maxLevel and  self.infos[self.level+1].MaxV or  200
        self.strengthSuccessRate= self.level< self.maxLevel and self.infos[self.level+1].StrenthSuccessRate or 1
        self.lastcostStrength=self.infos[self.level].Cost

        self.costStrength= self.level < self.maxLevel and  self.infos[self.level + 1].Cost or nil
        if self.level >= 0 and self.level < self.maxLevel then
            local prop=self.infos[self.level + 1].Prop
            if  prop~= nil then
                for i = 1, #prop do
                    self:AssignProperty(self.nextStrengthProperty,prop[i].Id,prop[i].Val)
                end
            end
        end
        if self.level >=0 and self.level <= self.maxLevel then
            local prop=self.infos[self.level].Prop
            if  prop~= nil then
                for i = 1, #prop do
                    self:AssignProperty(self.curStrengthProperty,prop[i].Id,prop[i].Sum)
                end
            end
        end
    end
}
local WeaponParts = DataClass("WeaponParts", WeaponPartsData)
local WeaponItem = DataClass("WeaponItem", WeaponItemData)
local WeaponData = BaseClass("WeaponData", Singleton)

local function __init(self)
    -- 所有卡牌列表

    self.weapons = {}
end
local function UpdateWeaponDataByCardLv(self,_cardID,state)

end
local function ParseWeaponFromServer(self, _weapon, _cardId, _quality,_type)
    if _type==1 then
        self.weapons[_cardId] = nil
        return nil
    end
    --[[if _weapon._is_null then
        --这里先放上状态未解锁
        self.weapons[_cardId] = nil
        return nil
    end
    --]]
    local haveWeapon=false
    local weapon_id=0
    for i,_ in pairs(weaponStaticData) do
        if weaponStaticData[i].CardId==_cardId then
            haveWeapon=true
            weapon_id=i
           break
        end
    end
    if not haveWeapon then
        self.weapons[_cardId] = nil
        return nil
    end
    local mData=weaponStaticData[weapon_id]
    if mData == nil then
       Logger.LogError("没有该专属武器"..weapon_id)
        return
    end
    local item = WeaponItem.New()
    item.cardId = _cardId
    item.Awakening=false
    item:InitProper()
    item.weaponId= weapon_id
    item.name = mData.Name
    item.icon = mData.Icon
    item.quality =mData.Quality
    item.status = _weapon.status
    item.unsealTimes = _weapon.unsealTimes
    local part_data=mData.HunZhu
    for i = 1, #mData.HunZhu do
        item.strengh[i]=WeaponParts.New()
        item.strengh[i].id=part_data[i].Id
        item.strengh[i].name=part_data[i].Name
        item.strengh[i].icon=part_data[i].Icon
        item.strengh[i].maxLevel=#part_data[i].Lvs
        item.strengh[i].infos=part_data[i].Lvs
        item.strengh[i].lvlimit=part_data[i].LvLimit
        item.strengh[i].uplimit=part_data[i].PreLv
        item.strengh[i].unseallimit=part_data[i].UnsealLv
        item.strengh[i].up_id=i==1 and 0 or i-1
        item.strengh[i].status=false
    end
    for i, v in ipairs(_weapon.PersonalWeaponBall) do
        for m, n in ipairs(item.strengh) do
            if n.id==v.id then
                n.level=v.strenthLv
                n.bless=v.bless
            end
        end
    end
    item:UpdateSelf()
    item:UpdateUnsealEffect()
    self.weapons[_cardId] = item
    return item
end
local function UpdateWeaponPart(self,card_id,part_id,bless,lv)
    local weapon_data= self.weapons[card_id]
    if weapon_data then
        for i = 1, #weapon_data.strengh do
            if weapon_data.strengh[i].id==part_id then
                weapon_data.strengh[i].bless=bless
                weapon_data.strengh[i].level=lv
                break
            end
        end
    else
        Logger.LogError("没有武器"..card_id)
    end
end
local function UpDateWeaponInfo(self,cardID)
    --卡牌等级提升/解封等级提升/强化成功
    if self.weapons[cardID] then
        self.weapons[cardID]:UpdateSelf()
    end

end
WeaponData.__init = __init
WeaponData.ParseWeaponFromServer = ParseWeaponFromServer
WeaponData.UpdateWeaponPart= UpdateWeaponPart
WeaponData.UpdateWeaponDataByCardLv = UpdateWeaponDataByCardLv
WeaponData.UpDateWeaponInfo = UpDateWeaponInfo
return WeaponData