using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ExcelToLua
{

    class NickNameColCatchManager
    {
        protected Dictionary<string, NickNameColCatch> m_data;
        static NickNameColCatchManager s_Instence;
        static Regex noneConvertStr = new Regex("^@[0-9]+$");
        static NickNameColCatchManager()
        {
            s_Instence = new NickNameColCatchManager();
        }
        public static NickNameColCatchManager getInstence() { return s_Instence; }
        public NickNameColCatchManager()
        {
            m_data = new Dictionary<string, NickNameColCatch>();
        }

        public void createCatch(string v_setName, string v_valType)
        {
            if (!m_data.ContainsKey(v_setName))
            {
                NickNameColCatch aCatch = new NickNameColCatch(v_valType);
                aCatch.addData("nil", -1);
                m_data.Add(v_setName, aCatch);
            }
        }

        public void addData(string v_setName, string v_keyName, int v_id)
        {
            if (!m_data.ContainsKey(v_setName))
            {
                Debug.Exception("没有创建名为{0}的catch", v_setName);
            }
            if (!m_data[v_setName].addData(v_keyName, v_id))
            {
                Debug.Exception("添加重复键{0}", v_keyName);
            }
        }
        public bool getID(string v_setName, string v_keyName,out int vout_id)
        {
            NickNameColCatch nickNameColCatch = m_data[v_setName];
            return nickNameColCatch.getID(v_keyName, out vout_id);
        }

        public bool isSetExist(string v_setName)
        {
            return m_data.ContainsKey(v_setName);
        }
        public ValueType getSetsValType(string v_setName)
        {
            if (isSetExist(v_setName))
            {
                return m_data[v_setName].getValueType();
            }
            return ValueType.其他;
        }
        public bool checkData(string v_colType, Object v_cellData, out string vout_id)
        {
            if (v_cellData == null)
            {
                vout_id = null;
                return false;
            }

            if (m_data.ContainsKey(v_colType))
            {
                int id;
                string strCellData = v_cellData.ToString();
                if (getID(v_colType, strCellData, out id))
                {
                    vout_id = id.ToString();
                    return true;
                }
                else if (noneConvertStr.IsMatch(strCellData))
                {
                    vout_id = strCellData.Substring(1);
                    return true;
                }
            }
            vout_id = null;
            return false;
        }

        public bool checkData(string v_colType, Object v_cellData, out int vout_id)
        {
            if (v_cellData == null)
            {
                vout_id = -1;
                return false;
            }

            if (m_data.ContainsKey(v_colType))
            {
                int id;
                string strCellData = v_cellData.ToString();
                if (getID(v_colType, strCellData, out id))
                {
                    vout_id = id;
                    return true;
                }
                else if (noneConvertStr.IsMatch(strCellData))
                {
                    vout_id = int.Parse(strCellData.Substring(1));
                    return true;
                }
            }
            vout_id = -1;
            return false;
        }

    }

    enum ValueType
    {
        字符串,
        整数,
        其他
    }

    class NickNameColCatch
    {
        protected List<KeyValuePair<string, int>> m_data;
        protected Dictionary<string, int> m_keyIndex;
        protected HashSet<int> m_ids;
        protected ValueType m_valueType;
        public NickNameColCatch(string v_valType)
        {
            m_data = new List<KeyValuePair<string, int>>();
            m_keyIndex = new Dictionary<string, int>();
            m_ids = new HashSet<int>();
            if (v_valType == "string")
            {
                m_valueType = ValueType.字符串;
            }
            else if (v_valType == "int")
            {
                m_valueType = ValueType.整数;
            }
            else
            {
                m_valueType = ValueType.其他;
            }
        }
        public bool addData(string v_key, int v_val)
        {
            int cnt = m_data.Count;
            bool isDuplicated = m_keyIndex.ContainsKey(v_key);
            m_data.Add(new KeyValuePair<string, int>(v_key, v_val));
            m_keyIndex.Add(v_key, cnt);
            m_ids.Add(v_val);
            return !isDuplicated;
        }
        public bool getID(string v_id, out int vo_id)
        {
            if (int.TryParse(v_id, out vo_id))
            {
                return m_ids.Contains(vo_id);
            }
            else
            {
                if (m_keyIndex.ContainsKey(v_id))
                {
                    vo_id = m_data[m_keyIndex[v_id]].Value;
                    return true;
                }
                vo_id = -1;
                return false;
            }
        }
        public ValueType getValueType()
        {
            return m_valueType;
        }


    }
}
