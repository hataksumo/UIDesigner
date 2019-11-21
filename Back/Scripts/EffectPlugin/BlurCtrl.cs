using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


namespace LJ_TimelineExtension
{
    [ExecuteInEditMode]
    [RequireComponent(typeof(Camera))]
    public class BlurCtrl : MonoBehaviour
    {
        // 替代的材料
        private Material _material;
        public Shader shader;
        // 模糊程度
        [Range(0, 2f)]
        public float BlurRange;
        private int interator = 2;

        public static BlurCtrl _instance;

        private void OnEnable()
        {
            _instance = this;
            _material = CreateMaterial(shader);
        }
        private Material CreateMaterial( Shader shader )
        {
            Material mat = null;
            if (shader == null) return null;
            if (shader.isSupported)
            {
                mat = new Material(shader);
                mat.hideFlags = HideFlags.DontSave;
            } else
            {
                Debug.LogError("Can not Create Material cuz shader is null");
            }

            return mat;
        }

        //计算 sample 与 BlurRange的对应关系
        private int CalSample( float blurRange )
        {
            float temp = 0f;
            int sample = 0;
            // 一阶拟合函数
            temp = 3.11f * BlurRange - 0.16f;
            sample = Mathf.CeilToInt(temp);
            return sample;
        }
        private void OnRenderImage( RenderTexture src, RenderTexture dest )
        {
            // 设置参数
            if (_instance)
            {
                _material.SetFloat("_BlurRange", BlurRange);

                // 初始化抓取屏幕的参数
                int height = src.height >> CalSample(BlurRange);
                int width = src.width >> CalSample(BlurRange);

                // 获取当前屏幕的缓存图像
                RenderTexture buffer0 = RenderTexture.GetTemporary(width, height, 0, src.format);
                RenderTexture buffer1 = RenderTexture.GetTemporary(width, height, 0, src.format);

                buffer0.filterMode = FilterMode.Bilinear;
                buffer0.filterMode = FilterMode.Bilinear;

                // 缓存当前图像
                Graphics.Blit(src, buffer0);
                //卷积
                for (int i = 0 ; i < interator ; i++)
                {
                    _material.SetVector("_offset", new Vector4(0, BlurRange, 0, 0));
                    Graphics.Blit(buffer0, buffer1, _material);
                    _material.SetVector("_offset", new Vector4(BlurRange, 0, 0, 0));
                    Graphics.Blit(buffer1, buffer0, _material);
                }

                // 拷贝到输出图像
                Graphics.Blit(buffer1, dest);

                //释放内存
                RenderTexture.ReleaseTemporary(buffer0);
                RenderTexture.ReleaseTemporary(buffer1);
            }

        }
    }

}