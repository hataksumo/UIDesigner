using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
//FX_UI_CardInforChange   FX_mat_ui_CardInforChange_ling2
//FX_UI_MaskCardToHome     FX_mat_ui_MaskHomeToCard1  FX_mat_ui_MaskHomeToCard3
//FX_UI_MaskHomeToCard   FX_mat_ui_MaskHomeToCard1     FX_mat_ui_MaskHomeToCard2
[CustomEditor(typeof(MaterialAnimHelper))]
public class MaterialAnimHelperInsp : Editor
{

    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();
        GUILayout.Label("-- Helper -------------------------");
        MaterialAnimHelper helper = target as MaterialAnimHelper;
        EditorGUI.BeginChangeCheck();
        helper.mat = EditorGUILayout.ObjectField("Material", helper.mat, typeof(Material), false) as Material;
        OnGUI_ShaderProps();
        if (EditorGUI.EndChangeCheck())
        {
            helper.UpdateAnim();
            EditorUtility.SetDirty(helper);
        }

            
       
    }

    struct ShaderPropInfo
    {
        public int index;
        public ShaderUtil.ShaderPropertyType type;
    }
    void OnGUI_ShaderProps()
    {
        MaterialAnimHelper helper = target as MaterialAnimHelper;
        if (helper == null) return;

        var mat = helper.mat;
        if (mat == null) return;

        var shader = mat.shader;
        if (shader == null) return;

        var propCount = ShaderUtil.GetPropertyCount(shader);
        if (propCount < 1) return;

        Dictionary<string, ShaderPropInfo> props = new Dictionary<string, ShaderPropInfo>();
        List<string> propNames = new List<string>();
        propNames.Add("None");
        for (int i = 0 ; i < propCount ; i++)
        {
            var propType = ShaderUtil.GetPropertyType(shader, i);
            if (propType == ShaderUtil.ShaderPropertyType.TexEnv) continue;
            var propName = ShaderUtil.GetPropertyName(shader, i);
            propNames.Add(propName);
            props.Add(propName, new ShaderPropInfo()
            {
                index = i,
                type = propType
            }
            );
        }

        if (props.Count < 1) return;

        //prop1
        OnGUI_HelperPropInfo(shader, ref helper.propName1, ref helper.param1, ref helper.propType1, propNames, props, "Prop1");
        
        //prop2
        OnGUI_HelperPropInfo(shader, ref helper.propName2, ref helper.param2, ref helper.propType2, propNames, props, "Prop2");
        
        //prop3
        OnGUI_HelperPropInfo(shader, ref helper.propName3, ref helper.param3, ref helper.propType3, propNames, props, "Prop3");
       
        //prop4
        OnGUI_HelperPropInfo(shader, ref helper.propName4, ref helper.param4, ref helper.propType4, propNames, props, "Prop4");
       
        //prop5
        OnGUI_HelperPropInfo(shader, ref helper.propName5, ref helper.param5, ref helper.propType5, propNames, props, "Prop5");
        
        helper.InitShaderProp();
    }

    void OnGUI_HelperPropInfo( Shader shader, ref string propName, ref Vector4 param, ref MaterialAnimHelper.PropertyType propType, List<string> propNames, Dictionary<string, ShaderPropInfo> props, string lable )
    {
        int propIndex = propNames.IndexOf(propName);
        if (propIndex < 0)
        {
            propIndex = 0;
        }

        propIndex = EditorGUILayout.Popup("PropName:" + lable, propIndex, propNames.ToArray());
        if (propIndex >= 1)
        {
            propName = propNames[propIndex];
        } else
        {
            propName = "";
        }

        if (propIndex >= 1)
        {
            var info = props[propName];
            switch (info.type)
            {
                case ShaderUtil.ShaderPropertyType.Color:
                    var colValue = EditorGUILayout.ColorField("value:", param);
                    propType = MaterialAnimHelper.PropertyType.Color;
                    param = colValue;
                    break;
                case ShaderUtil.ShaderPropertyType.Vector:
                    var vectValue = EditorGUILayout.Vector4Field("value:", param);
                    propType = MaterialAnimHelper.PropertyType.Vector;
                    param = vectValue;
                    break;
                case ShaderUtil.ShaderPropertyType.Float:
                    var fValue = EditorGUILayout.FloatField("value:", param.x);
                    propType = MaterialAnimHelper.PropertyType.Float;
                    param.x = fValue;
                    break;
                case ShaderUtil.ShaderPropertyType.Range:
                    var min = ShaderUtil.GetRangeLimits(shader, info.index, 1);
                    var max = ShaderUtil.GetRangeLimits(shader, info.index, 2);
                    var rfValue = EditorGUILayout.Slider("value:", param.x, min, max);
                    propType = MaterialAnimHelper.PropertyType.Float;
                    param.x =  Mathf.Clamp( rfValue,min,max);
                    break;

            }
        }
    }


}


#endif

[ExecuteAlways]
public class MaterialAnimHelper : MonoBehaviour
{
    //
    // 摘要:
    //     Type of a given texture property.
    public enum PropertyType
    {
        //
        // 摘要:
        //     Color Property.
        Color = 0,
        //
        // 摘要:
        //     Vector Property.
        Vector = 1,
        //
        // 摘要:
        //     Float Property.
        Float = 2,
    }

    public Material mat;

    public string propName1;   
    private int propId1;
    [HideInInspector]
    [SerializeField]
    public PropertyType propType1;
    public Vector4 param1;

    public string propName2;    
    private int propId2;
    [HideInInspector]
    [SerializeField]
    public PropertyType propType2;
    public Vector4 param2;

    public string propName3;
    private int propId3;
    [HideInInspector]
    [SerializeField]
    public PropertyType propType3;
    public Vector4 param3;

    public string propName4;
    private int propId4;
    [HideInInspector]
    [SerializeField]
    public PropertyType propType4;
    public Vector4 param4;

    public string propName5;
    private int propId5;
    [HideInInspector]
    [SerializeField]
    public PropertyType propType5;
    public Vector4 param5;

    private void Awake()
    {
        InitShaderProp();
    }


    // Update is called once per frame
    void Update()
    {
        UpdateAnim();
    }

    public void InitShaderProp()
    {
        if (!string.IsNullOrEmpty(this.propName1))
        {
            this.propId1 = Shader.PropertyToID(this.propName1);
        }
        else
        {
            this.propId1 = -1;
        }
        if (!string.IsNullOrEmpty(this.propName2))
        {
            this.propId2 = Shader.PropertyToID(this.propName2);
        }
        else
        {
            this.propId2 = -1;
        }
        if (!string.IsNullOrEmpty(this.propName3))
        {
            this.propId3 = Shader.PropertyToID(this.propName3);
        }
        else
        {
            this.propId3 = -1;
        }
        if (!string.IsNullOrEmpty(this.propName4))
        {
            this.propId4 = Shader.PropertyToID(this.propName4);
        }
        else
        {
            this.propId4 = -1;
        }

        if (!string.IsNullOrEmpty(this.propName5))
        {
            this.propId5 = Shader.PropertyToID(this.propName5);
        }
        else
        {
            this.propId5 = -1;
        }
    }

    public void UpdateAnim()
    {
        UpdateMatProp(propId1, propType1, param1);
        UpdateMatProp(propId2, propType2, param2);
        UpdateMatProp(propId3, propType3, param3);
        UpdateMatProp(propId4, propType4, param4);
        UpdateMatProp(propId5, propType5, param5);
    }


    void UpdateMatProp( int id, PropertyType type, Vector4 param )
    {
        if (id < 0) return;
        switch (type)
        {
            case PropertyType.Color:
                mat.SetColor(id, param);
                break;
            case PropertyType.Vector:
                mat.SetVector(id, param);
                break;
            case PropertyType.Float:
                mat.SetFloat(id, param.x);
                break;
        }
    }

}
