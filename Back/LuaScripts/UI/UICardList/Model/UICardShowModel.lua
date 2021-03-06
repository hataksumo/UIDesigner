---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/3/13 20:50
---

local UICardShowModel = BaseClass("UICardShowModel", UIBaseModel)
local base = UIBaseModel

local function OnCreate(self)
    base.OnCreate(self)

end

local function OnEnable(self,cardId)
    base.OnEnable(self)
    local cardXlsx =  DataUtil.GetData("card");
    if cardXlsx~=nil then
        local singleCardData=cardXlsx[cardId];
        if singleCardData~=nil then
            self.cardData=singleCardData;
        end
    end
end


UICardShowModel.OnCreate = OnCreate;
UICardShowModel.OnEnable = OnEnable;


return UICardShowModel