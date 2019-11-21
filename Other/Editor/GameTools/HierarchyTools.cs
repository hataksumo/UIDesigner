using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;
/// <summary>
/// 添加Hierarychy中的右键菜单
/// 说明："GameObject/"下[priority小于等于49]的按钮会出现在Hierarychy的右键菜单中
/// </summary>
public class HierarchyTools
{
    static readonly TextEditor CopyTool = new TextEditor();
    /// <summary>
    /// 将一个GameObject在Hierarchy中的完整路径拷贝的剪切板
    /// </summary>
    [MenuItem("GameObject/Copy Path", priority = 20)]
    static void CopyTransPath()
    {
        Transform trans = Selection.activeTransform;
        if (trans == null) return;
        string path = GetTransPath(trans);

        string[] paths = path.Split(new char[] { '/'});

        string suffix = GetTransTypeText(trans);

        string pathText = "local " + trans.name.ToLower().Replace(' ','_')+ suffix+"_path = \"";
        pathText = "";
        for (int i=0; i < paths.Length; i++)
        {
            if (i >= 3)
            {
                if(i != paths.Length - 1)
                {
                    pathText = pathText + paths[i] +"/";
                }
                else
                {
                    //pathText += paths[i] +"\"";
                    pathText += paths[i] ;
                }

            }
            else
            {
                Logger.LogError("请将prefab放在 xxxLayer结点下...");
            }
        }

        CopyTool.text = pathText;
        CopyTool.SelectAll();
        CopyTool.Copy();
    }
    /// <summary>
    /// 获得GameObject在Hierarchy中的完整路径
    /// </summary>
    /// <returns>The trans path.</returns>
    /// <param name="trans">Trans.</param>
    public static string GetTransPath(Transform trans)
    {
        if (null == trans) return string.Empty;
        if (null == trans.parent) return trans.name;
        return GetTransPath(trans.parent) + "/" + trans.name;
    }

    public static string GetTransTypeText(Transform trans)
    {
        var  slider = trans.gameObject.GetComponent<Slider>();
        if (slider != null) return "_slider";

        var button  = trans.gameObject.GetComponent<Button>();
        if (button != null) return "_btn";

        var text  = trans.gameObject.GetComponent<Text>();
        if (text != null) return "_txt";

        var toggle = trans.gameObject.GetComponent<Toggle>();
        if (toggle != null) return "_toggle";

        var scrollRect = trans.gameObject.GetComponent<ScrollRect>();
        if (scrollRect != null) return "_scrollrect";

        var image = trans.gameObject.GetComponent<Image>();
        if (image != null) return "_img";

        var effect = trans.gameObject.GetComponent<ParticleSystem>();
        if (effect != null) return "_effect";

        return "_go";
    }
}
