using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.U2D;
#if UNITY_EDITOR
using UnityEditor;
[CustomEditor(typeof(ImageSelectFxCtrl))]
public class ImageSelectFxCtrlEditor : Editor
{
    #region Material Pool
    static Material _selectMat;
    static Material SelectMat
    {
        get
        {
            if (_selectMat == null)
            {
                _selectMat = AssetDatabase.LoadAssetAtPath<Material>("Assets/Editor/GameTools/SelectMat.mat");
            }
            return _selectMat;
        }
    }
    static Dictionary<int, Material> selectMatDict;
    static Queue<Material> selectMatPool;

    static Material GetSelectMat()
    {
        Material ret = null;
        if (selectMatPool == null || selectMatPool.Count < 1)
        {
            ret = Material.Instantiate(SelectMat);
        } else
        {
            ret = selectMatPool.Dequeue();
        }
        return ret;
    }

    static void RecycleMat( Material mat )
    {
        if (selectMatPool == null)
        {
            selectMatPool = new Queue<Material>();
        }
        selectMatPool.Enqueue(mat);
    }

    #endregion


    Sprite atlasSp;
    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();
        var ctrl = target as ImageSelectFxCtrl;
        if (ctrl.IsSelected())
        {
            if (GUILayout.Button("UnSelect"))
            {
               RecycleMat( ctrl.Unselect() );
            }
        } else
        {
            if (GUILayout.Button("Select"))
            {
                ctrl.Select(GetSelectMat());
            }
        }
    }
}
#endif