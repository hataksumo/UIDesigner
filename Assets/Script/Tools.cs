using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

public static class MyTools
{
    public static string ExcelPath = Application.dataPath + "/../Excel/";
    public static string GetDataPath()
    {
        return Application.dataPath;
    }

    public static string[] Split(string v_str, string v_spc)
    {
        return v_str.Split(v_spc[0]);
    }
}
