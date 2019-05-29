--[[
--note:
卡牌经验的表
colums:
{Exp[1],N经验（当前等级）} ,{Exp[2],R经验} ,{Exp[3],SR经验} ,{Exp[4],SSR经验}
primary key:
#0 [卡牌经验]: Id
]]
if ddt["card_exp"] ~= nil then
	return ddt["card_exp"]
end
local data = {
	[1] = {Exp = {[1] = 105,[2] = 105,[3] = 105,[4] = 105}},
	[2] = {Exp = {[1] = 210,[2] = 210,[3] = 210,[4] = 210}},
	[3] = {Exp = {[1] = 315,[2] = 315,[3] = 315,[4] = 315}},
	[4] = {Exp = {[1] = 425,[2] = 425,[3] = 425,[4] = 425}},
	[5] = {Exp = {[1] = 530,[2] = 530,[3] = 530,[4] = 530}},
	[6] = {Exp = {[1] = 635,[2] = 635,[3] = 635,[4] = 635}},
	[7] = {Exp = {[1] = 740,[2] = 740,[3] = 740,[4] = 740}},
	[8] = {Exp = {[1] = 850,[2] = 850,[3] = 850,[4] = 850}},
	[9] = {Exp = {[1] = 955,[2] = 955,[3] = 955,[4] = 955}},
	[10] = {Exp = {[1] = 1060,[2] = 1060,[3] = 1060,[4] = 1060}},
	[11] = {Exp = {[1] = 1340,[2] = 1340,[3] = 1340,[4] = 1340}},
	[12] = {Exp = {[1] = 1475,[2] = 1475,[3] = 1475,[4] = 1475}},
	[13] = {Exp = {[1] = 1585,[2] = 1585,[3] = 1585,[4] = 1585}},
	[14] = {Exp = {[1] = 1685,[2] = 1685,[3] = 1685,[4] = 1685}},
	[15] = {Exp = {[1] = 1770,[2] = 1770,[3] = 1770,[4] = 1770}},
	[16] = {Exp = {[1] = 2025,[2] = 2025,[3] = 2025,[4] = 2025}},
	[17] = {Exp = {[1] = 2080,[2] = 2080,[3] = 2080,[4] = 2080}},
	[18] = {Exp = {[1] = 2130,[2] = 2130,[3] = 2130,[4] = 2130}},
	[19] = {Exp = {[1] = 2175,[2] = 2175,[3] = 2175,[4] = 2175}},
	[20] = {Exp = {[1] = 2210,[2] = 2210,[3] = 2210,[4] = 2210}},
	[21] = {Exp = {[1] = 2595,[2] = 2595,[3] = 2595,[4] = 2595}},
	[22] = {Exp = {[1] = 2725,[2] = 2725,[3] = 2725,[4] = 2725}},
	[23] = {Exp = {[1] = 2840,[2] = 2840,[3] = 2840,[4] = 2840}},
	[24] = {Exp = {[1] = 2950,[2] = 2950,[3] = 2950,[4] = 2950}},
	[25] = {Exp = {[1] = 3050,[2] = 3050,[3] = 3050,[4] = 3050}},
	[26] = {Exp = {[1] = 3145,[2] = 3145,[3] = 3145,[4] = 3145}},
	[27] = {Exp = {[1] = 3230,[2] = 3230,[3] = 3230,[4] = 3230}},
	[28] = {Exp = {[1] = 3310,[2] = 3310,[3] = 3310,[4] = 3310}},
	[29] = {Exp = {[1] = 3380,[2] = 3380,[3] = 3380,[4] = 3380}},
	[30] = {Exp = {[1] = 3635,[2] = 3635,[3] = 3635,[4] = 3635}},
	[31] = {Exp = {[1] = 4156,[2] = 4156,[3] = 4156,[4] = 4156}},
	[32] = {Exp = {[1] = 4675,[2] = 4675,[3] = 4675,[4] = 4675}},
	[33] = {Exp = {[1] = 5195,[2] = 5195,[3] = 5195,[4] = 5195}},
	[34] = {Exp = {[1] = 5714,[2] = 5714,[3] = 5714,[4] = 5714}},
	[35] = {Exp = {[1] = 6234,[2] = 6234,[3] = 6234,[4] = 6234}},
	[36] = {Exp = {[1] = 6753,[2] = 6753,[3] = 6753,[4] = 6753}},
	[37] = {Exp = {[1] = 7273,[2] = 7273,[3] = 7273,[4] = 7273}},
	[38] = {Exp = {[1] = 7792,[2] = 7792,[3] = 7792,[4] = 7792}},
	[39] = {Exp = {[1] = 8312,[2] = 8312,[3] = 8312,[4] = 8312}},
	[40] = {Exp = {[1] = 8831,[2] = 8831,[3] = 8831,[4] = 8831}},
	[41] = {Exp = {[1] = 10032,[2] = 10032,[3] = 10032,[4] = 10032}},
	[42] = {Exp = {[1] = 10691,[2] = 10691,[3] = 10691,[4] = 10691}},
	[43] = {Exp = {[1] = 11309,[2] = 11309,[3] = 11309,[4] = 11309}},
	[44] = {Exp = {[1] = 11891,[2] = 11891,[3] = 11891,[4] = 11891}},
	[45] = {Exp = {[1] = 12440,[2] = 12440,[3] = 12440,[4] = 12440}},
	[46] = {Exp = {[1] = 12958,[2] = 12958,[3] = 12958,[4] = 12958}},
	[47] = {Exp = {[1] = 13449,[2] = 13449,[3] = 13449,[4] = 13449}},
	[48] = {Exp = {[1] = 13913,[2] = 13913,[3] = 13913,[4] = 13913}},
	[49] = {Exp = {[1] = 14354,[2] = 14354,[3] = 14354,[4] = 14354}},
	[50] = {Exp = {[1] = 15550,[2] = 15550,[3] = 15550,[4] = 15550}},
	[51] = {Exp = {[1] = 16750,[2] = 16750,[3] = 16750,[4] = 16750}},
	[52] = {Exp = {[1] = 17441,[2] = 17441,[3] = 17441,[4] = 17441}},
	[53] = {Exp = {[1] = 18100,[2] = 18100,[3] = 18100,[4] = 18100}},
	[54] = {Exp = {[1] = 18730,[2] = 18730,[3] = 18730,[4] = 18730}},
	[55] = {Exp = {[1] = 19331,[2] = 19331,[3] = 19331,[4] = 19331}},
	[56] = {Exp = {[1] = 19906,[2] = 19906,[3] = 19906,[4] = 19906}},
	[57] = {Exp = {[1] = 20456,[2] = 20456,[3] = 20456,[4] = 20456}},
	[58] = {Exp = {[1] = 20984,[2] = 20984,[3] = 20984,[4] = 20984}},
	[59] = {Exp = {[1] = 21490,[2] = 21490,[3] = 21490,[4] = 21490}},
	[60] = {Exp = {[1] = 21976,[2] = 21976,[3] = 21976,[4] = 21976}},
	[61] = {Exp = {[1] = 22285,[2] = 22285,[3] = 22285,[4] = 22285}},
	[62] = {Exp = {[1] = 23313,[2] = 23313,[3] = 23313,[4] = 23313}},
	[63] = {Exp = {[1] = 24303,[2] = 24303,[3] = 24303,[4] = 24303}},
	[64] = {Exp = {[1] = 25256,[2] = 25256,[3] = 25256,[4] = 25256}},
	[65] = {Exp = {[1] = 26174,[2] = 26174,[3] = 26174,[4] = 26174}},
	[66] = {Exp = {[1] = 27060,[2] = 27060,[3] = 27060,[4] = 27060}},
	[67] = {Exp = {[1] = 27914,[2] = 27914,[3] = 27914,[4] = 27914}},
	[68] = {Exp = {[1] = 28740,[2] = 28740,[3] = 28740,[4] = 28740}},
	[69] = {Exp = {[1] = 29537,[2] = 29537,[3] = 29537,[4] = 29537}},
	[70] = {Exp = {[1] = 30307,[2] = 30307,[3] = 30307,[4] = 30307}},
	[71] = {Exp = {[1] = 31908,[2] = 31908,[3] = 31908,[4] = 31908}},
	[72] = {Exp = {[1] = 33503,[2] = 33503,[3] = 33503,[4] = 33503}},
	[73] = {Exp = {[1] = 35098,[2] = 35098,[3] = 35098,[4] = 35098}},
	[74] = {Exp = {[1] = 36694,[2] = 36694,[3] = 36694,[4] = 36694}},
	[75] = {Exp = {[1] = 38289,[2] = 38289,[3] = 38289,[4] = 38289}},
	[76] = {Exp = {[1] = 39885,[2] = 39885,[3] = 39885,[4] = 39885}},
	[77] = {Exp = {[1] = 41480,[2] = 41480,[3] = 41480,[4] = 41480}},
	[78] = {Exp = {[1] = 43076,[2] = 43076,[3] = 43076,[4] = 43076}},
	[79] = {Exp = {[1] = 44671,[2] = 44671,[3] = 44671,[4] = 44671}},
	[80] = {Exp = {[1] = 46266,[2] = 46266,[3] = 46266,[4] = 46266}},
	[81] = {Exp = {[1] = 55499,[2] = 55499,[3] = 55499,[4] = 55499}},
	[82] = {Exp = {[1] = 57334,[2] = 57334,[3] = 57334,[4] = 57334}},
	[83] = {Exp = {[1] = 59111,[2] = 59111,[3] = 59111,[4] = 59111}},
	[84] = {Exp = {[1] = 60832,[2] = 60832,[3] = 60832,[4] = 60832}},
	[85] = {Exp = {[1] = 62500,[2] = 62500,[3] = 62500,[4] = 62500}},
	[86] = {Exp = {[1] = 64118,[2] = 64118,[3] = 64118,[4] = 64118}},
	[87] = {Exp = {[1] = 65688,[2] = 65688,[3] = 65688,[4] = 65688}},
	[88] = {Exp = {[1] = 67211,[2] = 67211,[3] = 67211,[4] = 67211}},
	[89] = {Exp = {[1] = 68690,[2] = 68690,[3] = 68690,[4] = 68690}},
	[90] = {Exp = {[1] = 70127,[2] = 70127,[3] = 70127,[4] = 70127}},
	[91] = {Exp = {[1] = 94351,[2] = 94351,[3] = 94351,[4] = 94351}},
	[92] = {Exp = {[1] = 97692,[2] = 97692,[3] = 97692,[4] = 97692}},
	[93] = {Exp = {[1] = 100942,[2] = 100942,[3] = 100942,[4] = 100942}},
	[94] = {Exp = {[1] = 104105,[2] = 104105,[3] = 104105,[4] = 104105}},
	[95] = {Exp = {[1] = 107183,[2] = 107183,[3] = 107183,[4] = 107183}},
	[96] = {Exp = {[1] = 110179,[2] = 110179,[3] = 110179,[4] = 110179}},
	[97] = {Exp = {[1] = 113098,[2] = 113098,[3] = 113098,[4] = 113098}},
	[98] = {Exp = {[1] = 115943,[2] = 115943,[3] = 115943,[4] = 115943}},
	[99] = {Exp = {[1] = 118715,[2] = 118715,[3] = 118715,[4] = 118715}},
	[100] = {Exp = {[1] = 121418,[2] = 121418,[3] = 121418,[4] = 121418}},
	[101] = {Exp = {[1] = 164586,[2] = 164586,[3] = 164586,[4] = 164586}},
	[102] = {Exp = {[1] = 170708,[2] = 170708,[3] = 170708,[4] = 170708}},
	[103] = {Exp = {[1] = 176682,[2] = 176682,[3] = 176682,[4] = 176682}},
	[104] = {Exp = {[1] = 182514,[2] = 182514,[3] = 182514,[4] = 182514}},
	[105] = {Exp = {[1] = 188209,[2] = 188209,[3] = 188209,[4] = 188209}},
	[106] = {Exp = {[1] = 193771,[2] = 193771,[3] = 193771,[4] = 193771}},
	[107] = {Exp = {[1] = 199206,[2] = 199206,[3] = 199206,[4] = 199206}},
	[108] = {Exp = {[1] = 204517,[2] = 204517,[3] = 204517,[4] = 204517}},
	[109] = {Exp = {[1] = 209709,[2] = 209709,[3] = 209709,[4] = 209709}},
	[110] = {Exp = {[1] = 214785,[2] = 214785,[3] = 214785,[4] = 214785}},
	[111] = {Exp = {[1] = 216431,[2] = 216431,[3] = 216431,[4] = 216431}},
	[112] = {Exp = {[1] = 238074,[2] = 238074,[3] = 238074,[4] = 238074}},
	[113] = {Exp = {[1] = 259717,[2] = 259717,[3] = 259717,[4] = 259717}},
	[114] = {Exp = {[1] = 281360,[2] = 281360,[3] = 281360,[4] = 281360}},
	[115] = {Exp = {[1] = 303003,[2] = 303003,[3] = 303003,[4] = 303003}},
	[116] = {Exp = {[1] = 324646,[2] = 324646,[3] = 324646,[4] = 324646}},
	[117] = {Exp = {[1] = 346289,[2] = 346289,[3] = 346289,[4] = 346289}},
	[118] = {Exp = {[1] = 367932,[2] = 367932,[3] = 367932,[4] = 367932}},
	[119] = {Exp = {[1] = 389575,[2] = 389575,[3] = 389575,[4] = 389575}},
	[120] = {Exp = {[1] = 411218,[2] = 411218,[3] = 411218,[4] = 411218}},
	[121] = {Exp = {[1] = 354850,[2] = 354850,[3] = 354850,[4] = 354850}},
	[122] = {Exp = {[1] = 390335,[2] = 390335,[3] = 390335,[4] = 390335}},
	[123] = {Exp = {[1] = 425820,[2] = 425820,[3] = 425820,[4] = 425820}},
	[124] = {Exp = {[1] = 461305,[2] = 461305,[3] = 461305,[4] = 461305}},
	[125] = {Exp = {[1] = 496790,[2] = 496790,[3] = 496790,[4] = 496790}},
	[126] = {Exp = {[1] = 532275,[2] = 532275,[3] = 532275,[4] = 532275}},
	[127] = {Exp = {[1] = 567760,[2] = 567760,[3] = 567760,[4] = 567760}},
	[128] = {Exp = {[1] = 603245,[2] = 603245,[3] = 603245,[4] = 603245}},
	[129] = {Exp = {[1] = 638731,[2] = 638731,[3] = 638731,[4] = 638731}},
	[130] = {Exp = {[1] = 674216,[2] = 674216,[3] = 674216,[4] = 674216}},
	[131] = {Exp = {[1] = 651770,[2] = 651770,[3] = 651770,[4] = 651770}},
	[132] = {Exp = {[1] = 716947,[2] = 716947,[3] = 716947,[4] = 716947}},
	[133] = {Exp = {[1] = 782124,[2] = 782124,[3] = 782124,[4] = 782124}},
	[134] = {Exp = {[1] = 847301,[2] = 847301,[3] = 847301,[4] = 847301}},
	[135] = {Exp = {[1] = 912478,[2] = 912478,[3] = 912478,[4] = 912478}},
	[136] = {Exp = {[1] = 977655,[2] = 977655,[3] = 977655,[4] = 977655}},
	[137] = {Exp = {[1] = 1042832,[2] = 1042832,[3] = 1042832,[4] = 1042832}},
	[138] = {Exp = {[1] = 1108009,[2] = 1108009,[3] = 1108009,[4] = 1108009}},
	[139] = {Exp = {[1] = 1173186,[2] = 1173186,[3] = 1173186,[4] = 1173186}},
	[140] = {Exp = {[1] = 1238363,[2] = 1238363,[3] = 1238363,[4] = 1238363}},
	[141] = {Exp = {[1] = 1277241,[2] = 1277241,[3] = 1277241,[4] = 1277241}},
	[142] = {Exp = {[1] = 1404965,[2] = 1404965,[3] = 1404965,[4] = 1404965}},
	[143] = {Exp = {[1] = 1532689,[2] = 1532689,[3] = 1532689,[4] = 1532689}},
	[144] = {Exp = {[1] = 1660413,[2] = 1660413,[3] = 1660413,[4] = 1660413}},
	[145] = {Exp = {[1] = 1788137,[2] = 1788137,[3] = 1788137,[4] = 1788137}},
	[146] = {Exp = {[1] = 1915862,[2] = 1915862,[3] = 1915862,[4] = 1915862}},
	[147] = {Exp = {[1] = 2043586,[2] = 2043586,[3] = 2043586,[4] = 2043586}},
	[148] = {Exp = {[1] = 2171310,[2] = 2171310,[3] = 2171310,[4] = 2171310}},
	[149] = {Exp = {[1] = 2299034,[2] = 2299034,[3] = 2299034,[4] = 2299034}},
	[150] = {Exp = {[1] = 2426758,[2] = 2426758,[3] = 2426758,[4] = 2426758}}
}
ddt["card_exp"] = data
SetLooseReadonly(data)
return data