using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using XLua;
[XLua.LuaCallCSharp]
public class CamMaskUtilities
{
    static Camera _mainCam = null;
    /// <summary>
    /// 得到场景中的主相机
    /// </summary>
    public static Camera MainCam
    {
        get
        {
            if (_mainCam != null) return _mainCam;
            _mainCam = Camera.main;
            if (_mainCam != null) return _mainCam;           
            var camGo = GameObject.FindGameObjectWithTag("GameMain");
            if( camGo != null)
            {
                _mainCam = camGo.GetComponent<Camera>();
            }
            if (_mainCam != null) return _mainCam;
            if (Cinemachine.CinemachineCore.Instance != null && Cinemachine.CinemachineCore.Instance.BrainCount > 0)
            {
                Cinemachine.CinemachineBrain camBrain = Cinemachine.CinemachineCore.Instance.GetActiveBrain(0);
                if (camBrain != null)
                {
                    var cam = camBrain.OutputCamera;
                    if (cam != null)
                    {
                        _mainCam = cam;
                    }
                }
            } 
            if (_mainCam == null)
            {
                Debug.LogError("Cannot Find Main Camera!!!!");
            }
            return _mainCam;
        }
    }
    static CameraMaskCtrl _camMask = null;
    /// <summary>
    /// 得到主相机上的遮罩
    /// </summary>
    static CameraMaskCtrl CamMask
    {
        get
        {
            if (_camMask != null) return _camMask;

            if (MainCam != null)
            {
                var maskCtrl = MainCam.GetComponentInChildren<CameraMaskCtrl>(true);
                if (maskCtrl == null)
                {
                    //load CamMask
                    var maskPrefab = Resources.Load<GameObject>("EffectAssets/CamMask");
                    if (maskPrefab != null)
                    {
                        var maskInst = GameObject.Instantiate(maskPrefab, MainCam.transform);
                        maskCtrl = maskInst.GetComponentInChildren<CameraMaskCtrl>(true);
                    }
                }
                _camMask = maskCtrl;
            }

            return _camMask;
        }
    }

    public static void SetExtraAlpha( float alpha )
    {
        if (!CamMask) return;
        CamMask.SetExtraAlpha(alpha);
    }

    public static void ResetExtraAlpha()
    {
        if (!CamMask) return;
        CamMask.ResetExtraAlpha();
    }

    /// <summary>
    /// 设置相机遮罩的透明度,颜色为黑
    /// </summary>
    /// <param name="alpha">透明度</param>
    /// <param name="priority">优先级</param>
    public static void SetMaskColor( float alpha, int priority = 100 )
    {
        SetMaskColor(new Color(0, 0, 0, alpha), priority);
    }

    /// <summary>
    /// 设置机遮罩的颜色
    /// </summary>
    /// <param name="color">颜色</param>
    /// <param name="priority">优先级</param>
    public static void SetMaskColor( Color color, int priority = 100 )
    {
        if (!CamMask) return;
        CamMask.SetColor(priority, color);
    }

    public static Color GetMaskColor( int priority = 100 )
    {
        if (!CamMask) return Color.clear;
        return CamMask.GetColor(priority);
    }


    public static void SetBackground( Texture tex, Color col )
    {
        if (!CamMask) return;
        CamMask.SetBackground(tex as Cubemap, col);     
    }

    public static void HideBackground()
    {
        if (!CamMask) return;
        CamMask.HideBackground();      
    }

    /// <summary>
    /// 按优先级移除遮罩的颜色,当模块或功能结束时,应该调用此方法.
    /// 默认场景控制的优先级为100
    /// Timeline中控制的优先级为0
    /// </summary>
    /// <param name="priority">优先级</param>
    public static void RemoveMask( int priority = 100 )
    {
        if (!CamMask) return;
        CamMask.RemoveColor(priority);
    }

    public static float CalcMaskScale(float distance)
    {
        if (MainCam == null) return 0f;
        var cam = MainCam;
        var pos = cam.ViewportToWorldPoint(new Vector3(1f, 1f, distance+0.5f));
        var localPos = cam.transform.InverseTransformPoint(pos);
        return  Mathf.Max(localPos.x, localPos.y) / 0.5f;
    }

    public static void SetOverridePPWeight(float weight )
    {
        if (!CamMask) return;
        CamMask.SetOverridePPWeight(weight);
    }

}
