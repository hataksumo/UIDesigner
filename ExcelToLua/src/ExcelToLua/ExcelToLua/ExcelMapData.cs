using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelToLua
{
    class ExcelMapData
    {
        protected Dictionary<int, ExcelMapData> m_iData;
        protected Dictionary<string, ExcelMapData> m_sData;
        protected CellValue m_data;
        protected string m_note;
        protected EExcelMapDataType m_type; 


        public ExcelMapData()
        {
            m_iData = new Dictionary<int, ExcelMapData>();
            m_sData = new Dictionary<string, ExcelMapData>();
            m_data = null;
            m_type = EExcelMapDataType.indexMap;
        }

        public bool IsLeafe
        {
            get { return m_data != null; }
        }

        public ExcelMapData getData(Key v_key)
        {
            if (v_key.keytype == KeyType.String && m_sData.ContainsKey(v_key.skey))
                return m_sData[v_key.skey];
            if (v_key.keytype == KeyType.Integer && m_iData.ContainsKey(v_key.ikey))
                return m_iData[v_key.ikey];
            return null;
        }

        public void addData(Key v_key, ExcelMapData v_data)
        {
            if (v_key.keytype == KeyType.String)
            {
                addData(v_key.skey, v_data);
            }
            else if (v_key.keytype == KeyType.Integer)
            {
                addData(v_key.ikey, v_data);
            }
        }

        public void addData(int v_iKey, ExcelMapData v_data)
        {
            Debug.Assert(!m_iData.ContainsKey(v_iKey), string.Format("ExcelMapData addData 添加了重复键{0}", v_iKey));
            m_iData.Add(v_iKey, v_data);
        }

        public void addData(string v_sKey, ExcelMapData v_data)
        {
            Debug.Assert(!m_sData.ContainsKey(v_sKey), string.Format("ExcelMapData addData 添加了重复键{0}", v_sKey));
            m_sData.Add(v_sKey, v_data);
        }

        public void initAsTableData()
        {
            m_iData = new Dictionary<int, ExcelMapData>();
            m_sData = new Dictionary<string, ExcelMapData>();
            m_data = null;
        }

        public void initAsLeafeData(CellValue v_cellValue)
        {
            m_iData = null;
            m_sData = null;
            m_data = v_cellValue;
        }

        public bool IsEmpty()
        {
            return m_iData.Count == 0 && m_sData.Count == 0;
        }

        public string Note
        {
            get { return m_note; }
            set { m_note = value; }
        }

        public EExcelMapDataType Type
        {
            get { return m_type; }
            set { m_type = value; }
        }

        public bool IsArray
        {
            get { return (!IsLeafe) && m_iData.Count > 0; }
        }

        public CellValue LeafVal
        {
            get { return m_data; }
        }

        public List<KeyValue<ExcelMapData>> GetKeyValues()
        {
            Debug.Assert(!IsLeafe, "叶子节点不可访问KeyVals属性");
            List<KeyValue<ExcelMapData>> rtn = new List<KeyValue<ExcelMapData>>();
            int[] iKeys = m_iData.Keys.ToArray();
            Array.Sort(iKeys);
            string[] sKeys = m_sData.Keys.ToArray();
            int iLen = iKeys.Length;
            for (int i = 0; i < iLen; i++)
            {
                KeyValue<ExcelMapData> item = new KeyValue<ExcelMapData>();
                item.key.keytype = KeyType.Integer;
                item.key.ikey = iKeys[i];
                item.val = m_iData[iKeys[i]];
                rtn.Add(item);
            }
            int sLen = sKeys.Length;
            for (int i = 0; i < sLen; i++)
            {
                KeyValue<ExcelMapData> item = new KeyValue<ExcelMapData>();
                item.key.keytype = KeyType.String;
                item.key.skey = sKeys[i];
                item.val = m_sData[sKeys[i]];
                rtn.Add(item);
            }
            return rtn;
        }
    }
}
