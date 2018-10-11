using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelToLua
{
    static class LuaExporter
    {
        public static bool output_luatable(LuaMap v_root, ExportSheetBin v_sheetBin, int v_optCode)
        {
            try
            {
                getLuaTableConfig(v_root, v_sheetBin, v_optCode);
            }
            catch (Exception ex)
            {
                Debug.Error("生成lua表时发生了错误，错误信息是：\r\n"+ex.ToString());
                return false;
            }
            return true;
        }

        public static OptData getExportContent(ExcelToMapData v_data, int v_optCode)
        {
            OptData rtn = new OptData();
            StringBuilder sb = new StringBuilder();
            try
            {
                ExcelMapData val = v_data._data;
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
                sb.Append("return");
                val.outputValue(sb, 0);
            }
            catch (Exception ex)
            {
                rtn.errList.Add("导出基础数据时出现错误，错误信息为:\r\n" + ex.ToString());
            }
            rtn.content = sb.ToString();
            return rtn;
            //sb.Append(string.Format("\r\nreturn {0}", curIndex.className));
        }

        private static LuaMap _analysis(ExcelMapData v_mapData)
        {

        }





        private static LuaTable getLuaTableConfig(LuaMap v_root, ExportSheetBin v_sheetBin, int v_optCode)
        {
            if (v_sheetBin.indexData.pmKey == null)
                return null;
            LuaMap rtn = v_root;
            //rtn.init(true, ExportSheetBin.ROW_MAX_ELEMENT);
            //rtn.Single_value_hide_key = true;
            int[] colIndex = getColIndex(v_sheetBin, v_sheetBin.indexData.pmKey);
            if (colIndex == null) return null;
            int head_len = v_sheetBin.header.opt_head_len(v_optCode);
            for (int i = 0; i < v_sheetBin.data.Count; i++)
            {
                LuaTable cur = rtn;
                for (int j = 0; j < colIndex.Length; j++)
                {
                    int col = colIndex[j];
                    CellValue.Key the_key = v_sheetBin.data[i][col].toKey();
                    if (j == colIndex.Length - 1)
                    {
                        cur = get_or_create_index_map((LuaMap)cur, the_key, ELua_index_val_type.map,false);
                        v_sheetBin.header.get_row_data((LuaMap)cur, v_sheetBin.data[i], v_optCode);
                    }
                    else
                        cur = get_or_create_index_map((LuaMap)cur, the_key, ELua_index_val_type.map);
                    if (j == colIndex.Length - 1)
                    {
                        cur.Note = v_sheetBin.notes[i];
                    }
                    if (j == 0 && cur is LuaMap&& head_len <= 2)
                    {
                        ((LuaMap)cur).Single_value_hide_key = true;
                    }
                }
            }
            return rtn;
        }

        private static int[] getColIndex(ExportSheetBin v_sheetBin, string[] v_indexStr)
        {
            int[] colIndex = new int[v_indexStr.Length];
            for (int i = 0; i < v_indexStr.Length; i++)
            {
                colIndex[i] = v_sheetBin.header.getDataColIndex(v_indexStr[i]);
                Debug.Assert(colIndex[i] >= 0, string.Format("没有找到名为{0}的索引", v_indexStr[i]));
                if (v_sheetBin.header.get_header_Decorate(v_indexStr[i]).CanBeEmpty)
                {
                    Debug.Exception("导出集合索引时，名为{0}的索引竟然可以为空！！！", v_indexStr[i]);
                    return null;
                }

            }
            return colIndex;
        }


        private static LuaTable get_or_create_index_map(LuaMap v_cur, CellValue.Key v_key, ELua_index_val_type v_create_type,bool v_is_stretch = true)
        {
            switch (v_key.keytype)
            {
                case CellValue.KeyType.Integer:
                    if (!v_cur.cointainKey(v_key.ikey))
                        v_cur.addData(v_key.ikey, create_luavalue_by_type(v_create_type, v_is_stretch));
                    return (LuaTable)v_cur[v_key.ikey];
                case CellValue.KeyType.String:
                    if (!v_cur.cointainKey(v_key.skey))
                        v_cur.addData(v_key.skey, create_luavalue_by_type(v_create_type, v_is_stretch));
                    return (LuaTable)v_cur[v_key.skey];
                default:
                    return null;
            }
        }

        private static LuaValue create_luavalue_by_type(ELua_index_val_type v_create_type,bool v_is_stretch)
        {
            switch (v_create_type)
            {
                case ELua_index_val_type.arr:
                    LuaArray arr_rtn = new LuaArray();
                    arr_rtn.init(v_is_stretch, false, ExportSheetBin.ROW_MAX_ELEMENT);
                    return arr_rtn;
                case ELua_index_val_type.map:
                    LuaMap map_rtn = new LuaMap();
                    map_rtn.init(v_is_stretch, ExportSheetBin.ROW_MAX_ELEMENT);
                    return map_rtn;
                case ELua_index_val_type.integer:
                    return new LuaInteger();
                case ELua_index_val_type.@string:
                    return new LuaString();
                case ELua_index_val_type.number:
                    return new LuaMap();
                default:
                    return null;
            }
        }

    }
}
