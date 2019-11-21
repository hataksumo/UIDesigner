---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aaa.
--- DateTime: 2019/10/27 14:38
---

local UIGuideRectMask = BaseClass("UIGuideRectMask", UIBaseContainer)
local base = UIBaseContainer

local function OnCreate(self)
    base.OnCreate(self)
    local top_bg_btn=self:AddComponent(UIButton,"BG/TopImg")
    local left_bg_btn=self:AddComponent(UIButton,"BG/LeftImg")
    local bottom_bg_btn=self:AddComponent(UIButton,"BG/ButtoImg")
    local right_bg_btn=self:AddComponent(UIButton,"BG/RightImg")
    local bg_btn={top_bg_btn,left_bg_btn,bottom_bg_btn,right_bg_btn}
    for i, v in ipairs(bg_btn) do
        v:SetOnClick(function()
            if self.mask_func then
                self.mask_func()
            end
        end)
    end
    self.top_bg_img=self:AddComponent(UIImage,"BG/TopImg")
    self.left_bg_img=self:AddComponent(UIImage,"BG/LeftImg")
    self.bottom_bg_img=self:AddComponent(UIImage,"BG/ButtoImg")
    self.right_bg_img=self:AddComponent(UIImage,"BG/RightImg")
    self.bg_img={self.top_bg_img,self.bottom_bg_img,self.left_bg_img,self.right_bg_img}

    self.click_box =  self:AddComponent(UIButton,"Box")
    self.click_box_img = self:AddComponent(UIImage,"Box")
    self.click_box :SetOnClick(self,function()
        if self.btn_func then
            self.btn_func()
        end
    end)
    local layer =  UIManager:GetInstance():GetLayer(UILayers.InfoLayer.Name)
    local rect=UIUtil.FindComponent(layer.transform,typeof(CS.UnityEngine.RectTransform))
    self.sceen_width =rect.sizeDelta.x
    self.sceen_height = rect.sizeDelta.y
end


local function GetSkillClickPath(index)
    --获得教学关卡 技能对应点击位置
    local Str="UIRoot/NormalLayer/UIBattleIn/ReadyPage/RoleInfoModule/"
    if index<=3 then
        if index==1 then
            return Str.."Role1/Role1_Hero/Role1_Hero_Icon"
        else
            local num=index-1
            return Str.."Role1/Role1_Btn"..num.."/Role1_Btn"..num.."_Icon"
        end
    elseif index>3 and index<=6 then
        if index==4 then
            return Str.."Role2/Role2_Hero/Role2_Hero_Icon"
        else
            local num=index-4
            return Str.."Role2/Role2_Btn"..num.."/Role2_Btn"..num.."_Icon"
        end
    else
        if index==7 then
            return Str.."Role3/Role3_Hero/Role3_Hero_Icon"
        else
            local num=index-7
            return Str.."Role3/Role3_Btn"..num.."/Role3_Btn"..num.."_Icon"
        end
    end
end


--获得UI之间的比例参数
local function GetBaseUIPID(self)
    local need_layer = 700
    if self.data.layer == "BackgroudLayer" then
        need_layer = 900
    elseif self.data.layer=="NormalLayer" then
        need_layer = 800
    elseif self.data.layer=="InfoLayer" then
        need_layer = 700
    elseif self.data.layer=="TipLayer" then
        need_layer = 600
    elseif self.data.layer=="TopLayer" then
        need_layer = 500
    end
    local cur_layer = 700
    local coe= cur_layer/need_layer
    return coe
end

--设置遮罩
local function SetFourBG(self,pos,size,alpha)
    --设置后边4个梦黑
    self.bg_img[1].rectTransform.anchoredPosition=Vector3.zero
    self.bg_img[2].rectTransform.anchoredPosition=Vector3.zero
    self.bg_img[3].rectTransform.anchoredPosition=Vector3.New(0,pos.y,0)
    self.bg_img[4].rectTransform.anchoredPosition=Vector3.New(0,pos.y,0)
    self.bg_img[1].rectTransform.sizeDelta=Vector2.New(self.sceen_width,self.sceen_height/2-pos.y-size.y/2)
    self.bg_img[2].rectTransform.sizeDelta=Vector2.New(self.sceen_width,self.sceen_height/2+pos.y-size.y/2)
    self.bg_img[3].rectTransform.sizeDelta=Vector2.New(self.sceen_width/2+pos.x-size.x/2,size.y)
    self.bg_img[4].rectTransform.sizeDelta=Vector2.New(self.sceen_width/2-pos.x-size.x/2,size.y)
    for i = 1, 4 do
        self.bg_img[i]:SetAlphaVal(alpha*0.71)
    end
end

--设置高光大小和遮罩
local function SetButtonPosAndMask(self)
    --点击 设置点击区域
    --local boxsize= self.mTarget:GetComponent(typeof(CS.UnityEngine.UI.Button))
    local box = nil
    if self.data.size_x~=0 or self.data.size_y~=0 then
        box=Vector2.New(self.data.size_x,self.data.size_y)
    else
        local target_rect = UIUtil.FindComponent(self.m_target.transform,typeof(CS.UnityEngine.RectTransform))
        if target_rect ~= nil then
            box = self.m_target.transform.sizeDelta
        end
    end
    if box ~= nil then
        self.click_box.gameObject:SetActive(true)
        self.click_box.transform.eulerAngles = Vector3.zero
        self.click_box.transform.localScale = self.m_target.transform.localScale;
        -- 位移 触发
        local coe =GetBaseUIPID(self)
        local pos = self.m_target.transform.position
        self.click_box.transform.position =Vector3.New(pos.x*coe,pos.y*coe,pos.z*coe)
        if self.data.offset_x~=0 or self.data.offset_y ~=0 then
            pos = self.click_box.transform.localPosition
            self.click_box.transform.localPosition=Vector3.New(pos.x+self.data.offset_x,pos.y+self.data.offset_y,0)
        end
        self.click_box.rectTransform.sizeDelta=box
        self.click_box_img:SetAlphaVal(self.data.click_alpha)
        if self.data.click_alpha > 0 then
            UIUtil.CreateUIFadeAnim(self.click_box_img)
        end
        SetFourBG(self,self.click_box.transform.anchoredPosition,box,self.data.click_alpha)
    end
end


--获得点击目标
local function SetTargetObj(self)
    local objpath = nil
    if self.data.click_skill then
        objpath= GetSkillClickPath( self.data.target)
    else
        objpath= self.data.target
    end
    self.m_target = CS.UnityEngine.GameObject.Find(objpath)
    if self.m_target == nil then
        Logger.LogError("路径问题".."--"..tostring(objpath))
        return
    end
end

--显示对话
local function ShowDialog(self)
    if self.data.des ~= nil then
        if self.data.talk_x ~= nil and self.data.talk_y ~= nil then
            GuideManager:GetInstance():ShowCommonDialog(self.data.des,self.data.talk_name,self.data.talk_icon,self.data.talk_x,self.data.talk_y,self)
        else
            local _x=self.click_box.transform.localPosition.x+self.click_box.rectTransform.sizeDelta.x/2
            local _y=self.click_box.transform.localPosition.y+self.click_box.rectTransform.sizeDelta.y/2
            GuideManager:GetInstance():ShowCommonDialog(self.data.des,self.data.talk_name,self.data.talk_icon,_x,_y,self,
                    {sceen_width = self.sceen_width,sceen_height = self.sceen_height,size_x = self.click_box.rectTransform.sizeDelta.x,
                     size_y = self.click_box.rectTransform.sizeDelta.y})
        end
    end
end

local function SetClick(self,mask_func,btn_func)
    self.mask_func = mask_func
    self.btn_func = btn_func
end

local function CreateMask(self,data)
    if not self.is_create then
        OnCreate(self)
        self.is_create = true
    end
    self.data = data
    SetTargetObj(self)
    SetButtonPosAndMask(self)
end
UIGuideRectMask.CreateMask = CreateMask
UIGuideRectMask.ShowDialog = ShowDialog
UIGuideRectMask.SetClick = SetClick
return UIGuideRectMask