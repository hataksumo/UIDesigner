#if UNITY_EDITOR
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class WindManager : MonoBehaviour
{

    public float Strength = 0;

    private const string propName = "_windStr";
    private int propId = 0;

    // Use this for initialization
    void OnEnable()
    {
        if (propId == 0)
            propId = Shader.PropertyToID(propName);
        ApplyWindParam();
    }


    public void ApplyWindParam()
    {
        Shader.SetGlobalFloat(propId, Strength);
       
    }


    public void FixedUpdate()
    {
        ApplyWindParam();
    }
}

#endif