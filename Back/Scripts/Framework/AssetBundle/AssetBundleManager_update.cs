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
        void Update()
        {
            OnProcessingUnloadAssetBundle();
            OnProsessingAssetBundleRequester();
            OnProsessingWebRequester();
            OnProsessingAssetBundleAsyncLoader();
            OnProsessingAssetAsyncLoader();
        }

        void OnProcessingUnloadAssetBundle()
        {
            foreach(ABInfo abinfo in assetbundlesCaching.Values)
            {
               if(abinfo.refCount < 1 && abinfo.bundle != null && !assetbundleResident.Contains(abinfo.abName))
                {
                    //临时修改,原来是true，修改为false可能会有资源下载不掉的情况，但是不会引起程序奔溃
                    abinfo.bundle.Unload(true);
                    //abinfo.bundle.Unload(false);
                    tmpStringList.Add(abinfo.abName);
                }
            }
            foreach(string abName in tmpStringList)
            {
                assetbundlesCaching.Remove(abName);
            }
            tmpStringList.Clear();
        }

        void OnProsessingAssetBundleRequester()
        {
            for (int i = prosessingAssetbundleRequester.Count - 1; i >= 0; i--)
            {
                var creater = prosessingAssetbundleRequester[i];
                creater.Update();
                if (creater.IsDone())
                {
                    prosessingAssetbundleRequester.RemoveAt(i);
                    assetbundleRequesting.Remove(creater.assetbundleName);
                    if (creater.noCache)
                    {
                        // 无缓存，不计引用计数、Creater使用后由上层回收，所以这里不需要做任何处理
                    }
                    else
                    {
                        // AB缓存
                        // 说明：有错误也缓存下来，只不过资源为空
                        // 1、避免再次错误加载
                        // 2、如果不存下来加载器将无法判断什么时候结束
                        AddAssetBundleCache(creater.assetbundleName, creater.assetbundle);

                        creater.Dispose();
                    }
                }
            }
            int slotCount = prosessingAssetbundleRequester.Count;
            while (slotCount < MAX_ASSETBUNDLE_CREATE_NUM && assetbundleRequesterQueue.Count > 0)
            {
                var creater = assetbundleRequesterQueue.Dequeue();
                creater.Start();
                prosessingAssetbundleRequester.Add(creater);
                slotCount++;
            }
        }

        void OnProsessingWebRequester()
        {
            for (int i = prosessingWebRequester.Count - 1; i >= 0; i--)
            {
                var creater = prosessingWebRequester[i];
                creater.Update();
                if (creater.IsDone())
                {
                    prosessingWebRequester.RemoveAt(i);
                }
            }
            int slotCount = prosessingWebRequester.Count;
            while (slotCount < MAX_ASSETBUNDLE_CREATE_NUM && webRequesterQueue.Count > 0)
            {
                var creater = webRequesterQueue.Dequeue();
                creater.Start();
                prosessingWebRequester.Add(creater);
                slotCount++;
            }
        }
        
        void OnProsessingAssetBundleAsyncLoader()
        {
            for (int i = prosessingAssetBundleAsyncLoader.Count - 1; i >= 0; i--)
            {
                var loader = prosessingAssetBundleAsyncLoader[i];
                loader.Update();
                if (loader.IsDone())
                {
                    prosessingAssetBundleAsyncLoader.RemoveAt(i);
                }
            }
        }

        void OnProsessingAssetAsyncLoader()
        {
            for (int i = prosessingAssetAsyncLoader.Count - 1; i >= 0; i--)
            {
                var loader = prosessingAssetAsyncLoader[i];
                loader.Update();
                if (loader.IsDone())
                {
                    //asset 加载完成，添加到cache,如果AssetPath为空，说明assetCache中存在
                    if (loader.AssetPath != null)
                    {
#if UNITY_EDITOR
                        // 说明：在Editor模拟时，Shader要重新指定
                        var go = loader.asset as GameObject;
                        if (go != null)
                        {
                            var renderers = go.GetComponentsInChildren<Renderer>();
                            for (int j = 0; j < renderers.Length; j++)
                            {
                                var mat = renderers[j].sharedMaterial;
                                if (mat == null)
                                {
                                    continue;
                                }

                                var shader = mat.shader;
                                if (shader != null)
                                {
                                    var shaderName = shader.name;
                                    mat.shader = Shader.Find(shaderName);
                                }
                            }
                        }
#endif
                        AddAssetCache(loader.AssetPath, loader.asset);
                    }
                    prosessingAssetAsyncLoader.RemoveAt(i);
                }
            }
        }



    }
}