---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zzg
--- DateTime: 2019/2/25 16:34
---
local UIUserhellTaskListWrapItem = BaseClass("UIUserhellTaskListWrapItem", UIWrapComponent)
local base = UIWrapComponent
local BattleAwardData = require "UI.UIBattle.Component.BattleAwardData"

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    if self.taskInfo.status == -1 then
        self.view.ctrl:SendGetAwardRequest(self.taskInfo.id)
    elseif self.taskInfo.status == 0 then
        if self.taskInfo.jump~=nil then
            UIJumpManager.JumpByTypeAndParam(self.taskInfo.jump.To,self.taskInfo.jump.Param);
        end
        --UISpecial:GetInstance():UITipText("索引："..self.index.."去完成")
    end

end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.ItemInfo={}
    for i = 1, 3 do
        self.ItemInfo[i] = BattleAwardData.New(self,"TaskIcon"..i)
        self.ItemInfo[i]:OnCreate(self);
    end
    self.des_text=self:AddComponent(UIText,"Des_UIText")
    self.Progress_text=self:AddComponent(UIText,"Progress_UIText")
    self.status_text=self:AddComponent(UIText,"FinishedStatus/StatusText");
    self.status_image=self:AddComponent(UIImage,"FinishedStatus");
    self.unFinish_img = self:AddComponent(UIImage,"UnFinishedStatus");
    self.effect = UIUtil.FindTrans(self.transform,"getButton/Text/fx_ui_commonbutton_sweeplight")
    self.getaward_btn=self:AddComponent(UIButton,"getButton")
    self.getaward_btn:SetOnClick(self,OnBtnClick)
    self.getaward_btn_text=self:AddComponent(UIText,"getButton/Text")
    self.getaward_Anim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"getButton/Text")
    self.getaward_Anim.enabled = false
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index)
    self.index = real_index+1
    self.taskInfo = self.view.model:GetCurTaskListItemInfo(self.index)
    if self.taskInfo ~= nil then
        self.getaward_btn.gameObject:SetActive(true);
        self.des_text:SetText(self.taskInfo.des)
        for i = 1, 3 do
            if i <= #self.taskInfo.reward then
                self.ItemInfo[i]:Refresh(self.taskInfo.reward[i])
                self.ItemInfo[i].gameObject:SetActive(true);
            else
                self.ItemInfo[i].gameObject:SetActive(false);
            end
        end
        self.status_image.gameObject:SetActive(false)
        self.unFinish_img.gameObject:SetActive(false)
        local str = "("..self.taskInfo.now_progress.."/"..self.taskInfo.all_progress..")"
        if self.taskInfo.status == -1 then
            self.getaward_btn.gameObject:SetActive(true);
            self.getaward_btn_text:SetText("领取")
            self.Progress_text:SetText("<color=#3F793F>"..str.."</color>")
            self.effect.gameObject:SetActive(true)
            self.getaward_Anim.enabled = true
        elseif self.taskInfo.status == 0 then
            self.getaward_btn.gameObject:SetActive(true)
            self.getaward_Anim.enabled = false
            self.effect.gameObject:SetActive(false)
            self.unFinish_img.gameObject:SetActive(self.taskInfo.jump==nil)
            self.getaward_btn.gameObject:SetActive(self.taskInfo.jump~=nil)
            self.getaward_btn_text:SetText("去完成",false,40)
            self.getaward_btn_text.transform.localScale = Vector3.New(1,1,1)
            self.Progress_text:SetText("<color=#CE4847>"..str.."</color>")
        else
            self.getaward_btn.gameObject:SetActive(false);
            self.getaward_Anim.enabled = false
            self.effect.gameObject:SetActive(false)
            self.status_image.gameObject:SetActive(true)
            local info = "("..self.taskInfo.all_progress.."/"..self.taskInfo.all_progress..")"
            self.Progress_text:SetText("<color=#3F793F>"..info.."</color>")
        end
    else
        Logger.Log(self.index.."数据错误")
    end
end

UIUserhellTaskListWrapItem.OnCreate = OnCreate
UIUserhellTaskListWrapItem.OnRefresh = OnRefresh




return UIUserhellTaskListWrapItem