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


    public static string GetJHM(int v_id)
    {
        const ulong maxCode = 100000;
        UnityEngine.Random.InitState(v_id);
        int baseCode = v_id;
        ulong code =  (ulong)((UnityEngine.Random.value * ulong.MaxValue)% 99991 + 100000)* maxCode + (ulong)baseCode;
        return code.ToString();
    }
}
