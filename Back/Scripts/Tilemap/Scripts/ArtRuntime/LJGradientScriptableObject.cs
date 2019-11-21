using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace LJTilemaps
{
    [CreateAssetMenu(fileName = "LJGradientScriptableObject", menuName = "Tilemap Editor/LJTilemaps/创建颜色数据")]
    public class LJGradientScriptableObject : ScriptableObject
    {
        [Tooltip("颜色数据")]
        public Gradient gradient;
    }
}