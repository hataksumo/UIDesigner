#if UNITY_EDITOR
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "LJPresetData/CreateCameraShakePreset")]
public class CameraShakeDataPreset : ScriptableObject
{
    public ShakeData[] datas;
    
    ShakeData __GetData( int index )
    {
        if (index < 0 || datas == null || index >= datas.Length) return default(ShakeData);

        return datas[index];
    }

    ShakeData __GetData( string name )
    {
        if ( datas == null || datas.Length < 1 || string.IsNullOrEmpty(name)) return default(ShakeData);

        for (int i = 0 ; i < datas.Length ; i++)
        {
            if (datas[i].name.Equals(name)) return datas[i];
        }

        return default(ShakeData);
    }

    string[] __GetNames()
    {
        string[] ret = new string[datas.Length];
        for (int i = 0 ; i < datas.Length ; i++)
        {
            if (string.IsNullOrEmpty(datas[i].name))
            {
                datas[i].name = "NULL_" + i.ToString();
            }
            ret[i] = datas[i].name;
        }
        return ret;
    }

    static CameraShakeDataPreset _instance;
    public static CameraShakeDataPreset Instance
    {
        get
        {
            if (_instance == null)
            {
                var res = UnityEditor.AssetDatabase.FindAssets("t:CameraShakeDataPreset");
                if (res == null || res.Length < 0)
                {
                    Debug.LogError("Can Find Camera Shake DataPreset!!!");
                    return null;
                }
                var path = UnityEditor.AssetDatabase.GUIDToAssetPath(res[0]);
                _instance = UnityEditor.AssetDatabase.LoadAssetAtPath<CameraShakeDataPreset>(path);
            }
            return _instance;
        }
    }

    public static ShakeData GetData( int index )
    {       
        if (Instance == null) return default(ShakeData);
        return Instance.__GetData(index);
    }

    public static ShakeData GetData(string name )
    {
        if (Instance == null) return default(ShakeData);
        return Instance.__GetData(name);
    }

    public static string[] PresetNames()
    {
        if (Instance == null) return null;
        return Instance.__GetNames();
    }
}
#endif