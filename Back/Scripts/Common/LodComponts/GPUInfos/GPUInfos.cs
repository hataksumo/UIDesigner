using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using System;
using XLua;
[CreateAssetMenu(fileName = "GPUInfos", menuName = "GPUInfos")]
[Serializable]
[LuaCallCSharp]
public class GPUInfos : ScriptableObject, ISerializationCallbackReceiver
{
    [SerializeField]
    public List<string> names = new List<string>();

    [SerializeField]
    public List<string> values = new List<string>();

    [NonSerialized]
    public Dictionary<string, string> dict = new Dictionary<string, string>();

    [SerializeField] public string[] spdevices;
    [SerializeField] public string[] spdevicesValues;

    [NonSerialized]
    public Dictionary<string, string> spDevices = new Dictionary<string, string>();

    public void OnAfterDeserialize()
    {
        int count = names.Count;
        dict = new Dictionary<string, string>(count);
        for (int i = 0 ; i < count ; i++)
        {
            dict.Add(names[i], values[i]);
        }
        if (spdevices != null)
        {
            count = spdevices.Length;
            spDevices = new Dictionary<string, string>();
            for (int i = 0 ; i < count ; i++)
            {
                spDevices.Add(spdevices[i], spdevicesValues[i]);
            }
        }

    }

    public void OnBeforeSerialize()
    {
        names = new List<string>(dict.Count);
        values = new List<string>(dict.Count);
        foreach (var pair in dict)
        {
            names.Add(pair.Key);
            values.Add(pair.Value);
        }
    }



    public int GetValue()
    {
        string value = null;
        if (Application.platform == RuntimePlatform.Android)
        {
            string gname = SystemInfo.graphicsDeviceName;
            if (gname.Length > 20)
            {
                gname = gname.Substring(0, 17) + "...";
            }
            if (!dict.TryGetValue(gname, out value))
            {
                value = "2";
            }
        } else if (Application.platform == RuntimePlatform.IPhonePlayer)
        {
            if(!dict.TryGetValue(SystemInfo.processorType, out value))
            {
                value = "2";
            }
            //var gname = SystemInfo.graphicsDeviceName.ToLower();
            //var gNames = gname.Split(' ');
            //var typeKey = "";
            //if (gNames.Length > 0)
            //{
            //    for (int i = 0; i < gNames.Length; i++)
            //    {
            //        if (gNames[i] == "apple" && (i+1) < gNames.Length)
            //        {
            //            typeKey = gNames[i + 1];
            //            break;
            //        }
            //    }
            //}
            //if (!string.IsNullOrEmpty(typeKey))
            //{
            //    bool hasX = typeKey.EndsWith("x");
            //    var numStr = typeKey.TrimStart('a').TrimEnd('x');
            //    var num = 0;
            //    if (!int.TryParse(numStr, out num))
            //    {
            //        num = 0;
            //    }
            //    if (num <= 8)
            //    {
            //        value = "0";
            //    }else if (num == 9)
            //    {
            //        value = hasX ? "2" : "1";
            //    }
            //    else
            //    {
            //        value = "2";
            //    }
            //}

        } else
        {
            value = "3";
        }

        if (!string.IsNullOrEmpty(value))
        {
            int retValue = 0;
            if (!int.TryParse(value, out retValue))
            {
                retValue = 0;
            }
            return retValue;
        } else
        {
            return 0;
        }
    }

    public bool IsIOS()
    {
        return Application.platform == RuntimePlatform.IPhonePlayer;
    }

    public bool IsIPhoneX()
    {
        if (Application.platform != RuntimePlatform.IPhonePlayer)
            return false;

        string device = SystemInfo.deviceModel;
        return device == "iPhone10,3" || device == "iPhone10,6";
    }

    public int GetIPhoneBigVersion()
    {
        if (Application.platform != RuntimePlatform.IPhonePlayer)
            return 0;

        string version = SystemInfo.deviceModel.Substring(6);
        int dotIndex = version.IndexOf(",");
        if (dotIndex >= 0)
        {
            version = version.Substring(0, dotIndex);
        }
        int result = 0;
        int.TryParse(version, out result);
        return result;
    }

    public bool IsSpDeivces()
    {
        if (spDevices == null || spDevices.Count < 1) return false;

        string deviceName = SystemInfo.deviceModel;

        return spDevices.ContainsKey(deviceName);
    }

    public string GetSpDeviceValue()
    {
        if (spDevices == null || spDevices.Count < 1) return "";
        string deviceName = SystemInfo.deviceModel;
        string ret = "";
        spDevices.TryGetValue(deviceName, out ret);
        return ret;
    }




}
