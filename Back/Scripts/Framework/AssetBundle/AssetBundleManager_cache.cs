using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using XLua;
using System;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace AssetBundles
{
 
    public partial class AssetBundleManager : MonoSingleton<AssetBundleManager>
    {
   
        #region assetbundle cache
        public bool IsAssetBundleLoaded(string assetbundleName)
        {
            ABInfo abInfo = null;
            assetbundlesCaching.TryGetValue(assetbundleName, out abInfo);

            return abInfo!=null && abInfo.bundle != null;
         
        }

        public AssetBundle GetAssetBundleCache(string assetbundleName)
        {
            ABInfo abInfo = null;
            assetbundlesCaching.TryGetValue(assetbundleName, out abInfo);

            if(abInfo != null)
            {
                return abInfo.bundle;
            }
            return null;
        }

        public ABInfo UseAssetBundleCache(string assetbundleName)
        {
            ABInfo abInfo = null;
            assetbundlesCaching.TryGetValue(assetbundleName, out abInfo);

            if(abInfo != null)
            {
                abInfo.refCount++;              
            }
            else
            {
                abInfo = ABInfo.Get(assetbundleName);
                assetbundlesCaching.Add(assetbundleName,abInfo);
            }
            return abInfo;
        }

        public void AddAssetBundleCache(string assetbundleName, AssetBundle assetBundle)
        {
            ABInfo abInfo = null;
            assetbundlesCaching.TryGetValue(assetbundleName, out abInfo);
            if (abInfo != null)
            {
                if(abInfo.bundle != null)
                {
                    Logger.LogError("assetbundle: {0} has been loaded..", assetbundleName);
                }
                else
                {
                    abInfo.bundle = assetBundle;
                }
            }
            else
            {
                Logger.LogError("please add {0} to cache first...", assetbundleName);
            }
        }

        #endregion assetbundle cache

        #region asset cache
        public bool IsAssetLoaded(string assetPath)
        {
            return assetsCaching.ContainsKey(assetPath);
        }

        public UnityEngine.Object GetAssetCache(string assetPath)
        {
            UnityEngine.Object target = null;
            assetsCaching.TryGetValue(assetPath, out target);
            return target;
        }

        public void AddAssetCache(string assetPath, UnityEngine.Object asset)
        {
            assetsCaching[assetPath] = asset;
        }
        
        public void RemoveAssetCache(string assetPath)
        {
            assetsCaching.Remove(assetPath);
        }

        public void ClearAssetsCache()
        {
            assetsCaching.Clear();
        }
        #endregion asset cache

        public UnityEngine.Object GetLuaCache(string luaPath)
        {
            UnityEngine.Object target = null;
            luaCaching.TryGetValue(luaPath, out target);
            return target;
        }

        public IEnumerator Cleanup()
        {
#if UNITY_EDITOR
            if (AssetBundleConfig.IsEditorMode)
            {
                yield break;
            }
#endif

            // 等待所有请求完成
            // 要是不等待Unity很多版本都有各种Bug
            yield return new WaitUntil(() =>
            {
                return !IsProsessRunning;
            });

            UnloadUnusedAssetBundle();

            yield break;
        }

        //卸载个assetbundle
        public void UnloadAssetBundle(string assetbundleName)
        {
            if (manifest == null) return;

            string[] dependancies = manifest.GetAllDependencies(assetbundleName);
            for (int i = 0; i < dependancies.Length; i++)
            {
                var dependance = dependancies[i];
                DistroyAssetBundleCache(dependance);
            }
            DistroyAssetBundleCache(assetbundleName);
        }

        //卸载asset依赖的assetbundle
        public void UnloadAssetBundleByAssetpath(string assetPath, bool deleteAssetCache = false)
        {
#if UNITY_EDITOR
            if (AssetBundleConfig.IsEditorMode)
            {
                return;
            }
#endif

            if (deleteAssetCache)
            {
                //如果不在已加的缓存字典中  不卸载
                if(assetsCaching.ContainsKey(assetPath))
                {
                    assetsCaching.Remove(assetPath);
                }
                else
                {
                    Logger.LogError("assetsCaching不存在该资源 "+assetPath);
                    return;
                }
            
            }

            string assetbundleName = null;
            string assetName = null;
            bool status = MapAssetPath(assetPath, out assetbundleName, out assetName);
            if (!status)
            {
                Logger.LogError("No asset {0} in assetbundle {1} at asset path {2}", assetName, assetbundleName, assetPath);
                return;
            }
            UnloadAssetBundle(assetbundleName);

        }
       
        // 用于卸载无用AB包：如果该AB包还在使用，则卸载失败
        public void UnloadUnusedAssetBundle()
        {
           foreach(string path in assetsCaching.Keys)
           {
                UnloadAssetBundleByAssetpath(path);
           }
            assetsCaching.Clear();
        }

        public void DistroyAssetBundleCache(string assetbundleName)
        {
            ABInfo abInfo = null;
            assetbundlesCaching.TryGetValue(assetbundleName, out abInfo);
            if (abInfo != null)
            {
                abInfo.refCount--;
            }
            else
            {
                Logger.LogError("can not find ab {0} in assetbundlesCaching", assetbundleName);
            }
        }

    }
}