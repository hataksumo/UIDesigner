using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Excel = Aspose.Cells;

namespace ExcelToLua
{
    class playerData
    {
        public int groupID;//组ID
        public int level;//等级
        public float hpPercent;//生命百分比
        public float atkPercent;//攻击百分比
        public int heroNum;//英雄数量
        public int heroBreak;//英雄等级
        public float heroAptitude;//英雄资质
        public int[] heroQualitys;//英雄品质
        public float weaponAptitude;//武器资质
        public int[] weaponQualityAvg;//武器平均品质
        public float breastAptitudes;//胸甲资质
        public int[] breastQualityAvg;//胸甲平均品质
        public float helmetAptitude;//头盔资质
        public int[] helmetQualityAvg;//头盔品质
        public float shoeseAptitude;//鞋子资质
        public int[] shoeseQualityAvg;//鞋子品质
        public int equipStrengthenLv;//装备强化
        public int equipBreakLv;//装备突破
        public float equipRecoinPercent;//装备精炼百分比

        public float amuletAptitudeHp;//神器资质
        public int[] amuletQualityArrHp;//神器品质
        public float amuletAptitudeAtk;//圣器资质
        public int[] amuletQualityArrAtk;//圣器品质
        public int amulet_level;//宝物强化
        public int amulet_recoin;//宝物精炼
        public int pet_level;//宠物培养
        public int pet_xingyu;//宠物星语


        public playerData()
        {
            groupID = 0;
            level = 0;
            hpPercent = 0;
            atkPercent = 0;
            heroNum = 6;
            heroBreak = 0;
            heroAptitude = 36;
            heroQualitys = new int[] { 0, 1, 5, 0, 0 };
            weaponAptitude = 36;
            weaponQualityAvg = new int[] { 5, 1, 0, 0, 0 };
            breastAptitudes = 36;
            breastQualityAvg = new int[] { 5, 1, 0, 0, 0 };
            helmetAptitude = 36;
            helmetQualityAvg = new int[] { 5, 1, 0, 0, 0 };
            shoeseAptitude = 36;
            shoeseQualityAvg = new int[] { 5, 1, 0, 0, 0 };
            equipStrengthenLv = 10;
            equipBreakLv = 0;
            equipRecoinPercent = 0;
            amuletAptitudeHp = 7;
            amuletQualityArrHp = new int[] { 6, 0, 0, 0 };
            amuletAptitudeAtk = 7;
            amuletQualityArrAtk = new int[] { 6, 0, 0, 0 };
            amulet_level = 5;
            amulet_recoin = 0;
            pet_level = 0;
            pet_xingyu = 0;
        }
        public void init(string[] v_strIpt)
        {
            groupID = Convert.ToInt32(v_strIpt[0]);
            level = Convert.ToInt32(v_strIpt[1]);
            hpPercent = Convert.ToSingle(v_strIpt[2]);
            atkPercent = Convert.ToSingle(v_strIpt[3]);
            heroNum = Convert.ToInt32(v_strIpt[4]);
            heroBreak = Convert.ToInt32(v_strIpt[5]);
            heroAptitude = Convert.ToSingle(v_strIpt[6]);
            heroQualitys = convertStringArr(heroQualitys, v_strIpt[7]);
            weaponAptitude = Convert.ToSingle(v_strIpt[8]);
            weaponQualityAvg = convertStringArr(weaponQualityAvg, v_strIpt[9]);
            breastAptitudes = Convert.ToSingle(v_strIpt[10]);
            breastQualityAvg = convertStringArr(breastQualityAvg, v_strIpt[11]);
            helmetAptitude = Convert.ToSingle(v_strIpt[12]);
            helmetQualityAvg = convertStringArr(helmetQualityAvg, v_strIpt[13]);
            shoeseAptitude = Convert.ToSingle(v_strIpt[14]);
            shoeseQualityAvg = convertStringArr(shoeseQualityAvg, v_strIpt[15]);
            equipStrengthenLv = Convert.ToInt32(v_strIpt[16]);
            equipBreakLv = Convert.ToInt32(v_strIpt[17]);
            equipRecoinPercent = Convert.ToSingle(v_strIpt[18]);
            amuletAptitudeHp = Convert.ToSingle(v_strIpt[19]);
            amuletQualityArrHp = convertStringArr(amuletQualityArrHp, v_strIpt[20]);
            amuletAptitudeAtk = Convert.ToSingle(v_strIpt[21]);
            amuletQualityArrAtk = convertStringArr(amuletQualityArrAtk, v_strIpt[22]);
            amulet_level = Convert.ToInt32(v_strIpt[23]);
            amulet_recoin = Convert.ToInt32(v_strIpt[24]);
            pet_level = Convert.ToInt32(v_strIpt[25]);
            pet_xingyu = Convert.ToInt32(v_strIpt[26]);
        }

        private int[] convertStringArr(int[] v_arr,string v_strArr)
        {
            string[] sp = v_strArr.Split(',', '，', '_');
            Debug.Assert(sp.Length == v_arr.Length, "\'，\'字符串解析后数量与传入数组长度不一致");
            for (int i = 0; i < sp.Length; i++)
                v_arr[i] = Convert.ToInt32(sp[i]);
            return v_arr;
        }
    }

    struct BaseAttrData
    {
        public float[] attr;
        public float Hp { get { return attr[0]; } set { attr[0] = value; } }
        public float Atk { get { return attr[1]; } set { attr[1] = value; } }
        public float PhisicalDef { get { return attr[2]; } set { attr[2] = value; } }
        public float MagicalDef { get { return attr[3]; } set { attr[3] = value; } }

        public void init()
        {
            attr = new float[4];
        }
        public void init(float[] v_data)
        {
            attr = new float[4];
            for (int i = 0; i < v_data.Length; i++)
            {
                attr[i] = v_data[i];
            }
        }
        public static BaseAttrData operator +(BaseAttrData v_left, BaseAttrData v_right)
        {
            BaseAttrData rtn = new BaseAttrData();
            rtn.init();
            for (int i = 0; i < rtn.attr.Length; i++)
            {
                rtn.attr[i] = v_left.attr[i] + v_right.attr[i];
            }
            return rtn;
        }

        public static BaseAttrData operator *(BaseAttrData v_left, BaseAttrData v_right)
        {
            BaseAttrData rtn = new BaseAttrData();
            rtn.init();
            for (int i = 0; i < rtn.attr.Length; i++)
            {
                rtn.attr[i] = v_left.attr[i] * (1 + v_right.attr[i]/10000);
            }
            return rtn;
        }

        public static BaseAttrData operator *(BaseAttrData v_left, float v_fac)
        {
            BaseAttrData rtn = new BaseAttrData();
            rtn.init();
            for (int i = 0; i < rtn.attr.Length; i++)
            {
                rtn.attr[i] = v_left.attr[i] * v_fac;
            }
            return rtn;
        }

        public static BaseAttrData operator /(BaseAttrData v_left, float v_div)
        {
            BaseAttrData rtn = new BaseAttrData();
            rtn.init();
            for (int i = 0; i < rtn.attr.Length; i++)
            {
                rtn.attr[i] = v_left.attr[i] / v_div;
            }
            return rtn;
        }
    }

    struct EquipAttr
    {
        public BaseAttrData[] equip;
        public void init()
        {
            equip = new BaseAttrData[6];
            for (int i = 0; i < equip.Length; i++)
                equip[i].init();
        }
        public BaseAttrData Weapon { get { return equip[0]; } }
        public BaseAttrData Breast { get { return equip[1]; } }
        public BaseAttrData halmet { get { return equip[2]; } }
        public BaseAttrData shoose { get { return equip[3]; } }
        public BaseAttrData almulet_1 { get { return equip[4]; } }
        public BaseAttrData almulet_2 { get { return equip[5]; } }
    }

    struct EquiptBreakup
    {
        Dictionary<int,BaseAttrData[]> levelAttr;
        const int MAX_LV = 13;
        public void init()
        {
            levelAttr = new Dictionary<int, BaseAttrData[]>();
        }
        public void add(int v_id, int v_level, float[] v_attr)
        {
            BaseAttrData[] breakup_data = null;
            if (!levelAttr.ContainsKey(v_id))
            {
                breakup_data = new BaseAttrData[MAX_LV];
                levelAttr.Add(v_id, breakup_data);
            }
            else
            {
                breakup_data = levelAttr[v_id];
            }
            breakup_data[v_level] = new BaseAttrData();
            breakup_data[v_level].init(v_attr);
        }
        public BaseAttrData getData(int v_pos, int v_level)
        {
            return levelAttr[v_pos][v_level];
        }
    }

    struct AmuletRecoin
    {
        Dictionary<int, BaseAttrData[]> levelAttr;
        const int MAX_LV = 13;
        public void init()
        {
            levelAttr = new Dictionary<int, BaseAttrData[]>();
        }
        public void add(int v_id, int v_level, float[] v_attr)
        {
            BaseAttrData[] breakup_data = null;
            if (!levelAttr.ContainsKey(v_id))
            {
                breakup_data = new BaseAttrData[MAX_LV];
                levelAttr.Add(v_id, breakup_data);
            }
            else
            {
                breakup_data = levelAttr[v_id];
            }
            breakup_data[v_level] = new BaseAttrData();
            breakup_data[v_level].init(v_attr);
        }
        public BaseAttrData getData(int v_type,int v_quality, int v_recoinLv)
        {
            int typeOff = v_type * 2 + 1;
            if (v_quality <= 3)
            {
                return levelAttr[typeOff][v_recoinLv];
            }
            else
            {
                return levelAttr[typeOff + 1][v_recoinLv];
            }
        }
    }

    struct PetFoster
    {
        public List<BaseAttrData> levelData;
        public void init()
        {
            levelData = new List<BaseAttrData>();
        }
        public void addData(float[] v_data)
        {
            BaseAttrData addData = new BaseAttrData();
            addData.init(v_data);
            levelData.Add(addData);
        }
    }

    struct PetStar
    {
        public List<BaseAttrData> levelData;
        public void init()
        {
            levelData = new List<BaseAttrData>();
        }
        public void addData(float[] v_data)
        {
            BaseAttrData addData = new BaseAttrData();
            addData.init(v_data);
            levelData.Add(addData);
        }
    }

    class MonsterAttr
    {
        public int id;
        public string note;
        public int groupID;
        public int level;
        public BaseAttrData playerAttr;
        public int iniAngry;
        public int angryRecover;
        public float killMonsterRound;
        public float hpCost;
        public float phisicalDefPercent;
        public float magicalDefPercent;
        public float playerCureNum;
        public float monsterCureNum;
        public BaseAttrData monsterAttr;
        const float skillFac = 2;
        public void calMonsterAttr()
        {
            int iround = (int)killMonsterRound;
            float lastRound = killMonsterRound - iround;
            int angry = iniAngry;
            //float atkOutput = 0;
            float playerAtkFactor = 0;
            float monsterAtkFac = 0;
            float defPercent = Math.Min(phisicalDefPercent, magicalDefPercent);
            float playerHealFactor = 0;
            float monsterHealFactpr = 0;
            float playerHealPercent = playerCureNum / 6.0f;
            float playerDpsPercent = 1.0f - playerHealPercent;
            float monsterHealPercent = monsterCureNum / 6.0f;
            float monsterDpsPercent = 1.0f - monsterHealPercent;

            for (int round = 0; round < iround; round++)
            {
                if (angry % 4 == 0)
                {
                    playerAtkFactor += skillFac * playerDpsPercent;
                    monsterAtkFac += skillFac * monsterDpsPercent;
                    playerHealFactor += skillFac * playerHealPercent;
                    monsterHealFactpr += skillFac * monsterHealPercent;
                }
                else
                {
                    playerAtkFactor += 1 * playerDpsPercent;
                    monsterAtkFac += 1 * monsterDpsPercent;
                    playerHealFactor += 1 * playerHealPercent;
                    monsterHealFactpr += 1 * monsterHealPercent;
                    angry += angryRecover;
                }
            }
            if (angry % 4 == 0)
            {
                playerAtkFactor += skillFac * lastRound;
            }
            else
            {
                playerAtkFactor += lastRound;
            }
            monsterAttr.init();
            monsterAttr.Atk = (int)((playerAttr.Hp * hpCost + playerAttr.Atk * playerHealFactor) / monsterAtkFac + (playerAttr.PhisicalDef + playerAttr.MagicalDef) / 2.0 );
            monsterAttr.Hp = (int)(playerAtkFactor * playerAttr.Atk * (1-defPercent) - monsterAttr.Atk * monsterHealPercent * monsterAtkFac);
            monsterAttr.PhisicalDef = (int)(playerAttr.Atk * phisicalDefPercent);
            monsterAttr.MagicalDef = (int)(playerAttr.Atk * magicalDefPercent);
            
        }
    }






    class AttrDesignerDatas
    {
        protected List<playerData> m_playerDatas = new List<playerData>();//设定玩家养成数据
        protected Dictionary<int, List<int>> m_playerDataIndex = new Dictionary<int, List<int>>();//玩家索引
        protected BaseAttrData m_heroAttr;//一点资质为多少属性
        protected float[] m_skillFac;//绿蓝紫橙红武将的预估技能系数
        protected EquipAttr m_equipStrengthenData;//装备强化的属性
        protected EquiptBreakup m_equipBreakupData;//装备突破强化的百分比数值（万分制）
        protected AmuletRecoin m_amuletRecoinData;//宝物精炼的固定数值
        protected PetFoster m_petFosterData;//宠物培养数据
        protected PetStar m_petStarData;//宠物星语数据(万分制百分比)
        protected List<BaseAttrData> m_playerAttrdatas;//计算好的玩家基础属性
        protected Dictionary<int, List<int>> m_playerAttrIndex;//玩家数据索引


        static string[] titles = {
            "组ID",
            "等级",
            "百分比血",
            "百分比攻",
            "武将个数",
            "武将突破",
            "武将资质",
            "武将品质",
            "武器资质",
            "武器品质",
            "头盔资质",
            "头盔品质",
            "铠甲资质",
            "铠甲品质",
            "战靴资质",
            "战靴品质",
            "装备强化等级",
            "装备突破",
            "装备洗练",
            "神器资质",
            "神器品质",
            "圣器资质",
            "圣器品质",
            "宝物强化",
            "宝物精炼",
            "战宠培养",
            "战宠星语"
        };

        public void readData(Excel.Worksheet v_sheet)
        {
            Excel.Cells data = v_sheet.Cells;
            SheetHeader header = new SheetHeader();
            header.readHeader(v_sheet,1);
            for (int i = 2; i < 100000; i++)
            {
                object idIdx = header.getData(data, i, "等级");
                if (idIdx == null|| string.IsNullOrWhiteSpace(idIdx.ToString()))
                    break;
                int groupId = Convert.ToInt32(header.getData(data, i, "组ID"));
                List<int> arrIndex = null;
                if (!m_playerDataIndex.ContainsKey(groupId))
                {
                    arrIndex = new List<int>();
                    m_playerDataIndex.Add(groupId, arrIndex);
                }
                else
                {
                    arrIndex = m_playerDataIndex[groupId];
                }
                arrIndex.Add(m_playerDatas.Count);
                if (arrIndex == null)
                {
                    arrIndex = new List<int>();
                    m_playerDataIndex.Add(groupId, arrIndex);
                }
                arrIndex.Add(m_playerDatas.Count);
                playerData pd = new playerData();
                string[] strIpt = new string[titles.Length];
                for (int j = 0; j < titles.Length; j++)
                {
                    object tmp = header.getData(data, i, titles[j]);
                    if (tmp == null)
                        Debug.Info("读取第{0}行第{1}列时发生错误", i, titles[j]);
                    strIpt[j] = Convert.ToString(tmp);

                }
                pd.init(strIpt);
                m_playerDatas.Add(pd);
            }
        }


        public void readAttrTemplateData(Excel.Worksheet v_sheet)
        {
            Excel.Cells data = v_sheet.Cells;
            //英雄数据
            m_heroAttr = new BaseAttrData();
            m_heroAttr.init();
            const int HERO_DATA_X = 0;
            const int HERO_Data_Y = 3;
            for (int i = 0; i < 4; i++)
            {
                m_heroAttr.attr[i] = data[HERO_Data_Y, HERO_DATA_X + i].FloatValue;
            }
            //英雄技能
            m_skillFac = new float[5];
            const int HERO_Skill_X = 7;
            const int HERO_Skill_Y = 3;
            for (int i = 0; i < 5; i++)
            {
                m_skillFac[i] = data[HERO_Skill_Y + i, HERO_Skill_X].FloatValue;
            }
            //装备强化
            m_equipStrengthenData = new EquipAttr();
            m_equipStrengthenData.init();
            const int EQUIP_STRENGTHEN_X = 11;
            const int EQUIP_STRENGTHEN_Y = 3;
            for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    m_equipStrengthenData.equip[i].attr[j] = data[i + EQUIP_STRENGTHEN_Y,j + EQUIP_STRENGTHEN_X].FloatValue;
                }
            }
            //装备突破
            m_equipBreakupData = new EquiptBreakup();
            m_equipBreakupData.init();
            const int EQUIP_BREAKUP_X = 17;
            const int EQUIP_BREAKUP_Y = 3;
            for (int i = 0; true; i++)
            {
                object oid = data[EQUIP_BREAKUP_Y + i, EQUIP_BREAKUP_X].Value;
                if (oid == null||string.IsNullOrWhiteSpace(oid.ToString()))
                    break;
                int id = Convert.ToInt32(oid);
                int level = data[EQUIP_BREAKUP_Y + i, EQUIP_BREAKUP_X + 1].IntValue;
                float[] arrData = new float[4];
                for (int j = 0; j < 4; j++)
                {
                    arrData[j] = data[EQUIP_BREAKUP_Y + i, EQUIP_BREAKUP_X + j + 2].FloatValue;
                }
                m_equipBreakupData.add(id, level, arrData);
            }
            //宝物精炼
            m_amuletRecoinData = new AmuletRecoin();
            m_amuletRecoinData.init();
            const int EQUIP_RECOIN_X = 24;
            const int EQUIP_RECOIN_Y = 3;
            for (int i = 0; true; i++)
            {
                object oid = data[EQUIP_RECOIN_Y + i, EQUIP_RECOIN_X + 0].Value;
                if (oid == null || string.IsNullOrWhiteSpace(oid.ToString()))
                    break;
                int id = Convert.ToInt32(oid);
                int level = data[EQUIP_RECOIN_Y + i, EQUIP_RECOIN_X + 1].IntValue;
                float[] arrData = new float[4];
                for (int j = 0; j < 2; j++)
                {
                    arrData[j] = data[EQUIP_RECOIN_Y + i, EQUIP_RECOIN_X + 2 + j].FloatValue;
                }
                m_amuletRecoinData.add(id, level, arrData);
            }
            //战宠培养
            m_petFosterData = new PetFoster();
            m_petFosterData.init();
            const int PET_FOSTER_X = 30;
            const int PET_FOSTER_Y = 3;
            for (int i = 0; true; i++)
            {
                object oid = data[PET_FOSTER_Y + i, PET_FOSTER_X - 1].Value;
                if (oid == null || string.IsNullOrWhiteSpace(oid.ToString()))
                    break;
                float[] arrData = new float[4];
                for (int j = 0; j < 4; j++)
                {
                    arrData[j] = data[PET_FOSTER_Y + i, PET_FOSTER_X + j].FloatValue;
                }
                m_petFosterData.addData(arrData);
            }
            //战宠星语
            m_petStarData = new PetStar();
            m_petStarData.init();
            const int PET_STAR_X = 36;
            const int PET_STAR_Y = 3;
            for (int i = 0; true; i++)
            {
                object oid = data[PET_STAR_Y + i,PET_STAR_X - 1].Value;
                if (oid == null || string.IsNullOrWhiteSpace(oid.ToString()))
                    break;
                float[] arrData = new float[4];
                for (int j = 0; j < 4; j++)
                {
                    arrData[j] = data[PET_STAR_Y + i, PET_STAR_X + j].FloatValue;
                }
                m_petStarData.addData(arrData);
            }

        }

        //protected List<BaseAttrData> monsterAttr;
        public void calPlayerAttr(Excel.Worksheet v_monsterSheet)
        {
            const int OFF_Y = 2;
            Excel.Cells data = v_monsterSheet.Cells;
            m_playerAttrdatas = new List<BaseAttrData>();
            m_playerAttrIndex = new Dictionary<int, List<int>>();
            SheetHeader header = new SheetHeader();
            header.readHeader(v_monsterSheet, 1);

            for (int i = 0; i < m_playerDatas.Count; i++)
            {
                BaseAttrData attrVal = new BaseAttrData();
                attrVal.init();
                BaseAttrData attrFac = new BaseAttrData();
                attrFac.init();
                playerData pd = m_playerDatas[i];

                //计算武将属性
                attrVal = attrVal + m_heroAttr * pd.heroAptitude * (pd.level + 10) * (float)Math.Pow(1.2,(double)pd.heroBreak);
                //计算武器
                attrVal = attrVal + m_equipStrengthenData.Weapon * (8 + pd.equipStrengthenLv);
                //计算胸甲
                attrVal = attrVal + m_equipStrengthenData.Breast * (8 + pd.equipStrengthenLv);
                //计算头盔
                attrVal = attrVal + m_equipStrengthenData.halmet * (8 + pd.equipStrengthenLv);
                //计算鞋子
                attrVal = attrVal + m_equipStrengthenData.shoose * (8 + pd.equipStrengthenLv);
                //计算神器
                attrFac = attrFac + m_equipStrengthenData.almulet_1 * (10 + pd.amulet_level) * pd.heroNum;
                //计算圣器
                attrFac = attrFac + m_equipStrengthenData.almulet_2 * (10 + pd.amulet_level) * pd.heroNum;
                //计算装备突破
                for (int j = 0; j < 4; j++)
                {
                    attrFac = attrFac + m_equipBreakupData.getData(j+1, pd.equipBreakLv);
                }
                //计算宝物精炼
                for (int j = 0; j < pd.amuletQualityArrHp.Length; j++)
                {
                    attrVal = attrVal + m_amuletRecoinData.getData(0, j,pd.amulet_recoin) * pd.amuletQualityArrHp[j];
                    attrVal = attrVal + m_amuletRecoinData.getData(1, j, pd.amulet_recoin) * pd.amuletQualityArrAtk[j];
                }
                //计算战宠培养
                attrVal = attrVal + m_petFosterData.levelData[pd.pet_level] * pd.heroNum;
                //计算战宠星语
                attrFac = attrFac + m_petStarData.levelData[pd.pet_xingyu] * pd.heroNum;
                //计算最终结果
                attrVal = attrVal / pd.heroNum;
                attrFac = attrFac / pd.heroNum;
                BaseAttrData finalAttr = attrVal * attrFac;
                //考虑英雄技能系数
                float avgSkillFac = 0;
                for (int j = 0; j < 5; j++)
                {
                    avgSkillFac += m_skillFac[j] * pd.heroQualitys[j];
                }
                avgSkillFac /= pd.heroNum;
                finalAttr.Atk *= avgSkillFac;
                float[] arrAttr = new float[] { (float)Math.Round(finalAttr.Hp, 2),
                                                (float)Math.Round(finalAttr.Atk, 2),
                                                (float)Math.Round(finalAttr.PhisicalDef, 2),
                                                (float)Math.Round(finalAttr.MagicalDef, 2)
                };
                BaseAttrData bad = new BaseAttrData();
                bad.init(arrAttr);
                List<int> arrPlayerAttrIndex = null;
                if (!m_playerAttrIndex.ContainsKey(pd.groupID))
                {
                    arrPlayerAttrIndex = new List<int>();
                    m_playerAttrIndex.Add(pd.groupID, arrPlayerAttrIndex);
                }
                else
                {
                    arrPlayerAttrIndex = m_playerAttrIndex[pd.groupID];
                }
                arrPlayerAttrIndex.Add(m_playerAttrdatas.Count);
                m_playerAttrdatas.Add(bad);


                header.setData(data, OFF_Y + i, "玩家血", bad.Hp);
                header.setData(data, OFF_Y + i, "玩家攻", bad.Atk);
                header.setData(data, OFF_Y + i, "玩家物防", bad.PhisicalDef);
                header.setData(data, OFF_Y + i, "玩家法防", bad.MagicalDef);
                
            }

        }


        protected List<MonsterAttr> m_monsterAttr;
        public void calMonsterData(Excel.Worksheet v_monsterSheet)
        {
            Excel.Cells data = v_monsterSheet.Cells;
            SheetHeader header = new SheetHeader();
            header.readHeader(v_monsterSheet,1);
            m_monsterAttr = new List<MonsterAttr>();
            //读取设置数据
            for (int i = 2; true; i++)
            {
                object oid = header.getData(data, i, "ID");
                if (oid == null || string.IsNullOrWhiteSpace(oid.ToString()))
                    break;
                MonsterAttr tmp = new MonsterAttr();
                tmp.id = Convert.ToInt32(oid);
                tmp.note = header.getData(data, i, "备注").ToString();
                tmp.groupID = Convert.ToInt32(header.getData(data, i, "组ID"));
                tmp.level = Convert.ToInt32(header.getData(data, i, "等级"));
                tmp.iniAngry = Convert.ToInt32(header.getData(data, i, "初始怒气"));
                tmp.angryRecover = Convert.ToInt32(header.getData(data, i, "怒气回复"));
                tmp.killMonsterRound = Convert.ToSingle(header.getData(data,i,"玩家杀怪回合数"));
                tmp.hpCost = Convert.ToSingle(header.getData(data, i, "消耗血量"));
                tmp.phisicalDefPercent = Convert.ToSingle(header.getData(data, i, "物防百分比"));
                tmp.magicalDefPercent = Convert.ToSingle(header.getData(data, i, "法防百分比"));
                tmp.playerCureNum = Convert.ToSingle(header.getData(data, i, "玩家治疗数"));
                tmp.monsterCureNum = Convert.ToSingle(header.getData(data, i, "怪物治疗数"));
                m_monsterAttr.Add(tmp);
            }
            //进行计算,并填表
            for (int i = 0; i < m_monsterAttr.Count; i++)
            {
                MonsterAttr cur = m_monsterAttr[i];
                int playerIdx = getPlayerAttrIdx(cur.groupID,cur.level);
                BaseAttrData playerAttr = m_playerAttrdatas[playerIdx];
                cur.playerAttr = playerAttr;
                cur.calMonsterAttr();
                header.setData(data, i + 2, "玩家血量", playerAttr.Hp);
                header.setData(data, i + 2, "玩家攻击", playerAttr.Atk);
                header.setData(data, i + 2, "玩家物防", playerAttr.PhisicalDef);
                header.setData(data, i + 2, "玩家法防", playerAttr.MagicalDef);
                header.setData(data, i + 2, "怪物血量", cur.monsterAttr.Hp);
                header.setData(data, i + 2, "怪物攻击", cur.monsterAttr.Atk);
                header.setData(data, i + 2, "怪物物防", cur.monsterAttr.PhisicalDef);
                header.setData(data, i + 2, "怪物法防", cur.monsterAttr.MagicalDef);
            }
        }

        private int getPlayerAttrIdx(int v_groupid,int v_level)
        {
            if (!m_playerAttrIndex.ContainsKey(v_groupid))
                return -1;
            List<int> levelInfo = m_playerAttrIndex[v_groupid];
            v_level = Math.Min(v_level, levelInfo.Count);
            return levelInfo[v_level - 1];
        }



    }
}
