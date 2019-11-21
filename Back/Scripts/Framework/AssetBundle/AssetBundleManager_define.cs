using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using XLua;
using System;
#if UNITY_EDITOR
using UnityEditor;
#endif

/// <summary>
/// added by wsh @ 2017-12-21
/// 功能：assetbundle管理类，为外部提供统一的资源加载界面、协调Assetbundle各个子系统的运行
/// 注意：
/// 1、抛弃Resources目录的使用，官方建议：https://unity3d.com/cn/learn/tutorials/temas/best-practices/resources-folder?playlist=30089
/// 2、提供Editor和Simulate模式，前者不适用Assetbundle，直接加载资源，快速开发；后者使用Assetbundle，用本地服务器模拟资源更新
/// 3、场景不进行打包，场景资源打包为预设
/// 4、只提供异步接口，所有加载按异步进行
/// 5、采用LZ4压缩方式，ab加载异步，asset加载同步
/// 6、切换场景时最好预加载所有可能使用到的资源，所有加载器用完以后记得Dispose回收，清理GC时注意先释放所有Asset缓存
/// 7、逻辑层所有Asset路径带文件类型后缀，且是AssetBundleConfig.ResourcesFolderName下的相对路径，注意：路径区分大小写
///
/// 使用说明：
/// 1、由Asset路径获取AssetName、AssetBundleName：ParseAssetPathToNames
/// 2、设置常驻(公共)ab包：SetAssetBundleResident(assebundleName, true)---公共ab包已经自动设置常驻
/// 2、(预)加载资源：var loader = LoadAssetBundleAsync(assetbundleName)，协程等待加载完毕后Dispose：loader.Dispose()
/// 3、加载Asset资源：var loader = LoadAssetAsync(assetPath, TextAsset)，协程等待加载完毕后Dispose：loader.Dispose()
/// 4、离开场景清理所有Asset缓存：UnloadUnusedAssetBundles(), Resources.UnloadUnusedAssets()

/// </summary>

namespace AssetBundles
{

    public class ABInfo{
        static Queue<ABInfo> pool = new Queue<ABInfo>();
        public AssetBundle bundle;
        public int refCount;
        public string abName;

        public ABInfo()
        {
        }
        /// <summary>
        /// 从缓存池获取或创建
        /// </summary>
        /// <returns></returns>
        public static ABInfo Get(string abName)
        {
            ABInfo ab = null;
            if (pool.Count > 0)
            {
                ab =  pool.Dequeue();
            }
            else
            {
                ab = new ABInfo();
            }

            ab.refCount = 1;
            ab.bundle = null;
            ab.abName = abName;

            return ab;
        }
        /// <summary>
        /// 回收
        /// </summary>
        public void Recycle()
        {
            this.bundle = null;
            this.refCount = 0;
            pool.Enqueue(this);
        }
    }

    [Hotfix]
    [LuaCallCSharp]
    public partial class AssetBundleManager : MonoSingleton<AssetBundleManager>
    {
        // 最大同时进行的ab创建数量
        const int MAX_ASSETBUNDLE_CREATE_NUM = 5;
        // manifest：提供依赖关系查找以及hash值比对
        Manifest manifest = null;
        // 资源路径相关的映射表
        AssetsPathMapping assetsPathMapping = null;
        // 常驻ab包：需要手动添加公共ab包进来，常驻包不会自动卸载（即使引用计数为0），引用计数为0时可以手动卸载
        HashSet<string> assetbundleResident = new HashSet<string>();

        // ab缓存包：所有目前已经加载的ab包，包括临时ab包与公共ab包
        Dictionary<string, ABInfo> assetbundlesCaching = new Dictionary<string, ABInfo>();
       
        // asset缓存：给非公共ab包的asset提供逻辑层的复用
        Dictionary<string, UnityEngine.Object> assetsCaching = new Dictionary<string, UnityEngine.Object>();

        //lua cache
        Dictionary<string, UnityEngine.Object> luaCaching = new Dictionary<string, UnityEngine.Object>();

        // 等待处理的资源请求
        Queue<ResourceWebRequester> webRequesterQueue = new Queue<ResourceWebRequester>();
        // 正在处理的资源请求
        List<ResourceWebRequester> prosessingWebRequester = new List<ResourceWebRequester>();


        // 加载数据请求：正在prosessing或者等待prosessing的资源请求
        Dictionary<string, ResourceAssetBundleRequester> assetbundleRequesting = new Dictionary<string, ResourceAssetBundleRequester>();
        // 等待处理的资源请求
        Queue<ResourceAssetBundleRequester> assetbundleRequesterQueue = new Queue<ResourceAssetBundleRequester>();
        // 正在处理的资源请求
        List<ResourceAssetBundleRequester> prosessingAssetbundleRequester = new List<ResourceAssetBundleRequester>();


        // 逻辑层正在等待的ab加载异步句柄
        List<AssetBundleAsyncLoader> prosessingAssetBundleAsyncLoader = new List<AssetBundleAsyncLoader>();
        // 逻辑层正在等待的asset加载异步句柄
        List<AssetAsyncLoader> prosessingAssetAsyncLoader = new List<AssetAsyncLoader>();
        
        // 为了消除GC
        List<string> tmpStringList = new List<string>(8);
    

#if UNITY_EDITOR || CLIENT_DEBUG
#if !CLIENT_DEBUG
        [BlackList]
#endif
        // Hotfix测试---用于侧测试资源模块的热修复
        //public void TestHotfix()
        //{
        //    Logger.Log("********** AssetBundleManager : Call TestHotfix in cs...");
        //}
#endif

        public IEnumerator Initialize()
        {
#if UNITY_EDITOR
            if (AssetBundleConfig.IsEditorMode)
            {
                yield break;
            }
#endif

            manifest = new Manifest();
            assetsPathMapping = new AssetsPathMapping();
            // 说明：同时请求资源可以提高加载速度
            var manifestRequest = RequestAssetBundleAsync(manifest.AssetbundleName);
            var pathMapRequest = RequestAssetBundleAsync(assetsPathMapping.AssetbundleName);

            yield return manifestRequest;
            var assetbundle = manifestRequest.assetbundle;
            manifest.LoadFromAssetbundle(assetbundle);
            assetbundle.Unload(false);
            manifestRequest.Dispose();

            yield return pathMapRequest;
            assetbundle = pathMapRequest.assetbundle;
            var mapContent = assetbundle.LoadAsset<TextAsset>(assetsPathMapping.AssetName);
            if (mapContent != null)
            {
                assetsPathMapping.Initialize(mapContent.text);
            }
            assetbundle.Unload(true);
            pathMapRequest.Dispose();

            yield break;
        }

        public static string ManifestBundleName
        {
            get
            {
                return BuildUtils.ManifestBundleName;
            }
        }

        public Manifest curManifest
        {
            get
            {
                return manifest;
            }
        }

        public string DownloadUrl
        {
            get
            {
                return URLSetting.SERVER_RESOURCE_URL;
            }
        }

        public bool IsProsessRunning
        {
            get
            {
                return prosessingAssetbundleRequester.Count != 0 || prosessingAssetBundleAsyncLoader.Count != 0 || prosessingAssetAsyncLoader.Count != 0;
            }
        }

        public bool MapAssetPath(string assetPath, out string assetbundleName, out string assetName)
        {
            return assetsPathMapping.MapAssetPath(assetPath, out assetbundleName, out assetName);
        }


    }
}