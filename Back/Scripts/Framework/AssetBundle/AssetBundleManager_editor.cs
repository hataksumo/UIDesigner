﻿using UnityEngine;
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
        #region editor use
#if UNITY_EDITOR
        [BlackList]
        public HashSet<string> GetAssetbundleResident()
        {
            return assetbundleResident;
        }

        [BlackList]
        public ICollection<string> GetAssetbundleCaching()
        {
            return assetbundlesCaching.Keys;
        }

        [BlackList]
        public Dictionary<string, ResourceAssetBundleRequester> GetWebRequesting()
        {
            return assetbundleRequesting;
        }

        [BlackList]
        public Queue<ResourceWebRequester> GetWebRequestQueue()
        {
            return webRequesterQueue;
        }

        [BlackList]
        public List<ResourceWebRequester> GetProsessingWebRequester()
        {
            return prosessingWebRequester;
        }

        [BlackList]
        public List<AssetBundleAsyncLoader> GetProsessingAssetBundleAsyncLoader()
        {
            return prosessingAssetBundleAsyncLoader;
        }

        [BlackList]
        public List<AssetAsyncLoader> GetProsessingAssetAsyncLoader()
        {
            return prosessingAssetAsyncLoader;
        }

        [BlackList]
        public string GetAssetBundleName(string assetName)
        {
            return assetsPathMapping.GetAssetBundleName(assetName);
        }

        [BlackList]
        public int GetAssetCachingCount()
        {
            return assetsCaching.Count;
        }

        [BlackList]
        public Dictionary<string, List<string>> GetAssetCaching()
        {
            var assetbundleDic = new Dictionary<string, List<string>>();
            List<string> assetNameList = null;
            
            var iter = assetsCaching.GetEnumerator();
            while (iter.MoveNext())
            {
                var assetName = iter.Current.Key;
                var assetbundleName = assetsPathMapping.GetAssetBundleName(assetName);
                assetbundleDic.TryGetValue(assetbundleName, out assetNameList);
                if (assetNameList == null)
                {
                    assetNameList = new List<string>();
                }
                assetNameList.Add(assetName);
                assetbundleDic[assetbundleName] = assetNameList;
            }
            return assetbundleDic;
        }

        [BlackList]
        public int GetAssetbundleRefrenceCount(string assetbundleName)
        {
            ABInfo abinfo = null;
            assetbundlesCaching.TryGetValue(assetbundleName, out abinfo);

            if(abinfo != null) {
                return abinfo.refCount;
            }
            return 0;
        }

        [BlackList]
        public int GetAssetbundleDependenciesCount(string assetbundleName)
        {
            string[] dependancies = manifest.GetAllDependencies(assetbundleName);
            int count = 0;
            for (int i = 0; i < dependancies.Length; i++)
            {
                var cur = dependancies[i];
                if (!string.IsNullOrEmpty(cur) && cur != assetbundleName)
                {
                    count++;
                }
            }
            return count;
        }

        [BlackList]
        public List<string> GetAssetBundleRefrences(string assetbundleName)
        {
            List<string> refrences = new List<string>();
            var cachingIter = assetbundlesCaching.GetEnumerator();
            while (cachingIter.MoveNext())
            {
                var curAssetbundleName = cachingIter.Current.Key;
                if (curAssetbundleName == assetbundleName)
                {
                    continue;
                }
                string[] dependancies = manifest.GetAllDependencies(curAssetbundleName);
                for (int i = 0; i < dependancies.Length; i++)
                {
                    var dependance = dependancies[i];
                    if (dependance == assetbundleName)
                    {
                        refrences.Add(curAssetbundleName);
                    }
                }
            }

            var requestingIter = assetbundleRequesting.GetEnumerator();
            while (requestingIter.MoveNext())
            {
                var curAssetbundleName = requestingIter.Current.Key;
                if (curAssetbundleName == assetbundleName)
                {
                    continue;
                }

                string[] dependancies = manifest.GetAllDependencies(curAssetbundleName);
                for (int i = 0; i < dependancies.Length; i++)
                {
                    var dependance = dependancies[i];
                    if (dependance == assetbundleName)
                    {
                        refrences.Add(curAssetbundleName);
                    }
                }
            }
            return refrences;
        }

        [BlackList]
        public List<string> GetAssetBundleRequesterRefrences(string assetbundleName)
        {
            List<string> refrences = new List<string>();
            var iter = assetbundleRequesting.GetEnumerator();
            while (iter.MoveNext())
            {
                var curAssetbundleName = iter.Current.Key;
                var webRequster = iter.Current.Value;
                if (curAssetbundleName == assetbundleName)
                {
                    refrences.Add(webRequster.Sequence.ToString());
                    continue;
                }
            }
            return refrences;
        }

        [BlackList]
        public List<string> GetAssetBundleLoaderRefrences(string assetbundleName)
        {
            List<string> refrences = new List<string>();
            var iter = prosessingAssetBundleAsyncLoader.GetEnumerator();
            while (iter.MoveNext())
            {
                var curAssetbundleName = iter.Current.assetbundleName;
                var curLoader = iter.Current;
                if (curAssetbundleName == assetbundleName)
                {
                    refrences.Add(curLoader.Sequence.ToString());
                }
            }
            return refrences;
        }
#endif
        #endregion editor use
    }
}