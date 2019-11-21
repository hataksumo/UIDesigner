using UnityEngine;
using System.IO;
using System.Linq;
using XLua;
using System;
using System.Collections.Generic;
using System.Net.NetworkInformation;
using System.Net.Sockets;

/// <summary>
/// added by wsh @ 2017.12.25
/// 功能：通用静态方法
/// </summary>

[Hotfix]
public class GameUtility
{
    public const string AssetsFolderName = "Assets";

    public static string FormatToUnityPath(string path)
    {
        return path.Replace("\\", "/");
    }

    public static string FormatToSysFilePath(string path)
    {
        return path.Replace("/", "\\");
    }

    public static string FullPathToAssetPath(string full_path)
    {
        full_path = FormatToUnityPath(full_path);
        if (!full_path.StartsWith(Application.dataPath))
        {
            return null;
        }
        string ret_path = full_path.Replace(Application.dataPath, "");
        return AssetsFolderName + ret_path;
    }

    public static string GetFileExtension(string path)
    {
        return Path.GetExtension(path).ToLower();
    }

    public static string[] GetSpecifyFilesInFolder(string path, string[] extensions = null, bool exclude = false)
    {
        if (string.IsNullOrEmpty(path))
        {
            return null;
        }
        if (!Directory.Exists(path))
        {
            return null;
        }
        if (extensions == null)
        {
            return Directory.GetFiles(path, "*.*", SearchOption.AllDirectories);
        }
        else if (exclude)
        {
            return Directory.GetFiles(path, "*.*", SearchOption.AllDirectories)
                .Where(f => !extensions.Contains(GetFileExtension(f))).ToArray();
        }
        else
        {
            return Directory.GetFiles(path, "*.*", SearchOption.AllDirectories)
                .Where(f => extensions.Contains(GetFileExtension(f))).ToArray();
        }
    }

    public static string[] GetSpecifyFilesInFolder(string path, string pattern)
    {
        if (string.IsNullOrEmpty(path))
        {
            return null;
        }

        return Directory.GetFiles(path, pattern, SearchOption.AllDirectories);
    }

    public static string[] GetAllFilesInFolder(string path)
    {
        return GetSpecifyFilesInFolder(path);
    }

    public static string[] GetAllDirsInFolder(string path)
    {
        return Directory.GetDirectories(path, "*", SearchOption.AllDirectories);
    }

    public static void CheckFileAndCreateDirWhenNeeded(string filePath)
    {
        if (string.IsNullOrEmpty(filePath))
        {
            return;
        }

        FileInfo file_info = new FileInfo(filePath);
        DirectoryInfo dir_info = file_info.Directory;
        if (!dir_info.Exists)
        {
            Directory.CreateDirectory(dir_info.FullName);
        }
    }

    public static void CheckDirAndCreateWhenNeeded(string folderPath)
    {
        if (string.IsNullOrEmpty(folderPath))
        {
            return;
        }

        if (!Directory.Exists(folderPath))
        {
            Directory.CreateDirectory(folderPath);
        }
    }

    public static bool SafeWriteAllBytes(string outFile, byte[] outBytes)
    {
        try
        {
            if (string.IsNullOrEmpty(outFile))
            {
                return false;
            }

            CheckFileAndCreateDirWhenNeeded(outFile);
            if (File.Exists(outFile))
            {
                File.SetAttributes(outFile, FileAttributes.Normal);
            }
            File.WriteAllBytes(outFile, outBytes);
            return true;
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeWriteAllBytes failed! path = {0} with err = {1}", outFile, ex.Message));
            return false;
        }
    }

    public static bool SafeWriteAllLines(string outFile, string[] outLines)
    {
        try
        {
            if (string.IsNullOrEmpty(outFile))
            {
                return false;
            }

            CheckFileAndCreateDirWhenNeeded(outFile);
            if (File.Exists(outFile))
            {
                File.SetAttributes(outFile, FileAttributes.Normal);
            }
            File.WriteAllLines(outFile, outLines);
            return true;
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeWriteAllLines failed! path = {0} with err = {1}", outFile, ex.Message));
            return false;
        }
    }

    public static bool SafeWriteAllText(string outFile, string text)
    {
        try
        {
            if (string.IsNullOrEmpty(outFile))
            {
                return false;
            }

            CheckFileAndCreateDirWhenNeeded(outFile);
            if (File.Exists(outFile))
            {
                File.SetAttributes(outFile, FileAttributes.Normal);
            }
            File.WriteAllText(outFile, text);
            return true;
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeWriteAllText failed! path = {0} with err = {1}", outFile, ex.Message));
            return false;
        }
    }

    public static void DeleteFile(string filePath)
    {
        try
        {
            File.Delete(filePath);
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("DeleteFile failed! path = {0} with err = {1}", filePath, ex.Message));     
        }
    }

    public static bool SafeAppendAllText(string outFile, string text)
    {
        try
        {
            if (string.IsNullOrEmpty(outFile))
            {
                return false;
            }

            CheckFileAndCreateDirWhenNeeded(outFile);
            if (File.Exists(outFile))
            {
                File.SetAttributes(outFile, FileAttributes.Normal);
            }
            File.AppendAllText(outFile, text);
            return true;
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeWriteAllText failed! path = {0} with err = {1}", outFile, ex.Message));
            return false;
        }
    }

    public static byte[] SafeReadAllBytes(string inFile)
    {
        try
        {
            if (string.IsNullOrEmpty(inFile))
            {
                return null;
            }

            if (!File.Exists(inFile))
            {
                return null;
            }

            File.SetAttributes(inFile, FileAttributes.Normal);
            return File.ReadAllBytes(inFile);
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeReadAllBytes failed! path = {0} with err = {1}", inFile, ex.Message));
            return null;
        }
    }

    public static string[] SafeReadAllLines(string inFile)
    {
        try
        {
            if (string.IsNullOrEmpty(inFile))
            {
                return null;
            }

            if (!File.Exists(inFile))
            {
                return null;
            }

            File.SetAttributes(inFile, FileAttributes.Normal);
            return File.ReadAllLines(inFile);
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeReadAllLines failed! path = {0} with err = {1}", inFile, ex.Message));
            return null;
        }
    }

    public static string SafeReadAllText(string inFile)
    {
        try
        {
            if (string.IsNullOrEmpty(inFile))
            {
                return null;
            }

            if (!File.Exists(inFile))
            {
                return null;
            }

            File.SetAttributes(inFile, FileAttributes.Normal);
            return File.ReadAllText(inFile);
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeReadAllText failed! path = {0} with err = {1}", inFile, ex.Message));
            return null;
        }
    }

    public static void DeleteDirectory(string dirPath)
    {
        string[] files = Directory.GetFiles(dirPath);
        string[] dirs = Directory.GetDirectories(dirPath);

        foreach (string file in files)
        {
            File.SetAttributes(file, FileAttributes.Normal);
            File.Delete(file);
        }

        foreach (string dir in dirs)
        {
            DeleteDirectory(dir);
        }

        Directory.Delete(dirPath, false);
    }

    public static bool SafeClearDir(string folderPath)
    {
        try
        {
            if (string.IsNullOrEmpty(folderPath))
            {
                return true;
            }

            if (Directory.Exists(folderPath))
            {
                DeleteDirectory(folderPath);
            }
            Directory.CreateDirectory(folderPath);
            return true;
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeClearDir failed! path = {0} with err = {1}", folderPath, ex.Message));
            return false;
        }
    }

    public static bool SafeDeleteDir(string folderPath)
    {
        try
        {
            if (string.IsNullOrEmpty(folderPath))
            {
                return true;
            }

            if (Directory.Exists(folderPath))
            {
                DeleteDirectory(folderPath);
            }
            return true;
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeDeleteDir failed! path = {0} with err: {1}", folderPath, ex.Message));
            return false;
        }
    }

    public static bool SafeDeleteFile(string filePath)
    {
        try
        {
            if (string.IsNullOrEmpty(filePath))
            {
                return true;
            }

            if (!File.Exists(filePath))
            {
                return true;
            }
            File.SetAttributes(filePath, FileAttributes.Normal);
            File.Delete(filePath);
            return true;
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeDeleteFile failed! path = {0} with err: {1}", filePath, ex.Message));
            return false;
        }
    }

    public static bool SafeRenameFile(string sourceFileName, string destFileName)
    {
        try
        {
            if (string.IsNullOrEmpty(sourceFileName))
            {
                return false;
            }

            if (!File.Exists(sourceFileName))
            {
                return true;
            }
            SafeDeleteFile(destFileName);
            File.SetAttributes(sourceFileName, FileAttributes.Normal);
            File.Move(sourceFileName, destFileName);
            return true;
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeRenameFile failed! path = {0} with err: {1}", sourceFileName, ex.Message));
            return false;
        }
    }

    public static bool SafeCopyFile(string fromFile, string toFile)
    {
        try
        {
            if (string.IsNullOrEmpty(fromFile))
            {
                return false;
            }

            if (!File.Exists(fromFile))
            {
                return false;
            }
            CheckFileAndCreateDirWhenNeeded(toFile);
            SafeDeleteFile(toFile);
            File.Copy(fromFile, toFile, true);
            return true;
        }
        catch (System.Exception ex)
        {
            Logger.LogError(string.Format("SafeCopyFile failed! formFile = {0}, toFile = {1}, with err = {2}",
                fromFile, toFile, ex.Message));
            return false;
        }
    }


    public enum ADDRESSFAM
    {
        IPv4 = 1, IPv6 = 2,
    }

    public static string GetAllIP()
    {
        string ip = GetIP(ADDRESSFAM.IPv4);
        if (string.IsNullOrEmpty(ip)) {
            ip = GetIP(ADDRESSFAM.IPv6);
        }
        return ip;
    }
        /// <summary>
        /// 获取本机IP
        /// </summary>
        /// <param name="Addfam">要获取的IP类型</param>
        /// <returns></returns>
        public static string GetIP(ADDRESSFAM Addfam)
    {
        if (Addfam == ADDRESSFAM.IPv6 && !Socket.OSSupportsIPv6)
        {
            return null;
        }

        string output = "";

        foreach (NetworkInterface item in NetworkInterface.GetAllNetworkInterfaces())
        {
#if UNITY_EDITOR_WIN || UNITY_STANDALONE_WIN
            NetworkInterfaceType _type1 = NetworkInterfaceType.Wireless80211;
            NetworkInterfaceType _type2 = NetworkInterfaceType.Ethernet;

            if ((item.NetworkInterfaceType == _type1 || item.NetworkInterfaceType == _type2) && item.OperationalStatus == OperationalStatus.Up)
#endif 
            {
                foreach (UnicastIPAddressInformation ip in item.GetIPProperties().UnicastAddresses)
                {
                    //IPv4
                    if (Addfam == ADDRESSFAM.IPv4)
                    {
                        if (ip.Address.AddressFamily == AddressFamily.InterNetwork)
                        {
                            output = ip.Address.ToString();
                            //Debug.Log("IP:" + output);
                        }
                    }

                    //IPv6
                    else if (Addfam == ADDRESSFAM.IPv6)
                    {
                        if (ip.Address.AddressFamily == AddressFamily.InterNetworkV6)
                        {
                            output = ip.Address.ToString();
                        }
                    }
                }
            }
        }
        return output;
    }

    /// <summary>
    /// 国战EventSystem bug Fixed
    /// </summary>
    /// <param name="cacheEventSystem"></param>
    /// <returns></returns>
    public static bool IsPointerOverGameObject(UnityEngine.EventSystems.EventSystem cacheEventSystem)
    {
        bool overTouch = cacheEventSystem.IsPointerOverGameObject();
        return overTouch;
    }

    //方法一， 国战EventSystem bug Fixed  使用该方法的另一个重载方法，使用时给该方法传递一个整形参数
    // 该参数即使触摸手势的 id
    // int id = Input.GetTouch(0).fingerId;
    public static bool IsPointerOverUIObjectOne(UnityEngine.EventSystems.EventSystem cacheEventSystem, int fingerID)
    {
        bool overTouch = cacheEventSystem.IsPointerOverGameObject(fingerID);

        return overTouch;
    }

    //方法二 通过UI事件发射射线
    //是 2D UI 的位置，非 3D 位置
    public static bool IsPointerOverUIObjectTwo(UnityEngine.EventSystems.EventSystem cacheEventSystem,Vector2 screenPosition)
    {
        //实例化点击事件
        UnityEngine.EventSystems.PointerEventData eventDataCurrentPosition = new UnityEngine.EventSystems.PointerEventData(cacheEventSystem);
        //将点击位置的屏幕坐标赋值给点击事件
        eventDataCurrentPosition.position = new Vector2(screenPosition.x, screenPosition.y);
        List<UnityEngine.EventSystems.RaycastResult> results = new List<UnityEngine.EventSystems.RaycastResult>();
        //向点击处发射射线
        cacheEventSystem.RaycastAll(eventDataCurrentPosition, results);
        return results.Count > 0;
    }

    /// <summary>
    /// 国战创建一个地图层
    /// </summary>
    /// <param name="parent">父Transform节点</param>
    /// <param name="lJMapLayer">层的数据对象</param>
    /// <param name="baseTileConfig">图块对象</param>
    /// <param name="mapDefaultTilemapMat">地图所用的材质球</param>
    /// <param name="renderMode">0 Chunk 1 Individual </param>
    /// <returns>返回一个tilemap</returns>
    public static UnityEngine.Tilemaps.Tilemap CreateLayerByNation(Transform parent, LJTilemaps.LJMapLayer lJMapLayer,
    LJTilemaps.LJBaseTileConfig baseTileConfig, Material mapDefaultTilemapMat, int renderMode)
    {
        GameObject layerGameObj = new GameObject(lJMapLayer.layerName);
        UnityEngine.Tilemaps.Tilemap tilemap = layerGameObj.AddComponent<UnityEngine.Tilemaps.Tilemap>();
        UnityEngine.Tilemaps.TilemapRenderer tilemapRenderer = layerGameObj.AddComponent<UnityEngine.Tilemaps.TilemapRenderer>();
        Transform layerTran = layerGameObj.transform;
        layerTran.SetParent(parent);
        layerTran.position = lJMapLayer.worldPosition;
        tilemapRenderer.mode = (UnityEngine.Tilemaps.TilemapRenderer.Mode)renderMode;
        //tilemapRenderer.mode = UnityEngine.Tilemaps.TilemapRenderer.Mode.Chunk;//合并DC模式 0
        //tilemapRenderer.mode = UnityEngine.Tilemaps.TilemapRenderer.Mode.Individual;// 测试模式 1
        tilemapRenderer.sortingOrder = lJMapLayer.orderInLayer;
        tilemapRenderer.sortingLayerID = lJMapLayer.sortingLayer;
        tilemap.origin = lJMapLayer.origin;
        tilemap.size = lJMapLayer.size;
        tilemap.orientation = lJMapLayer.orientation;
        tilemap.orientationMatrix = lJMapLayer.orientationMatrix;

        if (mapDefaultTilemapMat != null)
        {
            tilemapRenderer.sharedMaterial = mapDefaultTilemapMat;
        }
        if (baseTileConfig == null)
        {
            return tilemap;
        }
        List<LJTilemaps.LJTileData> tileDatas = lJMapLayer.tileDatas;
        for (int i = 0, imax = tileDatas.Count; i < imax; i++)
        {
            LJTilemaps.LJTileData v = tileDatas[i];
            if (v.tileId < 0)
            {

            }
            else
            {
                UnityEngine.Tilemaps.TileBase tileBase = baseTileConfig.GetTileBaseById(v.tileId);
                if (tileBase != null)
                {
                    tilemap.SetTile(v.position, tileBase);
                }
            }
        }
        tilemap.CompressBounds();
        return tilemap;
    }
}

#if UNITY_EDITOR
public static class GameUtilityExporter
{
    [LuaCallCSharp]
    public static List<Type> LuaCallCSharp = new List<Type>(){
            typeof(GameUtility),
        };
}
#endif