using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EXCEL = Aspose.Cells;

namespace ExcelToLua
{
    class ExcelHeader : ComplexExcelHeaderNode
    {
        protected List<ExcelHeaderDecorate> m_header_dct;
        protected Dictionary<string, int> m_header_dct_idx;

        public ExcelHeader()
        {
            m_header_dct = new List<ExcelHeaderDecorate>();
            m_header_dct_idx = new Dictionary<string, int>();
        }

        public void add_header(ExcelHeaderDecorate v_header,bool v_isSkip = false)
        {
            if (m_header_dct_idx.ContainsKey(v_header.FullName))
            {
                Debug.Exception("出现了重复的表头——{0}", v_header.FullName);
                return;
            }
            m_header_dct.Add(v_header);
            m_header_dct_idx.Add(v_header.FullName, m_header_dct.Count-1);
            ComplexExcelHeaderNode loc = _get_header_Decorate(v_header.FullName, true);
            loc.LeafDataIdx = m_header_dct.Count - 1;
            loc.IsSkip = v_isSkip;
        }

        public ExcelHeaderDecorate get_header_Decorate(string v_full_header)
        {
            var cehn = _get_header_Decorate(v_full_header, false);
            return m_header_dct[cehn.LeafDataIdx];
        }


        protected ComplexExcelHeaderNode _get_header_Decorate(string v_full_header,bool v_is_create = false)
        {
            string headerStr = v_full_header + '$';
            int state = 0;//0表示正常状态,1表示数组状态,2表示]后的状态
            ComplexExcelHeaderNode loc = this;
            StringBuilder cursb = new StringBuilder();
            for (int i = 0; i < headerStr.Length; i++)
            {
                char curcha = headerStr[i];
                switch (state)
                {
                    case 0:
                        switch (curcha)
                        {
                            case '[':
                                loc = loc.get_node(cursb.ToString(), v_is_create);
                                loc.debug_name = cursb.ToString();
                                cursb.Clear();
                                state = 1;
                                break;
                            case '.':
                                loc = loc.get_node(cursb.ToString(), v_is_create);
                                loc.debug_name = cursb.ToString();
                                cursb.Clear();
                                break;
                            case '$':
                                loc = loc.get_node(cursb.ToString(), v_is_create);
                                loc.debug_name = cursb.ToString();
                                cursb.Clear();
                                break;
                            default:
                                cursb.Append(curcha);
                                break;
                        }
                        break;
                    case 1:
                        if (char.IsDigit(curcha))
                        {
                            cursb.Append(curcha);
                        }
                        else if (curcha == ']')
                        {
                            int index = Convert.ToInt32(cursb.ToString());
                            loc = loc.get_node(index, v_is_create);
                            loc.debug_name = cursb.ToString();
                            cursb.Clear();
                            state = 2;
                        }
                        else
                        {
                            Debug.Exception("{0}中，在遍历到{1}位置时，发现{2}不是数字", v_full_header, i, curcha);
                            return null;
                        }
                        break;
                    case 2:
                        switch (curcha)
                        {
                            case '.':
                                state = 0;
                                break;
                            case '[':
                                state = 1;
                                break;
                            case '$':  
                                break;
                            default:
                                Debug.Exception("表头{0}语法错误", v_full_header);
                                break;
                        }
                        break;
                }
            }
            return loc;
        }
        public ExcelHeaderDecorate getHeaderDecorate(string v_headerName)
        {
            if (m_header_dct_idx.ContainsKey(v_headerName))
            {
                return m_header_dct[m_header_dct_idx[v_headerName]];
            }
            Debug.Exception("没有找到名为{0}的字段", v_headerName);
            return null;
        }

        public int getDataColIndex(string v_headerName)
        {
            if (m_header_dct_idx.ContainsKey(v_headerName))
            {
                return m_header_dct[m_header_dct_idx[v_headerName]].Col;
            }
            Debug.Exception("没有找到名为{0}的字段", v_headerName);
            return -1;
        }

        public string getColType(string v_headerName)
        {
            if (m_header_dct_idx.ContainsKey(v_headerName))
            {
                return m_header_dct[m_header_dct_idx[v_headerName]].Type;
            }
            Debug.Exception("没有找到名为{0}的字段", v_headerName);
            return null;
        }


        public CellValue checkData(int v_col, EXCEL.Cell v_cellData)
        {
            ExcelHeaderDecorate ehd = m_header_dct[v_col];
            string type = ehd.Type;
            ECellDataStructure ds = ehd.DataStructure;
            CellValue val = null;
            object data = v_cellData.Value;
            bool success = false;

            if (data == null || string.IsNullOrEmpty(data.ToString()))
            {
                if (!ehd.CanBeEmpty)
                    Debug.Exception("不可为空");
                return new MissVal();
            }
            switch (ds)
            {
                case ECellDataStructure.single:
                    val = CellValue.CheckCellVal(ehd);
                    success = val.Init(v_cellData);
                    break;
                case ECellDataStructure.array:
                    val = new ListVal(type);
                    val.IsStretch = ehd.IsStretch;
                    success = val.Init(v_cellData);   
                    break;
            }
            if (success)
            {
                val.IsStretch = ehd.IsStretch;
                return val;
            }
            else
            {
                val = new MissVal();
                success = val.Init("[nil]");
                Debug.Exception("没有找到名为{0}类型为{1}的ID", v_cellData.Value, type);
                return null;
            }
        }

        private struct Serchdata
        {
            public ComplexExcelHeaderNode node;
            public ExcelMapData curmap;
            public Serchdata(ComplexExcelHeaderNode v_node, ExcelMapData v_map)
            {
                node = v_node;
                curmap = v_map;
            }
        }


        private void _get_row_data(Serchdata v_st, CellValue[] v_row_data,int v_optCode)
        {
            ExcelMapData curmap = v_st.curmap;
            ComplexExcelHeaderNode parrent = v_st.node;
            List<KeyValue<ComplexExcelHeaderNode>> keyValSet = v_st.node.getKeyValueSet();
            for (int i = 0; i < keyValSet.Count; i++)
            {
                Key the_key = keyValSet[i].key;
                ComplexExcelHeaderNode node = parrent.get_node(the_key);


                if (node.IsSkip) continue;
                if (node.IsLeaf)
                {
                    ExcelHeaderDecorate ehd = m_header_dct[node.LeafDataIdx];
                    if (!ehd.is_need_opt(v_optCode))
                        continue;
                    CellValue celldata = v_row_data[node.LeafDataIdx];
                    if (!celldata._isMiss)
                    {
                        ExcelMapData leafData = new ExcelMapData();
                        leafData.initAsLeafeData(celldata);
                        leafData.Type = EExcelMapDataType.cellData;
                        curmap.addData(the_key, leafData);
                    }
                }
                else
                {
                    ExcelMapData map_next = new ExcelMapData();
                    map_next.initAsTableData();
                    map_next.Type = EExcelMapDataType.cellTable;
                    Serchdata sdnew = new Serchdata(node, map_next);
                    _get_row_data(sdnew, v_row_data, v_optCode);
                    if (!map_next.IsEmpty())
                        curmap.addData(the_key, map_next);
                }

            }

        }


        public ExcelMapData get_row_data(ExcelMapData src_map,CellValue[] v_row_data,int v_optCode)
        {
            ExcelMapData rtn;
            if (src_map == null)
            {
                rtn = new ExcelMapData();
            }
            else
            {
                rtn = src_map;
            }     
            Serchdata serch_root = new Serchdata(this, rtn);
            _get_row_data(serch_root, v_row_data, v_optCode);
            return rtn;
        }

        public int opt_head_len(int v_optCode)
        {
            int len = 0;
            for (int i = 0; i < m_header_dct.Count; i++)
            {
                if (m_header_dct[i].is_need_opt(v_optCode))
                    len++;
            }
            return len;
        }

        public ExcelHeaderDecorate[] HeaderDecorates
        {
            get { return m_header_dct.ToArray(); }
        }


    }

    /// <summary>
    /// 这个类仅仅负责记录都表头的结构，查询字段对应的位置
    /// </summary>
    class ComplexExcelHeaderNode
    {
        public Dictionary<string, ComplexExcelHeaderNode> m_sdata;
        public Dictionary<int, ComplexExcelHeaderNode> m_idata;
        protected int m_col_idx;
        public string debug_name;
        protected bool m_skip;
        public bool IsSkip
        {
            get { return m_skip; }
            set { m_skip = value; }
        }




        //public int Layer;
        public ComplexExcelHeaderNode()
        {
            m_sdata = new Dictionary<string, ComplexExcelHeaderNode>();
            m_idata = new Dictionary<int, ComplexExcelHeaderNode>();
            m_col_idx = -1;
            debug_name = "";
            m_skip = false;
        }

        public List<KeyValue<ComplexExcelHeaderNode>> getKeyValueSet()
        {
            List<KeyValue<ComplexExcelHeaderNode>> rtn = new List<KeyValue<ComplexExcelHeaderNode>>();
            int[] iKeys = m_idata.Keys.ToArray();
            Array.Sort(iKeys);
            int iLen = iKeys.Length;
            for (int i = 0; i < iLen; i++)
            {
                KeyValue<ComplexExcelHeaderNode> iItem = new KeyValue<ComplexExcelHeaderNode>();
                iItem.init(iKeys[i], m_idata[iKeys[i]]);
                rtn.Add(iItem);
            }
            string[] sKeys = m_sdata.Keys.ToArray();
            //Array.Sort(sKeys);
            int sLen = sKeys.Length;
            for (int i = 0; i < sLen; i++)
            {
                KeyValue<ComplexExcelHeaderNode> sItem = new KeyValue<ComplexExcelHeaderNode>();
                sItem.init(sKeys[i], m_sdata[sKeys[i]]);
                rtn.Add(sItem);
            }
            return rtn;
        }

        public ComplexExcelHeaderNode get_node(Key v_key, bool v_bCreate = false)
        {
            if (v_key.keytype == KeyType.String)
            {
                return get_node(v_key.skey, v_bCreate);
            }
            else if (v_key.keytype == KeyType.Integer)
            {
                return get_node(v_key.ikey, v_bCreate);
            }
            Debug.Error("ComplexExcelHeaderNode:get_node 未知key类型");
            return null;
        }


        public ComplexExcelHeaderNode get_node(string v_key, bool v_bCreate = false)
        {
            if (!m_sdata.ContainsKey(v_key))
            {
                if (v_bCreate)
                {
                    m_sdata.Add(v_key, new ComplexExcelHeaderNode());
                }
                else
                {
                    return null;
                }            
            }
            return m_sdata[v_key];
        }

        public ComplexExcelHeaderNode get_node(int v_key, bool v_bCreate = false)
        {
            if (!m_idata.ContainsKey(v_key))
            {
                if (v_bCreate)
                {
                    m_idata.Add(v_key, new ComplexExcelHeaderNode());
                }
                else
                {
                    return null;
                }
            }
            return m_idata[v_key];
        }

        public bool IsLeaf
        {
            get {
                return m_sdata.Count == 0 && m_idata.Count == 0;
            }
        }

        public int LeafDataIdx
        {
            get { return m_col_idx; }
            set { m_col_idx = value; }
        }
    }




    class ExcelHeaderDecorate
    {
        public string FullName { get { return _fullName; } }
        public string Type { get { return _type; } }
        public string Chinese { get { return _chinese; } }
        public int OptCode { get { return _optCode; } }
        public bool IsOptServer { get { return (_optCode | 2) > 0; } }
        public bool IsOptClient { get { return (_optCode | 1) > 0; } }
        public bool CanBeEmpty { get { return _canBeEmpty; } }
        public bool IsStretch { get { return _isStretch; } }
        public ECellDataStructure DataStructure { get { return _dataStructure; } }
        public int _colIndex;

        protected string _fullName;
        protected string _type;
        protected string _chinese;
        protected string _constraint;
        protected byte _optCode;
        protected bool _canBeEmpty;
        protected bool _isStretch;
        protected ECellDataStructure _dataStructure;

        public ExcelHeaderDecorate()
        {
            _fullName = "default";
            _type = "default";
            _chinese = "未命名";
            _optCode = 0;
            _canBeEmpty = false;
            _dataStructure = ECellDataStructure.single;
            _constraint = null;
            _isStretch = false;
        }

        public bool init(string v_sName, string v_sType, string v_sChinese,int v_col)
        {
            _fullName = v_sName;
            _chinese = v_sChinese;
            if (string.IsNullOrEmpty(v_sType))
            {
                Debug.Exception("{0}这一列没有写类型名", v_sName);
                return false;
            }
            string[] types = v_sType.Split(':');
            string varType = types[0];
            string[] cons = null;
            if (types.Length == 2 && !string.IsNullOrEmpty(types[1]))
                cons = types[1].Split('|');
            _type = varType;
            if (cons != null && !string.IsNullOrEmpty(cons[0]))
            {
                string control = cons[0];
                HashSet<char> conSet = new HashSet<char>();
                foreach (char c in control)
                    conSet.Add(c);
                if (conSet.Contains('a'))
                    _dataStructure = ECellDataStructure.array;
                else
                    _dataStructure = ECellDataStructure.single;
                if (conSet.Contains('<'))
                    _optCode |= 1;
                if (conSet.Contains('>'))
                    _optCode |= 2;
                if (conSet.Contains('e'))
                    _canBeEmpty = true;
                if (conSet.Contains('s'))
                    _isStretch = true;
            }
            _colIndex = v_col;
            return true;
        }

        public void set_col_index(int v_val)
        {
            _colIndex = v_val;
        }

        public int Col { get { return _colIndex; } }

        public bool is_need_opt(int v_optCode)
        {
            if (FullName == "#note" || FullName.Length > 4 && FullName.Substring(4) == "fzl_")
                return false;
            return (OptCode & v_optCode) > 0;
        }

        public string say_note()
        {
            return string.Format("{{{0},{1}}}", FullName, Chinese);
        }

    }


}
