using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.IO;

namespace ExcelToLua
{
    struct ExcelPathConfig
    {
        public string path;
        public string[] sheets;
    }

    struct Output_designer_config
    {
        public string src_path;
        public string src_sheet;
        public string tar_path;
        public string tar_sheet;
        public string src_pm_key;
        public int src_head_row;
        public int src_row_beg;
        public string tar_pm_key;
        public int tar_head_row;
        public int tar_row_beg;
        public string[] src_cols;
        public string[] tar_cols;
    }


    static class Config
    {
        public static ExcelPathConfig attr_designer_Path = new ExcelPathConfig();
        public static ExcelPathConfig elo_data_path = new ExcelPathConfig();
        public static string packageName = "dTable";
        public static string cliPath = "";
        public static string servPath = "";
        public static string export_path = "";
        public static string excelPath = "";
        public static string indexPath = "";
        public static string luaCfgPath = "";
        public static bool isRealeace = false;
        public static List<Output_designer_config> designer_opt_configs;
        public static string simulator_src = ".\\战斗模拟_源数据.xlsx";
        public static string simulator_tar = ".\\战斗模拟_输出.xlsx";



        public static void load()
        {
            XmlDocument xmlPathDoc = new XmlDocument();
            if (!File.Exists("config.xml"))
            {
                Debug.Info("配置文件config.xml缺失");
                return;
            }
            xmlPathDoc.Load("config.xml");
            XmlNode xmlroot = xmlPathDoc.SelectSingleNode("root");
            //读取策划数据包名
            packageName = xmlroot.SelectSingleNode("package").Attributes["name"].Value;
            //APP设置
            XmlNode appNode = xmlroot.SelectSingleNode("app");
            isRealeace = bool.Parse(appNode.Attributes["isRelease"].Value);
            //设置策划表路径
            XmlNode xmlPathNode = xmlroot.SelectSingleNode("path");
            cliPath = xmlPathNode.Attributes["cli"].Value;
            servPath = xmlPathNode.Attributes["serv"].Value;
            export_path = xmlPathNode.Attributes["export"].Value;
            excelPath = xmlPathNode.Attributes["excelPath"].Value;
            indexPath = xmlPathNode.Attributes["indexPath"].Value;
            luaCfgPath = xmlPathNode.Attributes["lua_cfg"].Value;
            if (!Directory.Exists(cliPath))
            {
                Directory.CreateDirectory(cliPath);
                Debug.Info("客户端文件夹 {0} 不存在，我创建了他", cliPath);
            }
            if (!Directory.Exists(servPath))
            {
                Directory.CreateDirectory(servPath);
                Debug.Info("服务端文件夹 {0} 不存在，我创建了他", servPath);
            }
            if (!Directory.Exists(export_path))
            {
                Directory.CreateDirectory(export_path);
                Debug.Info("服务端文件夹 {0} 不存在，我创建了他", export_path);
            }


            //设置设计表相关路径
            XmlNode attrDesignerNode = xmlroot.SelectSingleNode("attrDesigner");
            if (attrDesignerNode != null)
            {
                attr_designer_Path.path = attrDesignerNode.Attributes["path"].Value;
                attr_designer_Path.sheets = attrDesignerNode.Attributes["sheets"].Value.Split(';');
            }

            //导出数据配置
            XmlNode xmlOptChildrenNodes = xmlroot.SelectSingleNode("designer_outputs");
            if (xmlOptChildrenNodes != null)
            {
                designer_opt_configs = new List<Output_designer_config>();
                var xmlOptChildNodes = xmlOptChildrenNodes.ChildNodes;
                for (int i = 0; i < xmlOptChildNodes.Count; i++)
                {
                    XmlElement childrenNode = (XmlElement)xmlOptChildNodes[i];
                    if (childrenNode.Name != "output") continue;
                    Output_designer_config newConfig = new Output_designer_config();
                    string[] strSrcPath = childrenNode.Attributes["src_path"].Value.Split('!');
                    newConfig.src_path = strSrcPath[0];
                    newConfig.src_sheet = strSrcPath[1];
                    string[] tarSrcPath = childrenNode.Attributes["tar_path"].Value.Split('!');
                    newConfig.tar_path = tarSrcPath[0];
                    newConfig.tar_sheet = tarSrcPath[1];
                    newConfig.src_pm_key = childrenNode.Attributes["src_pm_key"].Value;
                    newConfig.src_head_row = Convert.ToInt32(childrenNode.Attributes["src_head_row"].Value);
                    newConfig.src_row_beg = Convert.ToInt32(childrenNode.Attributes["src_row_beg"].Value);
                    newConfig.tar_pm_key = childrenNode.Attributes["tar_pm_key"].Value;
                    newConfig.tar_head_row = Convert.ToInt32(childrenNode.Attributes["tar_head_row"].Value);
                    newConfig.tar_row_beg = Convert.ToInt32(childrenNode.Attributes["tar_row_beg"].Value);
                    newConfig.src_cols = childrenNode.Attributes["src_opt_cols"].Value.Split(';');
                    newConfig.tar_cols = childrenNode.Attributes["tar_opt_cols"].Value.Split(';');
                    designer_opt_configs.Add(newConfig);
                }
            }   
            XmlNode xmlSimulator = xmlroot.SelectSingleNode("simulator");
            if (xmlSimulator != null)
            {
                if (xmlSimulator.Attributes["src"] != null)
                    simulator_src = xmlSimulator.Attributes["src"].Value;
                else
                    Debug.Exception("simulator节点没找到src属性");
                if (xmlSimulator.Attributes["opt"] != null)
                    simulator_tar = xmlSimulator.Attributes["opt"].Value;
                else
                    Debug.Exception("simulator节点没找到opt属性");
            }  
        }
        private static string __rectify_folder_path(string v_path)
        {
            if (v_path.Last<char>() != '\\' || v_path.Last<char>() != '/')
                return v_path + "\\";
            return v_path;
        }
    }
}
