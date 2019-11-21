using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
public class CharactorEnvLitPreviewWindow : EditorWindow
{
    [MenuItem("Tools/角色环境光预览")]
    public static void OnMenuItem()
    {
        EditorWindow.GetWindow<CharactorEnvLitPreviewWindow>().Show();
    }

    Color charColor;
    Color lastColor;
    private void OnGUI()
    {
        EditorGUI.BeginChangeCheck();
        charColor = EditorGUILayout.ColorField("角色环境光",charColor);
        if (EditorGUI.EndChangeCheck())
        {           
            SetupCharLit();
        }
    }

    private void OnDestroy()
    {
        DisableCharLit();
    }

    void SetupCharLit()
    {
        if(charColor.maxColorComponent > 0f)
        {
            Shader.EnableKeyword(SceneDataAsset.CharEnvLitKeyword);
            Shader.SetGlobalColor(SceneDataAsset.charEnvColorPropId, charColor);           
        } else
        {
            DisableCharLit();
        }
    }

    void DisableCharLit()
    {
        Shader.DisableKeyword(SceneDataAsset.CharEnvLitKeyword);
    }

}
