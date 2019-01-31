using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Excel = Aspose.Cells;
using Lua = NLua;

namespace ExcelToLua
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private string[] selected = null;
        private void btnSele_Click(object sender, EventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            string theExcelPath = ".\\";
            if (!Path.IsPathRooted(excelPath))
                theExcelPath = Application.ExecutablePath + "\\" + excelPath;
            else
                theExcelPath = excelPath;
            fileDialog.InitialDirectory = theExcelPath;
            fileDialog.Multiselect = true;
            fileDialog.Title = "请选择Excel文件";
            fileDialog.Filter = "配置表|*.xlsx;*.xlsm";
            if (fileDialog.ShowDialog() == DialogResult.OK)
            {
                selected = fileDialog.FileNames;
                handle();
            }
        }


        private void handle()
        {
            for (int i = 0; i < selected.Length; i++)
            {
                apposeReadExcel(selected[i]);
            }
        }


        public void __old_readExcel(string v_filePath)
        {
            Debug.Warning("未实现");
        }


        public void apposeReadExcel(string v_filePath)
        {
            Excel.Workbook book = new Excel.Workbook(v_filePath);
            Excel.Worksheet index_sheet = book.Worksheets["INDEX"];
            if (index_sheet == null)
            {
                __old_readExcel(v_filePath);
                return;
            }
            //读取索引表
            List<IndexSheetData> indexes = new List<IndexSheetData>();
            SheetHeader index_header = new SheetHeader();
            index_header.readHeader(index_sheet);
            Excel.Cells datas = index_sheet.Cells;

            for (int i = 1; i < 100; i++)
            {
                try
                {
                    if (datas[i, 0].Value == null || string.IsNullOrEmpty(datas[i, 0].Value.ToString()))
                        break;
                    IndexSheetData the_index = new IndexSheetData();
                    the_index.init(datas, i, index_header);
                    indexes.Add(the_index);
                }
                catch (Exception ex)
                {
                    Debug.Error("{0}读取索引列，第{1}行时报错，报错信息如下\r\n{2}", Path.GetFileName(v_filePath), i + 2, ex.ToString());
                    return;
                }
            }


            Dictionary<string, ExcelToMapData>[] table_memo = new Dictionary<string, ExcelToMapData>[2];
            Dictionary<string, ExportSheetBin>[] sheetBin_memo = new Dictionary<string, ExportSheetBin>[2];
            string[] root_pathes = { Config.cliPath, Config.servPath};
            int[] optCode = { 1, 2};
            for (int i = 0; i < table_memo.Length; i++)
            {
                table_memo[i] = new Dictionary<string, ExcelToMapData>();
                sheetBin_memo[i] = new Dictionary<string, ExportSheetBin>();
            }
            //根据索引表读取各sheet
            foreach (IndexSheetData curIndex in indexes)
            {
                if (!curIndex.isOpt)
                    continue;
                Excel.Worksheet curSheet = book.Worksheets[curIndex.sheetName];
                if (curSheet == null)
                {
                    Debug.Error("{0}没有找到sheet[{1}]", Path.GetFileName(v_filePath),curIndex.sheetName);
                    return;
                }

                ExportSheetBin sheetBin = new ExportSheetBin();
                try
                {
                    if (!sheetBin.init(curSheet, curIndex))
                        return;
                }
                catch (Exception ex)
                {
                    Debug.Error("{0}_[{1}]导出基础数据时出现错误，错误信息为:\r\n{2}", Path.GetFileNameWithoutExtension(v_filePath), curIndex.sheetName, ex.ToString());
                    return;
                }
                //根据服务端的文件名，创建获取luamap
                string[] file_names = {curIndex.optCliFileName,curIndex.optSrvFileName};
                for (int i = 0; i < table_memo.Length; i++)//客户端服务端各生成一遍
                {
                    if (string.IsNullOrEmpty(file_names[i])) continue;
                    if (!table_memo[i].ContainsKey(file_names[i]))
                    {
                        ExcelMapData new_map = new ExcelMapData();
                        bool isDataPersistence = curIndex.isDataPersistence && (!string.IsNullOrEmpty(curIndex.optCliFileName))&&curIndex.optCliFileName.EndsWith(".lua");
                        ExcelToMapData new_data = new ExcelToMapData(new_map,
                            isDataPersistence,
                            Path.GetFileNameWithoutExtension(file_names[i]));
                        table_memo[i].Add(file_names[i], new_data);
                    }
                    if (!sheetBin_memo[i].ContainsKey(file_names[i]))
                    {
                        sheetBin_memo[i].Add(file_names[i], sheetBin);
                    }
                    ExcelToMapData root_table = table_memo[i][file_names[i]];
                    root_table.add_sheetbin(sheetBin);
                    //把表中的数据读取到lua map里
                    //应当把这里的逻辑改为，把表中数据读到一个map_data中，而后转到各语言的结构中
                    try
                    {
                        sheetBin.getExportMap(root_table._data, optCode[i]);
                    }
                    catch (Exception ex)
                    {
                        Debug.Error("在装载【{0}】数据到中间结构时发生错误，错误信息是{1}", curIndex.sheetName, ex.ToString());
                    }
                }                  
            }

            //这里应当写为，根据后缀名导出不同的语言
            for (int i = 0; i < table_memo.Length; i++)
            {
                foreach (var cur_pair in table_memo[i])
                {
                    string opt_path = root_pathes[i] + cur_pair.Key;
                    OptData optData = null;
                    ExportSheetBin cur_sheetBin = sheetBin_memo[i][cur_pair.Key];
                    ELanguage optLanguage = cur_sheetBin.indexData.getOptLanguage(i);
                    bool skip = false;

                    switch (optLanguage)
                    {
                        case ELanguage.lua:
                            optData = LuaExporter.getExportContent(cur_pair.Value, optCode[i]);
                            break;
                        case ELanguage.json:
                            optData = JsonExporter.getExportContent(cur_pair.Value, optCode[i]);
                            break;
                        case ELanguage.xml:
                            Debug.Error("xml导出未实现");
                            break;
                        case ELanguage.none:
                            skip = true;
                            break;
                        default:
                            Debug.Error("未知导出语言");
                            break;
                    }
                    if (!skip)
                    {
                        if (optData.errList.Count > 0)
                        {
                            Debug.Error(string.Format("在导出{0}时发生错误:\r\n", cur_pair.Key) +optData.getErrInfo());
                            return;
                        }
                        File.WriteAllText(opt_path, optData.content);

                        //todo 如果是Realease模式，把文件输出到一个临时文件夹，调用LUAC，把lua文件生成到配置的cli文件夹中。
                    }
                        
                }
            }
            Debug.Info("{0}:导表完成~~~", Path.GetFileName(v_filePath));
        }

        public string cliPath = "";
        public string servPath = "";
        public string excelPath = "";

        private void frmMain_Load(object sender, EventArgs e)
        {
            try
            {
                Config.load();
            }
            catch (Exception ex) { Debug.Error("xml解析时失败"+ex.ToString()); }
            //加载luastate
            LuaState.Init(Config.luaCfgPath+"main.lua");
            LuaState.SetPath(Config.luaCfgPath);
            LuaState.DoMain();
            cliPath = Config.cliPath;
            servPath = Config.servPath;
            excelPath = Config.excelPath;
            Excel.Workbook indexBook = new Excel.Workbook(Config.indexPath);
            Excel.Worksheet indexSheet = indexBook.Worksheets["index"];
            Excel.Cells data = indexSheet.Cells;
            SheetHeader header = new SheetHeader();
            header.readHeader(indexSheet);
            List<NameCatchIndexData> nameCatchIndexDatas = new List<NameCatchIndexData>();

            //读取需要索引的数据列表
            for (int row = 1; row < 200; row++)
            {
                if (data[row, 0].Value == null|| string.IsNullOrWhiteSpace(data[row, 0].Value.ToString()))
                {
                    break;
                }
                NameCatchIndexData rowData = new NameCatchIndexData();
                rowData.readData(data, row, header);
                nameCatchIndexDatas.Add(rowData);
            }
            NickNameColCatchManager nickNameColCatchManager = NickNameColCatchManager.getInstence();
            //打开各表，生成各名称ID转换
            foreach(NameCatchIndexData curIndex in nameCatchIndexDatas.ToArray())
            {
                string excelPath = Config.excelPath + curIndex.excelFileName+".xlsx";
                Excel.Worksheet sheet = null;
                if (!File.Exists(excelPath))
                {
                    Debug.Error("{0}不存在", excelPath);
                    return;
                }
                try
                {
                    Excel.Workbook book = new Excel.Workbook(excelPath);
                    sheet = book.Worksheets[curIndex.sheetName];
                    if (sheet == null)
                        Debug.Exception("没有找到名为[" + curIndex.sheetName + "]的sheet");
                }
                catch (Exception ex) {
                    Debug.Error(ex.ToString());
                    Application.Exit();
                    return;
                }
                SheetHeader theHeader = new SheetHeader();
                theHeader.readHeader(sheet, curIndex.headRow - 1);
                int idColIndex = theHeader[curIndex.columName];
                if (idColIndex == -1)
                {
                    Debug.Error("{1}  列{0}不存在", curIndex.columName, curIndex.excelFileName + "["+ curIndex.sheetName+"]");
                    return;
                }
                int noteIndex = theHeader[curIndex.noteColName];
                if (noteIndex == -1)
                {
                    Debug.Error("{1}  列{0}不存在", curIndex.noteColName, curIndex.excelFileName + "[" + curIndex.sheetName+"]");
                    return;
                }
                Excel.Cells theDatas = sheet.Cells;
                for (int row = curIndex.dataRowBegin - 1; row < 100000; row++)
                {
                    nickNameColCatchManager.createCatch(curIndex.fieldName, curIndex.valueType);
                    if (theDatas[row, 0].Value == null || string.IsNullOrWhiteSpace(theDatas[row, 0].Value.ToString()))
                    {
                        break;
                    }
                    try
                    {
                        int id = theDatas[row, idColIndex].IntValue;
                        string nickName = theDatas[row, noteIndex].StringValue;
                        nickNameColCatchManager.addData(curIndex.fieldName, nickName, id);
                    }
                    catch (Exception ex)
                    {
                        Debug.Error("{0}表[{1}],第{2}行出错啦，错误信息为:\r\n  " + ex.ToString(), curIndex.excelFileName,curIndex.sheetName,row +1);
                        return;
                    }
                }
            }

        }


        private void btnCalELO_Click(object sender, EventArgs e)
        {
            //Lua.Lua lua = new Lua.Lua();
            //lua.DoFile("Lua\\main.lua");
            //var fun = lua["say_hello"] as Lua.LuaFunction;
            //if (fun != null)
            //{
            //    fun.Call();
            //}
            //TableFrmFile tff = new TableFrmFile();
            //tff.init("t2");
            //StringBuilder sb = new StringBuilder();
            //tff.getLuaValue().outputSrc(sb, 0, "t2");
            //Console.WriteLine(sb.ToString());
            //Debug.Info(sb.ToString());
            new frmElo().ShowDialog();
        }

        

        private void btnOptDesign_Click(object sender, EventArgs e)
        {
            try
            {
                for (int i = 0; i < Config.designer_opt_configs.Count; i++)
                {
                    Output_designer_config optRequest = Config.designer_opt_configs[i];
                    Excel.Workbook src_book = new Excel.Workbook(optRequest.src_path);
                    Excel.Worksheet src_sheet = src_book.Worksheets[optRequest.src_sheet];
                    SheetHeader src_sheet_header = new SheetHeader();
                    src_sheet_header.readHeader(src_sheet, optRequest.src_head_row);
                    src_sheet_header.readDataWithIndex(optRequest.src_pm_key, optRequest.src_row_beg);

                    Excel.Workbook tar_book = new Excel.Workbook(optRequest.tar_path);
                    Excel.Worksheet tar_sheet = tar_book.Worksheets[optRequest.tar_sheet];
                    SheetHeader tar_sheet_header = new SheetHeader();
                    tar_sheet_header.readHeader(tar_sheet, optRequest.tar_head_row);
                    tar_sheet_header.readDataWithIndex(optRequest.tar_pm_key, optRequest.tar_row_beg);
                    ExcelTableConvert.convert(src_sheet_header, tar_sheet_header, optRequest.src_cols, optRequest.tar_cols);

                    tar_book.Save(optRequest.tar_path);
                }
            }
            catch (Exception ex) { Debug.Error(ex.ToString()); }

            Debug.Info("导出完成");
        }

        private void btnSele_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.KeyData == (Keys.Enter|Keys.Control) && selected != null)
            {
                handle();
            }
        }

        private void btnComoileLua_Click(object sender, EventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.Multiselect = true;
            fileDialog.Title = "请选择Lua文件";
            fileDialog.Filter = "lua脚本文件|*.lua";
            string[] luaFiles = null;
            if (fileDialog.ShowDialog() == DialogResult.OK)
            {
                luaFiles = fileDialog.FileNames;
                StringBuilder sb = new StringBuilder();
                try
                {
                    for (int i = 0; i < luaFiles.Length; i++)
                    {
                        using (Process pc = new Process())
                        {
                            pc.StartInfo.UseShellExecute = false;
                            pc.StartInfo.FileName = @"./Lua/LUAC.exe";
                            string optPath = Config.export_path +  Path.GetFileNameWithoutExtension(luaFiles[i]) + ".byte";
                            pc.StartInfo.Arguments = "-o "+ optPath + " "+ luaFiles[i];
                            pc.StartInfo.CreateNoWindow = true;
                            pc.StartInfo.UseShellExecute = false;
                            //pc.StartInfo.RedirectStandardOutput = true;
                            pc.StartInfo.RedirectStandardError = true;
                            pc.Start();
                            //sb.Append(pc.StandardOutput.ReadToEnd());
                            if (sb.Length > 0) sb.Append("\r\n");
                            sb.Append(pc.StandardError.ReadToEnd());
                            pc.WaitForExit();
                            //pc.BeginOutputReadLine();
                            //sb.Append(pc.StandardOutput.ReadToEnd());
                            //sb.AppendLine();
                        }
                    }
                    if (sb.Length > 0)
                    {
                        Debug.PureInfo("编译发生失败，失败信息为：\r\n"+sb.ToString());
                    }
                    else
                        Debug.Koid("编译成功");
                }
                catch (Exception ex) { Debug.Error(ex.ToString()); }
            }
        }
    }


    class NameCatchIndexData
    {
        public string fieldName;
        public string excelFileName;
        public string sheetName;
        public int headRow;
        public string columName;
        public string noteColName;
        public int dataRowBegin;
        public string valueType;

        public bool readData(Excel.Cells v_data, int v_row, SheetHeader v_header)
        {
            try
            {
                int fieldNameIdx = v_header["字段名"];
                int tableNameIdx = v_header["表名"];
                int sheetNameIdx = v_header["sheet名"];
                int columIndexIdx = v_header["列行数"];
                int colimNameIdx = v_header["列名"];
                int noteColNameIdx = v_header["备注名"];
                int dataRowBeginIdx = v_header["起始行"];
                int valueTypeIdx = v_header["值类型"];
                fieldName = v_data[v_row, fieldNameIdx].StringValue;
                excelFileName = v_data[v_row, tableNameIdx].StringValue;
                sheetName = v_data[v_row, sheetNameIdx].StringValue;
                headRow = v_data[v_row, columIndexIdx].IntValue;
                columName = v_data[v_row, colimNameIdx].StringValue;
                noteColName = v_data[v_row, noteColNameIdx].StringValue;
                dataRowBegin = v_data[v_row, dataRowBeginIdx].IntValue;
                valueType = v_data[v_row, valueTypeIdx].StringValue;
            }
            catch (Exception ex)
            {
                Debug.Error(ex.ToString());
                return false;
            }
            return true;
        }
    }
}
