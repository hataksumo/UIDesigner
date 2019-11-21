using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using XLua;
using System;
using UnityEngine.Networking;
#if UNITY_EDITOR
using UnityEditor;
#endif

/// <summary>
///  DownloadWebResourceAsync:
///  从服务器下载网页内容，需提供完整url，非AB（不计引用计数、不缓存），
///  Creater使用后记得回收
///  
///  DownloadAssetFileAsync:
///  从资源服务器下载非Assetbundle资源，非AB（不计引用计数、不缓存），
///  Creater使用后记得回收
///  
///  DownloadAssetBundleAsync:
///  从资源服务器下载Assetbundle资源，非AB（不计引用计数、不缓存），
///  Creater使用后记得回收
///  
///  RequestAssetFileAsync:
///  本地异步请求非Assetbundle资源，非AB（不计引用计数、不缓存），
///  Creater使用后记得回收
/// 
/// </summary>
namespace AssetBundles
{
   
    public partial class AssetBundleManager : MonoSingleton<AssetBundleManager>
    {
        
        #region using www load assetbundle
        // 从服务器下载网页内容，需提供完整url，非AB（不计引用计数、不缓存），Creater使用后记得回收
        public ResourceWebRequester DownloadWebResourceAsync(string url)
        {
            var creater = ResourceWebRequester.Get();
            creater.Init(url, url,new DownloadHandlerBuffer(), true);
            webRequesterQueue.Enqueue(creater);
            return creater;
        }

        // 从资源服务器下载非Assetbundle资源，非AB（不计引用计数、不缓存），Creater使用后记得回收
        public ResourceWebRequester DownloadAssetFileAsync(string filePath)
        {
            if (string.IsNullOrEmpty(DownloadUrl))
            {
                Logger.LogError("You should set download url first!!!");
                return null;
            }

            var creater = ResourceWebRequester.Get();
            var url = DownloadUrl + filePath;

            //var saveUrl = AssetBundleUtility.GetPersistentFilePathWWW(filePath);
            creater.Init(filePath, url,new DownloadHandlerBuffer(), true);
            webRequesterQueue.Enqueue(creater);
            return creater;
        }

        // 从资源服务器下载Assetbundle资源，非AB（不计引用计数、不缓存），Creater使用后记得回收
        public ResourceWebRequester DownloadAssetBundleAsync(string filePath)
        {
            var creater = ResourceWebRequester.Get();
            var url = DownloadUrl + filePath;

            creater.Init(filePath, url, new DownloadHandlerAssetBundle(url, 0), true);
            webRequesterQueue.Enqueue(creater);
            return creater;
        }

        // 本地异步请求非Assetbundle资源，非AB（不计引用计数、不缓存），Creater使用后记得回收
        public ResourceWebRequester RequestAssetFileAsync(string filePath, bool streamingAssetsOnly = true)
        {
            var creater = ResourceWebRequester.Get();
            string url = null;
            if (streamingAssetsOnly)
            {
                url = AssetBundleUtility.GetStreamingAssetsFilePathWWW(filePath);
            }
            else
            {
                url = AssetBundleUtility.GetAssetFileUrlWWW(filePath);
            }
            creater.Init(filePath, url, new DownloadHandlerBuffer(),  true);
            webRequesterQueue.Enqueue(creater);
            return creater;
        }
        #endregion using www load assetbundle



    }
}