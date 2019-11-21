using AssetBundles;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;

/// <summary>
/// 文本控件，支持超链接、图片
/// </summary>
[AddComponentMenu("UI/LinkImageText", 10)]
public class LinkImageText : Text, IPointerClickHandler
{

    /// <summary>
    /// 图片池
    /// </summary>
    protected readonly List<Image> m_ImagesPool = new List<Image>();

    /// <summary>
    /// 图片的最后一个顶点的索引
    /// </summary>
    private readonly List<int> m_ImagesVertexIndex = new List<int>();


    /// <summary>
    /// 超链接信息列表
    /// </summary>
    private readonly List<HrefInfo> m_HrefInfos = new List<HrefInfo>();

    /// <summary>
    /// 文本构造器
    /// </summary>
    protected static readonly StringBuilder s_TextBuilder = new StringBuilder();

    [Serializable]
    public class HrefClickEvent : UnityEvent<string> { }

    [SerializeField]
    private HrefClickEvent m_OnHrefClick = new HrefClickEvent();

    /// <summary>
    /// 超链接点击事件
    /// </summary>
    public HrefClickEvent onHrefClick
    {
        get { return m_OnHrefClick; }
        set { m_OnHrefClick = value; }
    }

    /// <summary>
    /// 正则取出所需要的属性
    /// </summary>
    private static readonly Regex s_ImageRegex =
        new Regex(@"<quad name=(.+?) size=(\d*\.?\d+%?) width=(\d*\.?\d+%?) />", RegexOptions.Singleline);

    /// <summary>
    /// 超链接正则
    /// </summary>
    private static readonly Regex s_HrefRegex =
        new Regex(@"<a href=([^>\n\s]+)>(.*?)(</a>)", RegexOptions.Singleline);

    /// <summary>
    /// 加载精灵图片方法
    /// </summary>
    public static Func<string, Sprite> funLoadSprite;

    private string finalText = string.Empty;
    public override string text
    {
        set
        {
            finalText = GetOutputText(value);
            UpdateQuadImage(finalText);
            base.text = finalText;
        }
    }


    protected void UpdateQuadImage(string m_OutputText)
    {
        m_ImagesVertexIndex.Clear();
        foreach (Match match in s_ImageRegex.Matches(m_OutputText))
        {
            var picIndex = match.Index;
            var endIndex = picIndex * 4 + 3;
            m_ImagesVertexIndex.Add(endIndex);

            m_ImagesPool.RemoveAll(image => image == null);
            if (m_ImagesPool.Count == 0)
            {
                GetComponentsInChildren<Image>(m_ImagesPool);
            }
            if (m_ImagesVertexIndex.Count > m_ImagesPool.Count)
            {
                var resources = new DefaultControls.Resources();
                var go = DefaultControls.CreateImage(resources);
                go.layer = gameObject.layer;
                var rt = go.transform as RectTransform;
                if (rt)
                {
                    rt.SetParent(rectTransform);
                    rt.localPosition = Vector3.zero;
                    rt.localRotation = Quaternion.identity;
                    rt.localScale = Vector3.one;
                }
                m_ImagesPool.Add(go.GetComponent<Image>());
            }

            var spriteName = match.Groups[1].Value;
            var size = float.Parse(match.Groups[2].Value);
            var img = m_ImagesPool[m_ImagesVertexIndex.Count - 1];
            if (img.sprite == null || img.sprite.name != spriteName)
            {
                StartCoroutine(LoadSprite("Art/UI/DynamicTex/" + spriteName + ".png", img));
            }
            img.rectTransform.sizeDelta = new Vector2(size, size);
            img.enabled = true;
        }

        for (var i = m_ImagesVertexIndex.Count; i < m_ImagesPool.Count; i++)
        {
            if (m_ImagesPool[i])
            {
                m_ImagesPool[i].enabled = false;
            }
        }
    }

    IEnumerator LoadSprite(string path,Image img)
    {
        var loader = AssetBundleManager.Instance.LoadAssetAsync(path, typeof(Sprite));
        yield return loader;
        if(loader.asset != null)
        {
            img.sprite = loader.asset as Sprite;
        }
        loader.Dispose();
       
    }
    readonly UIVertex[] m_TempVerts = new UIVertex[4];
    private Vector2 _zero = new Vector2(0, 0);
    protected override void OnPopulateMesh(VertexHelper toFill)
    {
        if (font == null)
            return;
        // We don't care if we the font Texture changes while we are doing our Update.
        // The end result of cachedTextGenerator will be valid for this instance.
        // Otherwise we can get issues like Case 619238.
        m_DisableFontTextureRebuiltCallback = true;

        Vector2 extents = rectTransform.rect.size;

        var settings = GetGenerationSettings(extents);
        cachedTextGenerator.PopulateWithErrors(text, settings, gameObject);

        // Apply the offset to the vertices
        IList<UIVertex> verts = cachedTextGenerator.verts;
        float unitsPerPixel = 1 / pixelsPerUnit;
        //Last 4 verts are always a new line... (\n)
        int vertCount = verts.Count - 4;

        Vector2 roundingOffset = new Vector2(verts[0].position.x, verts[0].position.y) * unitsPerPixel;
        roundingOffset = PixelAdjustPoint(roundingOffset) - roundingOffset;
        bool haveRoundingOffset = roundingOffset != Vector2.zero;
        toFill.Clear();

        for (int i = 0; i < vertCount; i++)
        {
            int tempVertsIndex = i & 3;
            m_TempVerts[tempVertsIndex] = verts[i];
            m_TempVerts[tempVertsIndex].position *= unitsPerPixel;
            if (haveRoundingOffset)
            {
                m_TempVerts[tempVertsIndex].position.x += roundingOffset.x;
                m_TempVerts[tempVertsIndex].position.y += roundingOffset.y;
            }
            if (tempVertsIndex == 3)
            {
                if (m_ImagesVertexIndex.Contains(i))
                {
                    for (int j = 0; j < 4; j++)
                    {
                        m_TempVerts[j].uv0 = _zero;
                    }
                }             
                toFill.AddUIVertexQuad(m_TempVerts);
            }
        }
        // 处理超链接包围框
        UIVertex vert = new UIVertex();
        foreach (var hrefInfo in m_HrefInfos)
        {
            hrefInfo.boxes.Clear();
            if (hrefInfo.startIndex >= vertCount)
            {
                continue;
            }

            // 将超链接里面的文本顶点索引坐标加入到包围框
            vert = verts[hrefInfo.startIndex];
            var pos = vert.position;
            var bounds = new Bounds(pos, Vector3.zero);
            for (int i = hrefInfo.startIndex, m = hrefInfo.endIndex; i < m; i++)
            {
                if (i >= vertCount)
                {
                    break;
                }
                vert = verts[i];
                pos = vert.position;
                if (pos.x < bounds.min.x) // 换行重新添加包围框
                {
                    hrefInfo.boxes.Add(new Rect(bounds.min, bounds.size));
                    bounds = new Bounds(pos, Vector3.zero);
                }
                else
                {
                    bounds.Encapsulate(pos); // 扩展包围框
                }
            }
            hrefInfo.boxes.Add(new Rect(bounds.min, bounds.size));
        }
        m_DisableFontTextureRebuiltCallback = false;

    }

    /// <summary>
    /// 获取超链接解析后的最后输出文本
    /// </summary>
    /// <returns></returns>
    protected virtual string GetOutputText(string outputText)
    {
        s_TextBuilder.Length = 0;
        m_HrefInfos.Clear();
        var indexText = 0;
        foreach (Match match in s_HrefRegex.Matches(outputText))
        {
            s_TextBuilder.Append(outputText.Substring(indexText, match.Index - indexText));
        //    s_TextBuilder.Append("<color=blue>");  // 超链接颜色

            var group = match.Groups[1];
            var hrefInfo = new HrefInfo
            {
                startIndex = s_TextBuilder.Length * 4, // 超链接里的文本起始顶点索引
                endIndex = (s_TextBuilder.Length + match.Groups[2].Length - 1) * 4 + 3,
                name = group.Value
            };
            m_HrefInfos.Add(hrefInfo);

            s_TextBuilder.Append(match.Groups[2].Value);
        //    s_TextBuilder.Append("</color>");
            indexText = match.Index + match.Length;
        }
        s_TextBuilder.Append(outputText.Substring(indexText, outputText.Length - indexText));
        return s_TextBuilder.ToString();
    }
    /// <summary>
    /// 点击事件检测是否点击到超链接文本
    /// </summary>
    /// <param name="eventData"></param>
    public void OnPointerClick(PointerEventData eventData)
    {
        Vector2 lp;
        RectTransformUtility.ScreenPointToLocalPointInRectangle(
            rectTransform, eventData.position, eventData.pressEventCamera, out lp);

        foreach (var hrefInfo in m_HrefInfos)
        {
            var boxes = hrefInfo.boxes;
            for (var i = 0; i < boxes.Count; ++i)
            {
                if (boxes[i].Contains(lp))
                {
                    m_OnHrefClick.Invoke(hrefInfo.name);
                    return;
                }
            }
        }
    }

    /// <summary>
    /// 超链接信息类
    /// </summary>
    private class HrefInfo
    {
        public int startIndex;

        public int endIndex;

        public string name;

        public readonly List<Rect> boxes = new List<Rect>();
    }
}
