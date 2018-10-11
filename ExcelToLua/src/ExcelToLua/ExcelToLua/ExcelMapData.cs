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
        }

        public bool isLeafe
        {
            get { return m_data != null; }
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
    }
}
