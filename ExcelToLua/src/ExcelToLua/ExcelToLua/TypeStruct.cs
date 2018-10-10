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
    }

    struct ExcelToMapData
    {
        public LuaMap lua_data;
        public List<ExportSheetBin> sheet_bins;
        public ExcelToMapData(LuaMap v_luaMap)
        {
            lua_data = v_luaMap;
            sheet_bins = new List<ExportSheetBin>();
        }

        public void add_sheetbin(ExportSheetBin v_sheetbin)
        {
            sheet_bins.Add(v_sheetbin);
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

    }
}
