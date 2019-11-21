using System;
using System.Collections.Generic;
using UnityEngine;
using XLua;

/// <summary>
/// added by wsh @ 2017.12.22
/// 功能：Asset异步加载器，自动追踪依赖的ab加载进度
/// 说明：一定要所有ab都加载完毕以后再加载asset，所以这里分成两个加载步骤
/// </summary>

namespace AssetBundles
{
    [Hotfix]
    [LuaCallCSharp]
    public class AssetAsyncLoader : BaseAssetAsyncLoader
    {
        static Queue<AssetAsyncLoader> pool = new Queue<AssetAsyncLoader>();
        static int sequence = 0;
        protected bool isOver = false;
        protected bool isAsync = false;
        protected BaseAssetBundleAsyncLoader assetbundleLoader = null;
        protected AssetBundleRequest assetBundleRequest = null;

        public static AssetAsyncLoader Get()
        {
            if (pool.Count > 0)
            {
                return pool.Dequeue();
            }
            else
            {
                return new AssetAsyncLoader(++sequence);
            }
        }

        public static void Recycle(AssetAsyncLoader creater)
        {
            pool.Enqueue(creater);
        }

        public AssetAsyncLoader(int sequence)
        {
            Sequence = sequence;
        }

        public void Init(string assetName, UnityEngine.Object asset,bool isAsync = true)
        {
            this.AssetName = assetName;
            this.asset = asset;
            this.assetbundleLoader = null;
            this.isOver = true;
            this.isAsync = isAsync;
        }

        public int Sequence
        {
            get;
            protected set;
        }

        public void Init(string assetName,string assetPath, Type assetType, BaseAssetBundleAsyncLoader loader, bool isAsync = true)
        {
            AssetName = assetName;
            AssetPath = assetPath;
            AssetType = assetType;

            this.asset = null;
            this.isAsync = isAsync;
       
            isOver = false;
            assetbundleLoader = loader;
        }

        public string AssetName
        {
            get;
            protected set;
        }
        public Type AssetType
        {
            get;
            protected set;
        }
        public string AssetPath
        {
            get;
            protected set;
        }

        public override bool IsDone()
        {
            return isOver;
        }

        public override float Progress()
        {
            if (isDone)
            {
                return 1.0f;
            }
            if(isAsync && assetBundleRequest != null)
            {
                return assetBundleRequest.progress * 0.8f+ assetbundleLoader.progress * 0.2f;
            }
            else
            {
                return assetbundleLoader.progress;
            }
            

        }

        public override void Update()
        {
            if (isDone)
            {
                return;
            }
            var assetPath = AssetBundleUtility.PackagePathToAssetsPath(AssetName);

            if (this.isAsync)
            {
                //异步LoadAssetAsync
                if (assetbundleLoader.isDone)
                {
                    if(assetBundleRequest == null)
                    {
                        assetBundleRequest = assetbundleLoader.assetbundle.LoadAssetAsync(assetPath, AssetType);
                    }
                    else
                    {
                        isOver = assetBundleRequest.isDone;
                        if (isOver)
                        {
                            asset = assetBundleRequest.asset;
                            assetbundleLoader.Dispose();
                        }
                    }
                }
            }
            else
            {
                //同步LoadAsset
                isOver = assetbundleLoader.isDone;
                if (isOver)
                {
                    asset = assetbundleLoader.assetbundle.LoadAsset(assetPath, AssetType);
                    assetbundleLoader.Dispose();
                }
                
            }
        }

        public override void Dispose()
        {
            isOver = true;
            AssetName = null;
            AssetPath = null;
            AssetType = null;
            asset = null;
            assetBundleRequest = null;
            Recycle(this);
        }
    }
}
