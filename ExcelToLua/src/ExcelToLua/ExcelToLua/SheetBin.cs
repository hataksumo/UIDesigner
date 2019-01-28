using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EXCEL = Aspose.Cells;
using System.Xml;
using System.IO;

namespace ExcelToLua
{
    class _SheetHeader : ExcelHeader
    {
        protected ExcelHeaderDecorate _noteHeader = null;
        protected int m_headerCnt;
        protected HashSet<string> m_shildKeys;
        public _SheetHeader(EXCEL.Cells v_datas,string[] v_shildKeys, int v_offX=0,int v_offY=0)
        {
            m_headerCnt = 0;
            m_shildKeys = new HashSet<string>();
            foreach (var shieldKey in v_shildKeys)
                m_shildKeys.Add(shieldKey);
            for (int column = v_offX; column < 200; column++)
            {
                string englishName = v_datas[v_offY, column].StringValue;
                if (string.IsNullOrEmpty(englishName))
                    break;
                m_headerCnt++;
                ExcelHeaderDecorate data = new ExcelHeaderDecorate();
                data.init(v_datas[v_offY + 0, column].StringValue.Trim(),
                    v_datas[v_offY + 1, column].StringValue,
                    v_datas[v_offY + 2, column].StringValue,
                    column);
                data._colIndex = column;
                add_header(data);          
            }
        }

        public void add_header(ExcelHeaderDecorate v_header)
        {
            if (is_skip_header(v_header.FullName))
            {
                add_header(v_header,true);
            }
            else
            {
                add_header(v_header, false);
            }
            if(v_header.FullName == "#note")
                _noteHeader = v_header;
        }

        public bool is_skip_header(string v_fullName)
        {
            return m_shildKeys.Contains(v_fullName) || v_fullName == "#note";
        }

        public ExcelHeaderDecorate Note
        {
            get { return _noteHeader; }
        }

        public int HeaderLen
        {
            get { return m_headerCnt; }
        }

        public string say_note(int v_optCode)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < m_header_dct.Count; i++)
            {
                if (sb.Length != 0)
                    sb.Append(", ");
                if (m_header_dct[i].is_need_opt(v_optCode))
                    sb.Append(m_header_dct[i].say_note());
            }
            return sb.ToString();
        }

    }



    class ExportSheetBin
    {
        public const int ROW_MAX_ELEMENT = -1;
        public _SheetHeader header;
        public List<CellValue[]> data;
        public List<string> notes;
        public IndexSheetData indexData;
        public string sheetName;

        public ExportSheetBin()
        {
            data = new List<CellValue[]>();
            notes = new List<string>();
        }



        public bool init(EXCEL.Worksheet v_workSheet, IndexSheetData v_indexData, int v_rowBegin = 3)
        {
            indexData = v_indexData;
            sheetName = v_indexData.sheetName;
            EXCEL.Cells datas = v_workSheet.Cells;
            header = new _SheetHeader(datas, v_indexData.shildKeys, v_indexData.dataOffX, v_indexData.dataOffY);
            data = new List<CellValue[]>();
            for (int row = v_indexData.dataOffY + v_rowBegin; row < 100000; row++)
            {
                if (datas[row, 0].Value == null)
                {
                    break;
                }
                CellValue[] row_data = new CellValue[header.HeaderLen];
                for (int colidx = 0; colidx < header.HeaderLen; colidx++)
                {
                    int col = colidx + v_indexData.dataOffX;
                    try
                    {
                        row_data[colidx] = header.checkData(col, datas[row, colidx]);
                    }
                    catch (Exception ex)
                    {
                        Debug.Error("在导出表\"{0}\" sheet \"{1}\" 单元格{2}{3}时发生了错误，单元格内容为{4}，错误信息如下:\r\n{5}", 
                            v_workSheet.Workbook.FileName, v_indexData.sheetName, Tools.getColName(col), row + 1, datas[row, colidx].Value, ex.ToString());
                        return false;
                    }   
                }
                //添加注释数据
                if (header.Note != null)
                {
                    CellValue noteCell = row_data[header.Note.Col];
                    if (noteCell is MissVal)
                        notes.Add(null);
                    else
                        notes.Add(noteCell.ToString());
                }
                else
                {
                    notes.Add(null);
                }
                data.Add(row_data);
            }
            return true;
        }

        //把数据装载进中间结构
        public bool getExportMap(ExcelMapData v_root,int v_optCode)
        {
            if (indexData.pmKey == null)
                return false;
            ExcelMapData rtn = v_root;
            //rtn.init(true, ExportSheetBin.ROW_MAX_ELEMENT);
            //rtn.Single_value_hide_key = true;
            //主键索引
            int[] colIndex = getColIndex();
            if (colIndex == null) return false;
            int head_len = header.opt_head_len(v_optCode);
            for (int i = 0; i < data.Count; i++)
            {
                ExcelMapData cur = rtn;
                for (int j = 0; j < colIndex.Length; j++)
                {
                    try
                    {
                        int col = colIndex[j];
                        Key the_key = data[i][col].ToKey();
                        if (j == colIndex.Length - 1)
                        {
                            cur = get_or_create_index_map(cur, the_key);
                            cur.Type = EExcelMapDataType.rowData;
                            //把一行的数据装载进来
                            header.get_row_data(cur, data[i], v_optCode);
                        }
                        else
                        {
                            cur = get_or_create_index_map(cur, the_key);
                            cur.Type = EExcelMapDataType.indexMap;
                        }
                        if (j == colIndex.Length - 1)
                        {
                            cur.Note = notes[i];
                        }
                    }
                    catch (Exception ex)
                    {
                        Debug.Exception("在装载第{0}行{1}列时发生错误，错误信息是{2}", i+1, Tools.getColName(colIndex[j]), ex.ToString());
                    }
                }
            }
            return true;
        }

        private ExcelMapData get_or_create_index_map(ExcelMapData v_cur, Key v_key)
        {
            ExcelMapData rtn = v_cur.getData(v_key);
            if (rtn != null)
                return rtn;
            switch (v_key.keytype)
            {
                case KeyType.Integer:
                    rtn = new ExcelMapData();
                    rtn.initAsTableData();
                    v_cur.addData(v_key.ikey, rtn);
                    break;
                case KeyType.String:
                    rtn = new ExcelMapData();
                    rtn.initAsTableData();
                    v_cur.addData(v_key.skey, rtn);
                    break;
                default:
                    return null;
            }
            Debug.Assert(rtn != null, string.Format("{0} 这个键暂时不支持", v_key.keytype));
            return rtn;
        }

        private int[] getColIndex()
        {
            string[] pmKey = indexData.pmKey;
            int[] colIndex = new int[pmKey.Length];
            for (int i = 0; i < pmKey.Length; i++)
            {
                colIndex[i] = header.getDataColIndex(pmKey[i]);
                Debug.Assert(colIndex[i] >= 0, string.Format("没有找到名为{0}的索引", pmKey[i]));
                if (header.get_header_Decorate(pmKey[i]).CanBeEmpty)
                {
                    Debug.Exception("导出集合索引时，名为{0}的索引竟然可以为空！！！", pmKey[i]);
                    return null;
                }
            }
            return colIndex;
        }



    }

    

    


}
