using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelToLua
{
    static class LuaExporter
    {
        public static OptData getExportContent(ExcelToMapData v_data, int v_optCode)
        {
            OptData rtn = new OptData();
            StringBuilder sb = new StringBuilder();
            try
            {
                LuaMap root = GetLuaTable(v_data._data);
                sb.Append("--[[\r\n");
                v_data.opt_note(sb, "note");
                sb.Append("\r\n");
                sb.Append("colums:\r\n");
                v_data.opt_colum_notes(sb);
                sb.Append("\r\n");
                sb.Append("primary key:\r\n");
                for (int i = 0; i < v_data.sheet_bins.Count; i++)
                {
                    sb.AppendFormat("#{0} [{1}]: ",i, v_data.sheet_bins[i].sheetName);
                    sb.Append(string.Join(",", v_data.sheet_bins[i].indexData.pmKey));
                    sb.Append("\r\n");
                }
                sb.Append("]]\r\n");

                if (v_data.IsDataPersistence)
                {
                    sb.AppendFormat("if ddt[v_data.className] ~= nil then\r\n\treturn {0}\r\nend\r\n", v_data.className);
                    sb.AppendFormat("local {0} = ", v_data.className);
                    root.outputValue(sb, 0);
                    sb.AppendLine();
                    sb.AppendFormat("ddt[v_data.className] = {0}\r\n", v_data.className);
                    sb.AppendFormat("SetLooseReadonly({0})\r\n", v_data.className);
                    sb.AppendFormat("return {0}", v_data.className);
                }
                else
                {
                    sb.Append("return");
                    root.outputValue(sb, 0);
                }   
            }
            catch (Exception ex)
            {
                rtn.errList.Add("导出基础数据时出现错误，错误信息为:\r\n" + ex.ToString());
            }
            rtn.content = sb.ToString();
            return rtn;
            //sb.Append(string.Format("\r\nreturn {0}", curIndex.className));
        }

        private static void _translate(ExcelMapData v_src, LuaTable v_dst)
        {
            List<KeyValue<ExcelMapData>> childDatas = v_src.GetKeyValues();
            for (int i = 0; i < childDatas.Count; i++)
            {
                KeyValue<ExcelMapData> child = childDatas[i];
                Key key = child.key;
                ExcelMapData data = child.val;
                switch (data.Type)
                {
                    case EExcelMapDataType.indexMap:
                        LuaMap indexMap = new LuaMap();
                        indexMap.init(true, ExportSheetBin.ROW_MAX_ELEMENT);
                        v_dst.addData(key, indexMap);
                        _translate(data, indexMap);
                        break;
                    case EExcelMapDataType.rowData:
                        LuaMap rowData = new LuaMap();
                        rowData.init(false, ExportSheetBin.ROW_MAX_ELEMENT);
                        v_dst.addData(key, rowData);
                        _translate(data, rowData);
                        break;
                    case EExcelMapDataType.cellTable:
                        LuaTable cellTable;
                        if (data.IsArray)
                        {
                            cellTable = new LuaArray();
                            ((LuaArray)cellTable).init(false, true, ExportSheetBin.ROW_MAX_ELEMENT);
                        }
                        else
                        {
                            cellTable = new LuaMap();
                            ((LuaMap)cellTable).init(false, ExportSheetBin.ROW_MAX_ELEMENT);
                        }
                        v_dst.addData(key, cellTable);
                        _translate(data, cellTable);
                        break;
                    case EExcelMapDataType.cellData:
                        LuaValue leafVal = data.LeafVal.GetLuaValue();
                        v_dst.addData(key, leafVal);
                        break;
                }
            }
        }

        public static LuaMap GetLuaTable(ExcelMapData v_root)
        {
            LuaMap luaRoot = new LuaMap();
            luaRoot.init(true, ExportSheetBin.ROW_MAX_ELEMENT);
            _translate(v_root, luaRoot);
            return luaRoot;
        }

    }
}
