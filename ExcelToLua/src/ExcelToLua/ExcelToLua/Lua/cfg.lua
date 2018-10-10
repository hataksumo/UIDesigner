_G.t2 = {
	[1] = {
		pri = 4200,
        layer = 1,
        operator = {
            position = {4201},
            update = {
                file = "model_10001_skill1_1_003.pfx",
            },
		},
     }, 
	 [2] = {
         pri = 4340,
         layer = 2,
         operator = {
             position = {4351},
             update = {
                 file = "model_10001_skill1_2_003.pfx",
             },
         },
      },
      [3] = {
	      pri = 4441,
          layer = 1,
          operator = {
             position = {4451, 4551, 4601, 4701, 4540, 4580, 4680},
             update = {
                pfx = "model_10001_skill3_002_gethit_hong.pfx",
             },
          },          
      }, 
	  [4] = {
         pri = 4540,
         layer = 1,
         ct = 0.40,
         kind = "atk",
         caty = "Angle",
         distancePfx = 60, -- 攻击距离特效的大小（默认圆形特效, 0或者没有则不显示）
         areaPfx = "fw_120shan.pfx", -- 攻击范围类型特效
         placePos = false, -- 是否改变位置
         placeDir = true, -- 是否改变方向
         radius = 60,
         angle = 120,
         damage_num = 100,
         pfx = "model_10001_skill1_2_001_gethit.pfx",
         enemymove = {l = 5, t = 300, ease = "Sine.easeOut"},
       }, 
	   [5] = {
          pri = 4580,
          layer = 1,
          ct = 0.50,
          kind = "atk",
          caty = "Angle",
          distancePfx = 60, -- 攻击距离特效的大小（默认圆形特效, 0或者没有则不显示）
          areaPfx = "fw_120shan.pfx", -- 攻击范围类型特效
          placePos = false, -- 是否改变位置
          placeDir = true, -- 是否改变方向
          radius = 60,
          angle = 120,
          damage_num = 100,
          pfx = "model_10001_skill1_2_001_gethit.pfx",
          enemymove = {l = 5, t = 300, ease = "Sine.easeOut"},
       },
	   [6] = {
           pri = 4680,
           layer = 1,
           ct = 0.58,
           kind = "atk",
           caty = "Angle",
           distancePfx = 60, -- 攻击距离特效的大小（默认圆形特效, 0或者没有则不显示）
           areaPfx = "fw_120shan.pfx", -- 攻击范围类型特效
           placePos = false, -- 是否改变位置
           placeDir = true, -- 是否改变方向
           radius = 60,
           angle = 120,
           damage_num = 100,
           pfx = "model_10001_skill1_2_001_gethit.pfx",
           enemymove = {l = 5, t = 300, ease = "Sine.easeOut"},
       },
}