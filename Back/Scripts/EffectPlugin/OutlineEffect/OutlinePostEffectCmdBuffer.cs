/********************************************************************
 FileName: OutlinePostEffectCmdBuffer.cs
 Description: 后处理描边效果CommandBuffer版本
 Created: 2017/06/07
 by puppet_master
*********************************************************************/
using UnityEngine;
using System.Collections;
using UnityEngine.Rendering;
using System.Collections.Generic;

public class OutlinePostEffectCmdBuffer : PostEffectBase
{
    private RenderTexture renderTexture = null;
    private RenderTexture renderTexture1 = null;
    private CommandBuffer commandBuffer = null;
    private Material outlineMaterial = null;
    //描边prepass shader（渲染纯色贴图的shader）
    public Shader outlineShader = null;
    //采样率
    public float samplerScale = 1;
    //降采样
    public int downSample = 1;
    //迭代次数
    public int iteration = 2;
    //描边颜色
    public Color outLineColor = Color.green;
    //描边强度
    [Range(0.0f, 10.0f)]
    public float outLineStrength = 3.0f;
    //目标对象
    public GameObject[] targetObjects = null;


    void OnEnable()
    {
        if (outlineShader == null)
        {
            outlineShader = Shader.Find("Hidden/OutlinePrePass");
        }
        if(shader == null)
        {
            shader = Shader.Find("Hidden/OutLinePostEffect");
        }
          

        if (outlineMaterial == null)
            outlineMaterial = new Material(outlineShader);

        if (targetObjects == null || targetObjects.Length < 1) return;

        List<Renderer> renderers = new List<Renderer>();
        for (int i = 0 ; i < targetObjects.Length ; i++)
        {
            var obj = targetObjects[i];
            var rds = obj.GetComponentsInChildren<Renderer>(); 
            if(rds != null && rds.Length > 0)
            {
                renderers.AddRange(rds);
            }
        }
        
        if (renderTexture == null)
        {           
            renderTexture = RenderTexture.GetTemporary(1920, 1080, 0);
            renderTexture.name = "[OutlinePrePost]";
        }
        if (renderTexture1 == null)
        {
            renderTexture1 = RenderTexture.GetTemporary(1920, 1080, 0);
            renderTexture1.name = "[OutlinePrePost1]";
        }
        //创建描边prepass的command buffer
        commandBuffer = new CommandBuffer();
        commandBuffer.SetRenderTarget(renderTexture);
        commandBuffer.ClearRenderTarget(true, true, Color.clear);
        foreach (Renderer r in renderers)
            commandBuffer.DrawRenderer(r, outlineMaterial,0,0);
        commandBuffer.SetRenderTarget(renderTexture1);
        commandBuffer.ClearRenderTarget(true, true, Color.clear);
        foreach (Renderer r in renderers)
            commandBuffer.DrawRenderer(r, outlineMaterial, 0, 1);
    }

    void OnDisable()
    {
        if (renderTexture)
        {
            RenderTexture.ReleaseTemporary(renderTexture);
            renderTexture = null;
        }
        if (outlineMaterial)
        {
            DestroyImmediate(outlineMaterial);
            outlineMaterial = null;
        }
        if (commandBuffer != null)
        {
            commandBuffer.Release();
            commandBuffer = null;
        }

    }

    void OnRenderImage( RenderTexture source, RenderTexture destination )
    {
        if (_Material && renderTexture && outlineMaterial && commandBuffer != null)
        {
            //通过Command Buffer可以设置自定义材质的颜色
            outlineMaterial.SetColor("_OutlineCol", outLineColor);
            //直接通过Graphic执行Command Buffer
            Graphics.ExecuteCommandBuffer(commandBuffer);

            //对RT进行Blur处理
            RenderTexture temp1 = RenderTexture.GetTemporary(1920, 1080, 0);
            //RenderTexture temp2 = RenderTexture.GetTemporary(source.width >> downSample, source.height >> downSample, 0);
            //Graphics.Blit(renderTexture, temp1);
            //Graphics.Blit(temp1, temp2);
            ////高斯模糊，两次模糊，横向纵向，使用pass0进行高斯模糊
            //_Material.SetVector("_offsets", new Vector4(0, samplerScale, 0, 0));
            //Graphics.Blit(renderTexture, temp1, _Material, 0);
            //_Material.SetVector("_offsets", new Vector4(samplerScale, 0, 0, 0));
            //Graphics.Blit(temp1, temp2, _Material, 0);

            ////如果有叠加再进行迭代模糊处理
            //for (int i = 0 ; i < iteration ; i++)
            //{
            //    _Material.SetVector("_offsets", new Vector4(0, samplerScale, 0, 0));
            //    Graphics.Blit(temp2, temp1, _Material, 0);
            //    _Material.SetVector("_offsets", new Vector4(samplerScale, 0, 0, 0));
            //    Graphics.Blit(temp1, temp2, _Material, 0);
            //}

            //用模糊图和原始图计算出轮廓图
            _Material.SetTexture("_BlurTex", renderTexture1);
            Graphics.Blit(renderTexture, temp1, _Material, 1);

            //轮廓图和场景图叠加
            _Material.SetTexture("_BlurTex", temp1);
            _Material.SetFloat("_OutlineStrength", outLineStrength);
            Graphics.Blit(source, destination, _Material, 2);

            RenderTexture.ReleaseTemporary(temp1);
           // RenderTexture.ReleaseTemporary(temp2);
        } else
        {
            Graphics.Blit(source, destination);
        }
    }


}