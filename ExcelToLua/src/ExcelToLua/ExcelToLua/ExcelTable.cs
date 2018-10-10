using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Excel = Aspose.Cells;

namespace ExcelToLua
{
    class SheetHeader
    {
        protected List<string> _header = new List<string>();
        protected List<string> _headerType = new List<string>();
        protected Dictionary<string, int> _headerIndex = new Dictionary<string, int>();
        protected Excel.Worksheet _workSheet;
        protected int _pmIndex;
        protected Dictionary<string, int> _tableIndex;
        protected int _rowBegin = 1;
        protected int _dataRows = 0;
        public void readHeader(Excel.Worksheet v_sheet, int v_headerRow = 0)
        {
            _workSheet = v_sheet;
            Excel.Cells data = _workSheet.Cells;
            for (int i = 0; i < 100; i++)
            {
                if (data[v_headerRow, i].Value == null)
                    break;
                _headerIndex.Add(data[v_headerRow, i].StringValue, _header.Count);
                _header.Add(data[v_headerRow, i].StringValue);
            }
        }

        public int this[string v_name]
        {
            get
            {
                if (_headerIndex.ContainsKey(v_name))
                    return _headerIndex[v_name];
                else
                    return -1;
            }
        }

        public void readDataWithIndex(string v_pmIndex, int v_dataRowBegin = 1)
        {
            _rowBegin = v_dataRowBegin;
            Excel.Cells data = _workSheet.Cells;
            _pmIndex = this[v_pmIndex];
            if (_pmIndex == -1)
            {
                Debug.Exception("找不到主键{0}", v_pmIndex);
                return;
            }
            _tableIndex = new Dictionary<string, int>();
            for (int i = _rowBegin; i < 100000; i++)
            {
                if (data[i, 0].Value == null)
                    break;
                _tableIndex.Add(data[i, _pmIndex].StringValue, i);
                _dataRows++;
            }
        }

        public object getData(Excel.Cells v_data, int v_row, string v_title)
        {
            int col = this[v_title];
            if (col == -1)
                return null;
            return v_data[v_row, col].Value;
        }
        public bool setData(Excel.Cells v_data, int v_row, string v_title,object v_val)
        {
            int col = this[v_title];
            if (col == -1)
                return false;
            v_data[v_row, col].Value = v_val;
            return true;
        }



        public int getPMRow(string v_pmVal)
        {
            if (!_tableIndex.ContainsKey(v_pmVal))
                return -1;
            return _tableIndex[v_pmVal];
        }

        public Excel.Cells data
        {
            get { return _workSheet.Cells; }
        }

        public int RowBegin
        {
            get { return _rowBegin; }
        }

        public int DataRows
        {
            get { return _dataRows; }
        }

        public int PmIndex
        {
            get { return _pmIndex; }
        }
    }

    static class ExcelTableConvert
    {
        public static void convert(SheetHeader v_et1, SheetHeader v_et2,string[] v_concernCols1, string[] v_concernCols2)
        {
            Excel.Cells data1 = v_et1.data;
            Excel.Cells data2 = v_et2.data;
            int pmIdx1 = v_et1.PmIndex;
            int concernColLen = v_concernCols1.Length;
            int[] sheet1_concernCols = new int[concernColLen];
            int[] sheet2_concernCols = new int[concernColLen];

            for (int i = 0; i < concernColLen; i++)
            {
                sheet1_concernCols[i] = v_et1[v_concernCols1[i]];
                if (sheet1_concernCols[i] == -1)
                {
                    Debug.Exception("表1没有设置关心列{0}", v_concernCols1[i]);
                    return;
                }
                sheet2_concernCols[i] = v_et2[v_concernCols2[i]];
                if (sheet2_concernCols[i] == -1)
                {
                    Debug.Exception("表2没有设置关心列{0}", v_concernCols2[i]);
                    return;
                }
            }


            for (int i = 0; i < v_et1.DataRows; i++)
            {
                string pmVal = data1[i + v_et1.RowBegin, pmIdx1].StringValue;
                int sheet2Row = v_et2.getPMRow(pmVal);
                if (sheet2Row == -1)
                {
                    Debug.Exception("表2中没找到主键{0}", pmVal);
                    return;
                }

                for (int j = 0; j < concernColLen; j++)
                {
                    var cellVal = data1[i + v_et1.RowBegin, sheet1_concernCols[j]].Value;
                    if (cellVal != null && cellVal.ToString() != "#N/A")
                    {
                        data2[sheet2Row , sheet2_concernCols[j]].Value = cellVal;
                    }
                }

            }
        } 
    }

}
