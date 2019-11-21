---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/5/8 11:37
---


local UICardUpTipModel = BaseClass("UICardUpTipModel", UIBaseModel)
local base = UIBaseModel

local properList= DataUtil.GetData("property")
local cardList=DataUtil.GetData("card")
local teachData=DataUtil.GetData("teach_level")
local function OnCreate(self)
    base.OnCreate(self)
end
--获取共享的属性值
local function GetShareAttrValue(_attList,_id)
    local attVal=0;
    for i, v in ipairs(_attList) do
        if v.Id==_id then
            attVal=v.Val;
            return attVal;
        end
    end
    return attVal;
end
local function OnEnable(self,type,_cardId,_data)
    base.OnEnable(self)
    --升星加成
    local showCardData = CardData:GetInstance().cards[_cardId];
    local staticCardData =  cardList[_cardId];
    self._type=type
    if type==1 then
        self.ProData=_data
    elseif type==2 then
        if showCardData ~= nil then
            self.curStar=_data;
            self.nextStar=_data+1>#staticCardData.stars and _data or _data+1;
            self.cardType=staticCardData.Type;
            self.effectList={[1]="生命加成",[2]="攻击加成",[3]="防御加成",[4]="整体加成"};
            self.curstar_value=staticCardData.hells[showCardData.hellLevel]
            self.nextstar_value= showCardData.starlv < showCardData.maxstarlv and staticCardData.hells[showCardData.hellLevel] or nil
            self.curAddValue=staticCardData.stars[_data]--math.floor((staticCardData.stars[self.curStar].AttrFac-staticCardData.stars[1].AttrFac)*100).."%";
            self.nextAddValue=self.curStar==#staticCardData.stars and "满级" or staticCardData.stars[_data+1]
            self.curBasePropAll=(self.curAddValue.BasePropAll*100).."%"
            self.nextBasePropAll=self.curStar==#staticCardData.stars and "满级" or (self.nextAddValue.BasePropAll*100).."%"
            if self.cardType==1 then
                self.shareAttList={};
                for i, v in ipairs(staticCardData.stars[#staticCardData.stars].AttrTrans) do
                    local properItem=properList[v.Id];
                    if properItem~=nil then
                        local propId=v.Id;
                        local attName=properItem.CnName;
                        local curValue="0%";
                        local nextValue="0%";
                        if staticCardData.stars[self.curStar].AttrTrans~=nil then
                            curValue=math.floor(GetShareAttrValue(staticCardData.stars[self.curStar].AttrTrans,propId)*100).."%";
                            nextValue=self.curStar==#staticCardData.stars and "满级" or
                                    math.floor(GetShareAttrValue(staticCardData.stars[self.nextStar].AttrTrans,propId)*100).."%";
                        end
                        table.insert(self.shareAttList,{name=attName,curVal=curValue,nextVal=nextValue});
                    end
                end
            end
        end
    elseif type==3 then
        self.teachInfo={}
        if teachData[_cardId].GuideTXT~=nil then
            self.teachInfo=teachData[_cardId].GuideTXT
        end
    end
end


UICardUpTipModel.OnCreate = OnCreate
UICardUpTipModel.OnEnable = OnEnable

return UICardUpTipModel