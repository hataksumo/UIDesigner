using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System;
using System.Xml;
using System.Text;
using System.IO;

[CustomEditor(typeof(GPUInfos), false)]
public class GPUInfosEditor : Editor
{
    static private WWW LoadXMLFromWWW(string url, Action<XmlDocument> resultHandler)
    {
        WWW www = new WWW(url);

        EditorApplication.CallbackFunction handler = null;
        handler = () =>
        {
            if (www.isDone)
            {
                EditorApplication.update -= handler;

                string t = www.text;
                www.Dispose();
                www = null;

                int startIndex = t.IndexOf("<tbody>");
                int endIndex = t.IndexOf("</tbody>") + "</tbody>".Length;
                t = t.Substring(startIndex, endIndex - startIndex).Replace("&nbsp;", "").Replace("\n", "");
                XmlDocument xml = null;
                try
                {
                    xml = new XmlDocument();
                    xml.LoadXml(t);
                }
                catch (XmlException e)
                {
                    Debug.Log(e.ToString());
                    xml = null;
                }
                resultHandler(xml);
            }
        };
        EditorApplication.update += handler;
        return www;
    }

    [System.Serializable]
    public class DeviceDetailInfo
    {
        public string os;
        public string screenwidth;
        public string screenheight;
        public string cpucores;
        public string cpuspeed;
        public string cpuarch;
    }
    [System.Serializable]
    public class DeviceInfo
    {
        public string Model;
        public string RetailName;
        public string GPU;
        public string VK;
        public string GLES;
        public string VK_URL;
        public string GLES_URL;
        public string GeekBench_URL;
        public bool opened;
        public DeviceDetailInfo detail;
        public DeviceInfo(string v1, string v2, string v3, string v4, string v5)
        {
            Model = v1;
            RetailName = v2;
            GPU = v3;
            VK = v4;
            GLES = v5;
        }

        public WWW www;
        public void LoadDetail(Editor editor)
        {
            if (detail != null || www != null || string.IsNullOrEmpty(GLES_URL))
                return;

            www = LoadXMLFromWWW(GLES_URL, (XmlDocument xml) =>
            {
                if (xml != null)
                {
                    XmlNode root = xml.FirstChild;
                    detail = new DeviceDetailInfo();
                    detail.os = root.ChildNodes[1].ChildNodes[1].InnerText;
                    detail.screenwidth = root.ChildNodes[2].ChildNodes[1].InnerText;
                    detail.screenheight = root.ChildNodes[3].ChildNodes[1].InnerText;
                    detail.cpucores = root.ChildNodes[4].ChildNodes[1].InnerText;
                    detail.cpuspeed = root.ChildNodes[5].ChildNodes[1].InnerText;
                    detail.cpuarch = root.ChildNodes[6].ChildNodes[1].InnerText;
                }
                www = null;
                editor.Repaint();
            });
        }
    }

    public SortedList<string, List<DeviceInfo>> data;

    private WWW www = null;
   
    void LoadDataFromNet()
    {
        if (data == null)
            data = new SortedList<string, List<DeviceInfo>>();
        else
            data.Clear();

        www = LoadXMLFromWWW("http://browser.geekbench.com/ios-benchmarks", (XmlDocument xml) => 
        {
            if (xml != null)
            {
                XmlNode root = xml.FirstChild;
                foreach (XmlNode tr in root.ChildNodes)
                {
                    XmlNodeList tds = tr.FirstChild.ChildNodes;
                    DeviceInfo info = new DeviceInfo(tds[1].InnerText, tds[1].InnerText, tds[2].InnerText, null, null);
                    info.GPU = info.GPU.Substring(0, info.GPU.IndexOf("@") - 1);
                    info.GeekBench_URL = "http://browser.geekbench.com" + tds[1].Attributes["href"].Value;
                    List<DeviceInfo> devices = null;
                    data.TryGetValue(info.GPU, out devices);
                    if (devices == null)
                    {
                        devices = new List<DeviceInfo>();
                        data.Add(info.GPU, devices);
                    }
                    devices.Add(info);
                }
            }

            www = LoadXMLFromWWW("https://android.gpuinfo.org/", ( XmlDocument xml2 ) =>
            {
                if (xml2 != null)
                {
                    XmlNode root = xml2.FirstChild;
                    foreach (XmlNode tr in root.ChildNodes)
                    {
                        XmlNodeList tds = tr.ChildNodes;
                        DeviceInfo info = new DeviceInfo(tds[0].InnerText, tds[1].InnerText, tds[2].InnerText, tds[3].InnerText, tds[4].InnerText);
                        info.VK_URL = tds[3].FirstChild == null ? null : tds[3].FirstChild.FirstChild.Attributes["href"].Value;
                        info.GLES_URL = tds[4].FirstChild == null ? null : tds[4].FirstChild.FirstChild.Attributes["href"].Value;
                        List<DeviceInfo> devices = null;
                        data.TryGetValue(info.GPU, out devices);
                        if (devices == null)
                        {
                            devices = new List<DeviceInfo>();
                            data.Add(info.GPU, devices);
                        }
                        devices.Add(info);
                    }
                }
                www = null;
                SaveDeviceInfo();
                Repaint();
            });
        });
    }

    private GPUInfos m_GpuInfos;
   
    private void OnEnable()
    {
        //if (www == null && data == null)
        //{
        //    LoadDataFromNet();
        //}

        LoadDeviceInfo();
        m_GpuInfos = target as GPUInfos;
    }

    private Dictionary<string, bool> groupOpened = new Dictionary<string, bool>();
    private bool filter;


    [System.Serializable]
    struct DeviceInfoSaveStruct
    {
        public DeviceInfoSaveItem[] items;
    }
    [System.Serializable]
    struct DeviceInfoSaveItem
    {
        public string key;
        public List<DeviceInfo> value;
    }


    string DeviceInfos2Json()
    {
        DeviceInfoSaveStruct saveInfo = new DeviceInfoSaveStruct();
        saveInfo.items = new DeviceInfoSaveItem[data.Count];
        int index = 0;
        foreach (var item in data)
        {
            saveInfo.items[index].key = item.Key;
            saveInfo.items[index].value = item.Value;
            index++;
        }

        return JsonUtility.ToJson(saveInfo);
    }

    void Json2DeviceInfos(string str)
    {
        if(string.IsNullOrEmpty(str))
        {
            if (data == null)
                data = new SortedList<string, List<DeviceInfo>>();
            else
                data.Clear();
            return;
        }
        var dataStruct = JsonUtility.FromJson<DeviceInfoSaveStruct>(str);
        data = new SortedList<string, List<DeviceInfo>>();
        foreach (var item in dataStruct.items)
        {
            data.Add(item.key, item.value);
        }
    }

    const string GPUInfoCacheFilePath = "Assets/Editor/GPUInfo.json";

    void LoadDeviceInfo()
    {
        if (!File.Exists(GPUInfoCacheFilePath)) return;
        var jsonStr = File.ReadAllText(GPUInfoCacheFilePath);
        if(!string.IsNullOrEmpty(jsonStr))
        {
            Json2DeviceInfos(jsonStr);
        }
    }

    void SaveDeviceInfo()
    {
        var jsonStr = DeviceInfos2Json();
        File.WriteAllText(GPUInfoCacheFilePath, jsonStr);
    }
    float loadingTimer = 0f;
    static readonly string[] points = { ".", "..", "..." };
    int pointIndex = 0;
    public override void OnInspectorGUI()
    {
        EditorGUILayout.BeginHorizontal();
        if (www != null)
        {
            if( Time.realtimeSinceStartup - loadingTimer > 0.5f)
            {
                loadingTimer = Time.realtimeSinceStartup;
                pointIndex++;
                if(pointIndex >= points.Length )
                {
                    pointIndex = 0;
                }
            }
            GUILayout.Label(string.Format("Loading{1}({0}%)", www.progress*100f, points[pointIndex]));
        }
        else
        {
            if (GUILayout.Button("Refresh"))
            {
                LoadDataFromNet();
            }
            filter = EditorGUILayout.ToggleLeft("只显示未设定的数据", filter);
        }
        EditorGUILayout.EndHorizontal();

        if (data != null)
        {
            foreach (var pair in data)
            {
                string gpuValue = null;
                if (m_GpuInfos.dict.ContainsKey(pair.Key))
                    gpuValue = m_GpuInfos.dict[pair.Key];

                if (filter && !string.IsNullOrEmpty(gpuValue))
                    continue;

                EditorGUILayout.BeginHorizontal();
                
                if (!groupOpened.ContainsKey(pair.Key))
                    groupOpened.Add(pair.Key, false);

                bool foldOpen = groupOpened[pair.Key];
                foldOpen = EditorGUILayout.Foldout(foldOpen, pair.Key);
                groupOpened[pair.Key] = foldOpen;

                EditorGUI.BeginChangeCheck();
                gpuValue = EditorGUILayout.TextField(gpuValue);
                if (EditorGUI.EndChangeCheck())
                {
                    if (m_GpuInfos.dict.ContainsKey(pair.Key))
                        m_GpuInfos.dict[pair.Key] = gpuValue;
                    else
                        m_GpuInfos.dict.Add(pair.Key, gpuValue);

                    serializedObject.ApplyModifiedProperties();
                    EditorUtility.SetDirty(target);
                }

                EditorGUILayout.EndHorizontal();
                if (foldOpen)
                {
                    EditorGUI.indentLevel++;
                    InspectorGPU(pair.Value);
                    EditorGUI.indentLevel--;
                }
            }
        }
        EditorGUILayout.LabelField("--RawData-------------------");
        base.OnInspectorGUI();
    }

    void InspectorGPU(List<DeviceInfo> list)
    {
        foreach (var info in list)
        {
            EditorGUILayout.BeginHorizontal();

            if (string.IsNullOrEmpty(info.GLES))
            {
                EditorGUILayout.LabelField(info.RetailName == "unknown" ? info.Model : info.RetailName);
            }
            else
            {
                EditorGUI.BeginChangeCheck();
                info.opened = EditorGUILayout.Foldout(info.opened, info.RetailName == "unknown" ? info.Model : info.RetailName);
                if (EditorGUI.EndChangeCheck() && info.opened)
                {
                    info.LoadDetail(this);
                }
            }

            if (!string.IsNullOrEmpty(info.GLES))
            {
                if (GUILayout.Button("GLES " + info.GLES,GUILayout.Width(80)))
                {
                    Application.OpenURL(info.GLES_URL);
                }
            }
            if (!string.IsNullOrEmpty(info.VK))
            {
                if (GUILayout.Button("VK " + info.VK, GUILayout.Width(80)))
                {
                    Application.OpenURL(info.VK_URL);
                }
            }
            if (!string.IsNullOrEmpty(info.GeekBench_URL))
            {
                if (GUILayout.Button("GeekBench", GUILayout.Width(80)))
                {
                    Application.OpenURL(info.GeekBench_URL);
                }
            }
            EditorGUILayout.EndHorizontal();

            if (info.opened)
            {
                EditorGUI.indentLevel++;
                if (info.www != null)
                {
                    EditorGUILayout.LabelField("Loading...");
                }
                else
                {
                    EditorGUILayout.LabelField("os ver " + info.detail.os);
                    EditorGUILayout.LabelField("screen " + info.detail.screenwidth + "x" + info.detail.screenheight);
                    EditorGUILayout.LabelField("cpu " + info.detail.cpuspeed + "Mhz x" + info.detail.cpucores + " (" + info.detail.cpuarch + ")");
                }
                
                EditorGUI.indentLevel--;
            }
        }
    }
}
