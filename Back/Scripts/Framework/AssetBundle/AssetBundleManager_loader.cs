using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using XLua;
using System;
using UnityEngine.U2D;
#if UNITY_EDITOR
using UnityEditor;
#endif
/// <summary>
///  AssetBundleManager 管理类
///  
///  1， RequestAssetBundleAsync()
///      此方法只能加载无依赖的assetbundle文件，调用此方法不计引用计数
///      
///  2， LoadAssetBundleAsync()
///      此方法可以加载有依赖关系的assetbundle文件，assetbundle将自动缓存，如果
///      使用完后不在需要，可调用UnloadAssetBundle()将此assetbundle及其依赖卸载
///  
///  3， LoadAssetAsync()
///      所有资源文件统一用此方法加载，内部自动进行引用计数管理，切换场景时将自
///      动调用 UnloadUnusedAssetBundle（）卸载所有资源及assetbundle
/// 
/// </summary>
namespace AssetBundles
{
   
    public partial class AssetBundleManager : MonoSingleton<AssetBundleManager>
    {
     
        public ResourceAssetBundleRequester GetAssetBundleAsyncCreater(string assetbundleName)
        {
            ResourceAssetBundleRequester creater = null;
            assetbundleRequesting.TryGetValue(assetbundleName, out creater);
            return creater;
        }

        private bool CreateAssetBundleAsync(string assetbundleName)
        {
            if (IsAssetBundleLoaded(assetbundleName) || assetbundleRequesting.ContainsKey(assetbundleName))
            {
                return false;
            }

            var creater = ResourceAssetBundleRequester.Get();
            var url = AssetBundleUtility.GetAssetBundleFileUrl(assetbundleName);
            creater.Init(assetbundleName, url);
            assetbundleRequesting.Add(assetbundleName, creater);
            assetbundleRequesterQueue.Enqueue(creater);
           
            return true;
        }


        // 异步请求Assetbundle资源，assetbundle及依赖将自动缓存,若需要卸载，调用UnloadAssetBundle
        public BaseAssetBundleAsyncLoader LoadAssetBundleAsync(string assetbundleName)
        {
#if UNITY_EDITOR
            if (AssetBundleConfig.IsEditorMode)
            {
                return new EditorAssetBundleAsyncLoader(assetbundleName);
            }
#endif

            var loader = AssetBundleAsyncLoader.Get();
            prosessingAssetBundleAsyncLoader.Add(loader);
            if (manifest != null)
            {
                string[] dependancies = manifest.GetAllDependencies(assetbundleName);
                for (int i = 0; i < dependancies.Length; i++)
                {
                    var dependance = dependancies[i];
                    if (!string.IsNullOrEmpty(dependance) && dependance != assetbundleName)
                    {
                        // A依赖于B，A对B持有引用, 依赖持有引用
                        CreateAssetBundleAsync(dependance);
                        UseAssetBundleCache(dependance);
                    }
                }
                loader.Init(assetbundleName, dependancies);
            }
            else
            {
                loader.Init(assetbundleName, null);
            }

            // 加载器持有的引用：同一个ab能同时存在多个加载器，等待ab创建器完成
            CreateAssetBundleAsync(assetbundleName);
            UseAssetBundleCache(assetbundleName);

            return loader;
        }

        // 本地异步请求单独Assetbundle资源，不计引用计数、不缓存，Creater使用后记得回收
        public ResourceAssetBundleRequester RequestAssetBundleAsync(string assetbundleName)
        {
            var creater = ResourceAssetBundleRequester.Get();
            var url = AssetBundleUtility.GetAssetBundleFileUrl(assetbundleName);
            creater.Init(assetbundleName, url, true);
            assetbundleRequesting.Add(assetbundleName, creater);
            assetbundleRequesterQueue.Enqueue(creater);
            return creater;
        }

        //所有资源加载统一调用此方法，方法内存会统一对assetbundle进行引用计数管理，
        //在调用 UnloadUnusedAssetBundle
        //时会自动移除所有asset缓存，并卸载asset所依赖的所有assetbundle
        public BaseAssetAsyncLoader LoadAssetAsync(string assetPath, System.Type assetType,bool assetAsync = false)
        {
#if UNITY_EDITOR
            if (AssetBundleConfig.IsEditorMode)
            {
                string path = AssetBundleUtility.PackagePathToAssetsPath(assetPath);
                UnityEngine.Object target = AssetDatabase.LoadAssetAtPath(path, assetType);
                return new EditorAssetAsyncLoader(target);
            }
#endif

            string assetbundleName = null;
            string assetName = null;
            bool status = MapAssetPath(assetPath, out assetbundleName, out assetName);
            if (!status)
            {
                Logger.LogError("No asset {0} in assetbundle {1} at asset path {2}", assetName, assetbundleName, assetPath);
                return null;
            }

            var loader = AssetAsyncLoader.Get();
            prosessingAssetAsyncLoader.Add(loader);
            if (IsAssetLoaded(assetPath))
            {
                loader.Init(assetName, GetAssetCache(assetPath), assetAsync);
                return loader;
            }
            else
            {
                var assetbundleLoader = LoadAssetBundleAsync(assetbundleName);
                loader.Init(assetName, assetPath, assetType, assetbundleLoader, assetAsync);
                return loader;
            }
        }
  

        public IEnumerator PreLoadLua()
        {
#if UNITY_EDITOR
            if (AssetBundleConfig.IsEditorMode)
            {
                yield break;
            }
#endif

            string luaAssetbundleName = XLuaManager.Instance.AssetbundleName;
            var abloader =LoadAssetBundleAsync(luaAssetbundleName);
            yield return abloader;

            luaCaching.Clear();
            AssetBundle curAssetbundle = abloader.assetbundle;
            var allAssetNames = assetsPathMapping.GetAllAssetNames(luaAssetbundleName);
            for (int i = 0; i < allAssetNames.Count; i++)
            {
                var assetName = allAssetNames[i];
                if (luaCaching.ContainsKey(assetName)) continue;

                var assetPath = AssetBundleUtility.PackagePathToAssetsPath(assetName);
                var asset = curAssetbundle == null ? null : curAssetbundle.LoadAsset(assetPath);

                luaCaching[assetName] = asset;
            }


            abloader.Dispose();
        }
    }
}