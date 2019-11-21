using XLua;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
///  异步加载AB
/// </summary>
namespace AssetBundles
{
    [Hotfix]
    [LuaCallCSharp]
    public class ResourceAssetBundleRequester : ResourceAsyncOperation
    {
        static Queue<ResourceAssetBundleRequester> pool = new Queue<ResourceAssetBundleRequester>();
        static int sequence = 0;
        protected bool isOver = false;
        AssetBundleCreateRequest assetBundleCreate;

        public static ResourceAssetBundleRequester Get()
        {
            if (pool.Count > 0)
            {
                return pool.Dequeue();
            }
            else
            {
                return new ResourceAssetBundleRequester(++sequence);
            }
        }

        public static void Recycle(ResourceAssetBundleRequester creater)
        {
            pool.Enqueue(creater);
        }

        public ResourceAssetBundleRequester(int sequence)
        {
            Sequence = sequence;
        }

        public void Init(string name, string path, bool noCache = false)
        {
            assetbundleName = name;
            this.path = path;
            this.noCache = noCache;

            isOver = false;
        }

        public void Start()
        {
           assetBundleCreate = AssetBundle.LoadFromFileAsync(this.path);
            
            if(assetBundleCreate == null)
            {
                Logger.LogError("load ab:{0} ,path:{1} error:",assetbundleName,this.path);
                isOver = true;
            }
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
            return assetBundleCreate!=null?assetBundleCreate.progress:0f;
        }

        public override void Update()
        {
            if(isDone)
            {
                return;
            }
            isOver = assetBundleCreate != null && assetBundleCreate.isDone;
            if (!isOver)
            {
                
                return;
            }
        }


        public int Sequence
        {
            get;
            protected set;
        }

        public bool noCache
        {
            get;
            protected set;
        }

        public string assetbundleName
        {
            get;
            protected set;
        }

        public string path
        {
            get;
            protected set;
        }

        public AssetBundle assetbundle
        {
            get
            {
                return assetBundleCreate.assetBundle;
            }
        }

        public override void Dispose()
        {
            if (assetBundleCreate != null)
            {
                assetBundleCreate = null;
            }
            Recycle(this);
        }

    

    }

}
