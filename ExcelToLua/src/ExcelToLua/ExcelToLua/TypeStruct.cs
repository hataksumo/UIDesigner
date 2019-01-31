using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelToLua
{
    class OptData
    {
        public string content;
        //public XmlDocument doc;
        public List<string> errList = new List<string>();
        public string getErrInfo()
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < errList.Count; i++)
            {
                sb.Append("#ERR" + (i + 1) + ":\r\n");
                sb.Append(errList[i]);
            }
            return sb.ToString();
        }



    }

    public enum KeyType
    { Integer, String, Nil }

    struct Key
    {
        public KeyType keytype;
        public int ikey;
        public string skey;

        public override string ToString()
        {
            switch (keytype)
            {
                case KeyType.Integer:
                    return ikey.ToString();
                case KeyType.String:
                    return skey.ToString();
                default:
                    return "nil";
            }
        }
    }

    struct KeyValue<T>
    {
        public Key key;
        public T val;
        public void init(int v_key, T v_val)
        {
            key.keytype = KeyType.Integer;
            key.ikey = v_key;
            val = v_val;
        }

        public void init(string v_key, T v_val)
        {
            key.keytype = KeyType.String;
            key.skey = v_key;
            val = v_val;
        }

        public override string ToString()
        {
            return "key : " + key + ", val : " + val;
        }
    }






    struct ExcelToMapData
    {
        public ExcelMapData _data;
        public List<ExportSheetBin> sheet_bins;
        public string className;
        private readonly bool _isDataPersistence;
        public ExcelToMapData(ExcelMapData v_luaMap,bool v_isDataPersistence,string v_className)
        {
            _data = v_luaMap;
            _isDataPersistence = v_isDataPersistence;
            className = v_className;
            sheet_bins = new List<ExportSheetBin>();
        }

        public void add_sheetbin(ExportSheetBin v_sheetbin)
        {
            sheet_bins.Add(v_sheetbin);
        }

        public bool IsDataPersistence
        {
            get { return _isDataPersistence; }
        }

        public void opt_note(StringBuilder v_sb,string v_title)
        {
            for (int i = 0; i < sheet_bins.Count; i++)
            {
                if (!string.IsNullOrWhiteSpace(sheet_bins[i].indexData.note))
                {
                    v_sb.AppendFormat("--{0}:\r\n", v_title);
                    v_sb.Append(sheet_bins[i].indexData.note);
                    return;
                }
            }
        }

        public void opt_colum_notes(StringBuilder v_sb)
        {
            Dictionary<string, string> headers = new Dictionary<string, string>();
            for (int i = 0; i < sheet_bins.Count; i++)
            {
                ExportSheetBin esb = sheet_bins[i];
                ExcelHeaderDecorate[] hds = esb.header.HeaderDecorates;
                for (int j = 0; j < hds.Length; j++)
                {
                    if (!headers.ContainsKey(hds[j].FullName))
                        headers.Add(hds[j].FullName, hds[j].Chinese);
                }
            }
            StringBuilder cursb = new StringBuilder();
            foreach (var data in headers)
            {
                if(cursb.Length>0)
                {
                    cursb.Append(" ,");
                }
                cursb.AppendFormat("{{{0},{1}}}", data.Key, data.Value);
            }
            v_sb.Append(cursb);
        }

        //public ELanguage Language
        //{
        //    get { return sheet_bins[0]}
        //}

    }
}
