---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/3/1 15:21
---
local UIHeadWrapItem = BaseClass("UIHeadWrapItem", UIWrapComponent)
local base = UIWrapComponent

--按钮点击
local function OnSelfBtnClick(self)
--[[    self.view.headSelectObj.transform:SetParent(self.transform);
    self.view.headSelectObj.localScale=Vector3.New(1,1,1);
    self.view.headSelectObj.anchoredPosition=Vector2.New(0,0);
    --self.view.headSelectObj:SetAsFirstSibling();
    self.view.headSelectObj.gameObject:SetActive(true);]]
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    UIManager:GetInstance():Broadcast(UIMessageNames.CHANGE_HEAD_OR_FRAME,self.data)
    self.view:SetSelectShow(self.curIndex)
end
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    self.headIcon=self:AddComponent(UIImage,"Head",AtlasConfig.DynamicTex)
    self.headFrame=self:AddComponent(UIImage,"HeadBg",AtlasConfig.DynamicTex)
    self.lockObj = UIUtil.FindTrans(self.transform,"lockObj")
    self.selfBtn=self:AddComponent(UIButton,"")
    self.selfBtn:SetOnClick(function() OnSelfBtnClick(self) end);
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.curIndex=real_index+1
    self.slect=UIUtil.FindTrans(self.transform,"Head/HeadSelectImg");
    if self.curIndex==self.view.index then
        if self.slect~=nil and  not self.slect.gameObject.activeInHierarchy then
            self.slect.gameObject:SetActive(true)
        end
    else
        if self.slect~=nil and self.slect.gameObject.activeInHierarchy then
            self.slect.gameObject:SetActive(false)
        end
    end

    self.data = self.view.model.headList[real_index+1]
    self.headIcon:SetSpriteName( self.data.icon)
    self.headFrame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType( self.data.quality))
    self.lockObj.gameObject:SetActive(self.data.state == 0)
end

UIHeadWrapItem.OnCreate = OnCreate
UIHeadWrapItem.OnRefresh = OnRefresh
return UIHeadWrapItem