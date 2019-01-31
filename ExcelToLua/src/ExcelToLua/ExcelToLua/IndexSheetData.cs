using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Excel = Aspose.Cells;

namespace ExcelToLua
{
    class IndexSheetData
    {
        public string sheetName;
        public int dataOffX;
        public int dataOffY;
        public string optCliFileName;
        public ELanguage optCliLanguage;
        public string optSrvFileName;
        public ELanguage optSrvLanguage;
        public bool isOpt;
        public bool isDataPersistence;
        public string[] pmKey;
        public string[] shildKeys;
        public string note;

        public void init(Excel.Cells v_data, int v_row, SheetHeader v_header)
        {
            sheetName = v_header.getData(v_data, v_row, "sheet名") as string;
            //optFileName = v_header.getData(v_data, v_row, "导出文件") as string;
            dataOffX = Convert.ToInt32(v_header.getData(v_data, v_row, "数据偏移X"));
            dataOffY = Convert.ToInt32(v_header.getData(v_data, v_row, "数据偏移Y"));
            optCliFileName = v_header.getData(v_data, v_row, "导出客户端文件") as string;
            optCliLanguage = getLuaguage(optCliFileName);
            optSrvFileName = v_header.getData(v_data, v_row, "导出服务端文件") as string;
            optSrvLanguage = getLuaguage(optSrvFileName);
            pmKey = _getPmKey(v_header.getData(v_data, v_row, "主键") as string);
            string shieldColNames = v_header.getData(v_data, v_row, "屏蔽字段") as string;
            if (string.IsNullOrEmpty(shieldColNames))
                shildKeys = new string[0];
            else
                shildKeys = (v_header.getData(v_data, v_row, "屏蔽字段") as string).Split(',', '，');
            Object optCols = v_header.getData(v_data, v_row, "是否导出");
            if (optCols == null) optCols = false;
            if (optCols is bool)
                isOpt = (bool)optCols;
            else
                isOpt = optCols.ToString().Equals("TRUE");
            note = v_header.getData(v_data, v_row, "表注释") as string;
            Object dataPersistence = v_header.getData(v_data, v_row, "是否导出");
            if (dataPersistence == null) dataPersistence = false;
            if (dataPersistence is bool)
                isDataPersistence = (bool)dataPersistence;
            else
                isDataPersistence = optCols.ToString().Equals("TRUE");
        }

        private ELanguage getLuaguage(string v_fileName)
        {
            if (string.IsNullOrWhiteSpace(v_fileName))
            {
                return ELanguage.none;
            }
            string suffixName = System.IO.Path.GetExtension(v_fileName);
            if (suffixName == ".lua")
                return ELanguage.lua;
            if (suffixName == ".xml")
                return ELanguage.xml;
            if (suffixName == ".json")
                return ELanguage.json;
            //Debug.Warning("未知语言文件{0}", v_fileName);
            return ELanguage.none;
        }

        private string[] _getPmKey(string v_symble)
        {
            if (string.IsNullOrWhiteSpace(v_symble))
                Debug.Exception("表必须有索引");
            return v_symble.Split(',', '，');
        }

        private string[][] _getConstraints(string v_symble)
        {
            string[][] rtn = null;
            string[] s1 = v_symble.Split(';');
            int num = string.IsNullOrWhiteSpace(s1.Last<string>()) ? s1.Length - 1 : s1.Length;
            rtn = new string[num][];
            for (int i = 0; i < num; i++)
            {
                if (string.IsNullOrEmpty(s1[i]))
                {
                    Debug.Exception("索引串 {0} 有错", v_symble);
                    return null;
                }
                string[] s2 = s1[i].Split(',');
                int num2 = string.IsNullOrWhiteSpace(s2.Last<string>()) ? s2.Length - 1 : s2.Length;
                rtn[i] = new string[num2];
                for (int j = 0; j < num2; j++)
                {
                    rtn[i][j] = s2[j];
                }
            }
            return rtn;
        }

        public ELanguage getOptLanguage(int v_opt)
        {
            ELanguage[] optLanguages = { optCliLanguage, optSrvLanguage, optCliLanguage };
            return optLanguages[v_opt];
        }
    }
}
