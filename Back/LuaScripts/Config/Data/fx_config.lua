--[[
output from excel battle.战场配置.xlsx
--note:

colums:
{ID,特效Id} ,{prefab_Name,预设路径名字} ,{follow_Type,跟随类型（3完全跟随，2只跟随位置，1不跟随）} ,{FxPosId,特效挂点id(0根节点,1腹,2胸，3头，4左手，5右手，6左脚，7右脚，8头顶.9脚下)} ,{FxType,特效类型1-常规特效2-围绕身体旋转} ,{Circle,1单次，2循环} ,{LifeTime,持续时长}
primary key:
#0 [fxConfig]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_imprisonment.prefab",follow_Type = 2,FxPosId = 0,FxType = 1,Circle = 2,LifeTime = 2.5},--禁锢
	[2] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_jinzhizhaohuan.prefab",follow_Type = 2,FxPosId = 1,FxType = 1,Circle = 1,LifeTime = 2.5},--禁止召唤
	[3] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_jinzhizhudong.prefab",follow_Type = 2,FxPosId = 1,FxType = 1,Circle = 1,LifeTime = 2.5},--禁止主动技能
	[4] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_jinzhibeidong.prefab",follow_Type = 2,FxPosId = 1,FxType = 1,Circle = 1,LifeTime = 2.5},--封印被动技能
	[5] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_hudun.prefab",follow_Type = 2,FxPosId = 1,FxType = 1,Circle = 2,LifeTime = 2.5},--护盾
	[6] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_zy gongji.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 1,LifeTime = 2.5},--提升攻击
	[7] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_zy shanghai.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 1,LifeTime = 2.5},--提高伤害
	[8] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_zy zhiliao.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 1,LifeTime = 2.5},--提高治疗
	[9] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_jy shanghai.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 1,LifeTime = 2.5},--减少伤害
	[10] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_jy zhiliao.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 1,LifeTime = 2.5},--减少目标受到的治疗
	[11] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_jy fangyu.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 1,LifeTime = 2.5},--减少防御
	[12] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_zy baoji.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 1,LifeTime = 2.5},--增加暴击伤害
	[13] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_xixue.prefab",follow_Type = 2,FxPosId = 0,FxType = 1,Circle = 2,LifeTime = 2.5},--吸血状态
	[14] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_bingxiang.prefab",follow_Type = 2,FxPosId = 0,FxType = 1,Circle = 2,LifeTime = 2.5},--冰冻
	[15] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_xuanyun.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 2,LifeTime = 2.5},--眩晕
	[16] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_zhuoshao.prefab",follow_Type = 2,FxPosId = 0,FxType = 1,Circle = 1,LifeTime = 2.5},--灼烧
	[17] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_yanfengZha.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 2,LifeTime = 2.5},--阎风吒的标记
	[18] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_jihuo.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 2,LifeTime = 2.5},--集火标记
	[19] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_yj_blsm.prefab",follow_Type = 2,FxPosId = 0,FxType = 1,Circle = 2,LifeTime = 2.5},--北落师门印记
	[20] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_yj_xkl.prefab",follow_Type = 2,FxPosId = 2,FxType = 2,Circle = 2,LifeTime = 2.5},--项昆仑印记
	[21] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_yj_xm.prefab",follow_Type = 2,FxPosId = 2,FxType = 2,Circle = 2,LifeTime = 2.5},--血魔印记
	[22] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_yj_gw.prefab",follow_Type = 2,FxPosId = 2,FxType = 2,Circle = 2,LifeTime = 2.5},--盖文印记
	[23] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_yj_lftl.prefab",follow_Type = 2,FxPosId = 8,FxType = 1,Circle = 2,LifeTime = 2.5},--烈风螳螂印记
	[24] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_qimenhuashang.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 2,LifeTime = 2.5},--增加格挡率
	[25] = {prefab_Name = "Art/EffectRes/Common/FX_c_buff_shuijingwaike.prefab",follow_Type = 2,FxPosId = 1,FxType = 1,Circle = 2,LifeTime = 2.5},--水晶外壳
	[26] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs1.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--中型被击效果+不规则能量体（体现混沌感）
	[27] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs2.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--普通被击效果+出现能量球并向内坍缩消失
	[28] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs3.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--中型爆炸效果（小爆炸）+水晶外壳破碎特效
	[29] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs4.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--小型被击效果，并且有黄色能量出现
	[30] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs5.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--小型被击效果，并且有红色能量出现
	[31] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs6.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--小型被击效果，并且有能量从被击者身体里向外四散逃逸
	[32] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs7.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--最普通的通用被击
	[33] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs8.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--巨大爆炸效果（特大爆炸）+水晶外壳破碎特效（见8）
	[34] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs9.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--中型被击效果+头顶出现落雷攻击+水晶外壳破碎特效
	[35] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs10.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--有刺刺感觉的中型被击效果+水晶外壳破碎特效
	[36] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs11.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--最普通的通用被击
	[37] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs12.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--水晶外壳破碎特效（敌人身上出现一个水晶的外壳）+破碎效果
	[38] = {prefab_Name = "Art/EffectRes/Common/FX_c_cs13.prefab",follow_Type = 2,FxPosId = 2,FxType = 1,Circle = 1,LifeTime = 2.5},--中型被击效果+暗色的烟雾
	[39] = {prefab_Name = "Art/Roles/rol_1101014/Pefabs/Fx_lxg_exskill2_1_baozha.prefab",follow_Type = 2,FxPosId = 9,FxType = 1,Circle = 1,LifeTime = 2.5},--治疗通用特效
	[40] = {prefab_Name = "Art/EffectRes/Common/FX_c_other_zhaohuan_firewave.prefab",follow_Type = 3,FxPosId = 0,FxType = 1,Circle = 1,LifeTime = 2.5},--出场技通用特效
	[41] = {prefab_Name = "Art/EffectRes/Common/FX_c_other_zhaohuan_hit_t0.prefab",follow_Type = 3,FxPosId = 0,FxType = 1,Circle = 1,LifeTime = 2.5},--出场技被击特效1
	[42] = {prefab_Name = "Art\\Roles\\rol_1102050\\Pefabs\\fx_nmj_sss0.prefab",follow_Type = 3,FxPosId = 0,FxType = 1,Circle = 1,LifeTime = 3.5}--柠檬精出场技特效
}