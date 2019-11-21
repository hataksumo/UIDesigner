using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoleFaceConfigAsset : ScriptableObject
{
    public float center;
    public Texture2D eyeTex;
    public int eyeNum;
    public int eyeRowCount;   
    /// <summary>
    /// x = rectWidth / srcTex.width
    /// y = rectHeight / srcTex.Height
    /// z = srcTex.width / combineTex.width
    /// w = srcTex.height / combineTex.height
    /// </summary>
    public Vector4 eyeRect;
       
    public Texture2D mouthTex;
    public int mouthNum;
    public int mouthRowCount;    
    /// <summary>
    /// same as eyeRect
    /// </summary>
    public Vector4 mouthRect;  
}
