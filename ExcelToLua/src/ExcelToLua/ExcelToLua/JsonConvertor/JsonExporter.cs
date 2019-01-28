using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelToLua
{
    static class JsonExporter
    {
        public static OptData getExportContent(ExcelToMapData v_data, int v_optCode)
        {
            OptData rtn = new OptData();
            StringBuilder sb = new StringBuilder();
            try
            {
                JsonTable root = GetJsonTable(v_data._data);
                root.outputValue(sb, 0);
            }
            catch (Exception ex)
            {
                rtn.errList.Add("导出基础数据时出现错误，错误信息为:\r\n" + ex.ToString());
            }
            rtn.content = sb.ToString();
            return rtn;
        }

        private static void _translate(ExcelMapData v_src, JsonTable v_dst)
        {
            List<KeyValue<ExcelMapData>> childDatas = v_src.GetKeyValues();
            for (int i = 0; i < childDatas.Count; i++)
            {
                KeyValue<ExcelMapData> child = childDatas[i];
                Key key = child.key;
                ExcelMapData data = child.val;
                try
                {
                    switch (data.Type)
                    {
                        case EExcelMapDataType.indexMap:
                            JsonTable indexMap = null;
                            if (data.IsArray)
                            {
                                indexMap = new JsonArray();
                                ((JsonArray)indexMap).init(true, ExportSheetBin.ROW_MAX_ELEMENT);
                            }
                            else
                            {
                                indexMap = new JsonMap();
                                ((JsonMap)indexMap).init(true, ExportSheetBin.ROW_MAX_ELEMENT);
                            }
                            v_dst.addData(key, indexMap);
                            _translate(data, indexMap);
                            break;
                        case EExcelMapDataType.rowData:
                            JsonMap rowData = new JsonMap();
                            rowData.init(false, ExportSheetBin.ROW_MAX_ELEMENT);
                            v_dst.addData(key, rowData);
                            _translate(data, rowData);
                            break;
                        case EExcelMapDataType.cellTable:
                            JsonTable cellTable;
                            if (data.IsArray)
                            {
                                cellTable = new JsonArray();
                                ((JsonArray)cellTable).init(false, ExportSheetBin.ROW_MAX_ELEMENT);
                            }
                            else
                            {
                                cellTable = new JsonMap();
                                ((JsonMap)cellTable).init(false, ExportSheetBin.ROW_MAX_ELEMENT);
                            }
                            v_dst.addData(key, cellTable);
                            _translate(data, cellTable);
                            break;
                        case EExcelMapDataType.cellData:
                            JsonValue leafVal = data.LeafVal.GetJsonValue();
                            v_dst.addData(key, leafVal);
                            break;
                    }
                }
                catch (Exception ex)
                {
                    Debug.Exception("在添加{0}时发生错误，错误信息是:\r\n{1}", key,ex.ToString());
                }

            }
                
        }


        public static JsonTable GetJsonTable(ExcelMapData v_root)
        {
            JsonTable luaRoot = null;
            if (v_root.IsArray)
            {
                luaRoot = new JsonArray();
                ((JsonArray)luaRoot).init(true, ExportSheetBin.ROW_MAX_ELEMENT);
            }
            else
            {
                luaRoot = new JsonMap();
                ((JsonMap)luaRoot).init(true, ExportSheetBin.ROW_MAX_ELEMENT);
            }
            _translate(v_root, luaRoot);
            return luaRoot;
        }
    }
}
