using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using XLua;

[LuaCallCSharp]
[RequireComponent(typeof(Camera))]
public class ScreenCapturer : MonoBehaviour
{
    private int capPropId = Shader.PropertyToID("_ScreenCapture");
    private CommandBuffer cmdBuffer;
    private RenderTexture capRt = null;
    private enum CaptureState
    {
        None,
        Ready,
        Capturing,
        Fin
    }
    private CaptureState captureState = CaptureState.None;
    private System.Action callBack;

    private void Init()
    {
        if (captureState != CaptureState.None) return;

#if UNITY_EDITOR
        capRt = RenderTexture.GetTemporary(
            1920, 1080, 0, RenderTextureFormat.ARGB32);
#else

        capRt = RenderTexture.GetTemporary(
            Screen.width, Screen.height, 0, RenderTextureFormat.ARGB32);
#endif
        cmdBuffer = new CommandBuffer();
        cmdBuffer.Blit(new RenderTargetIdentifier(BuiltinRenderTextureType.CameraTarget), capRt);
        cmdBuffer.SetGlobalTexture(capPropId, capRt);
    }

    public void DoCapture( System.Action callback = null )
    {
        if (captureState == CaptureState.None)
        {
            Init();
        } else if (captureState == CaptureState.Capturing)
        {
            return;
        }
        captureState = CaptureState.Capturing;
        this.callBack = callback;
        enabled = true;
    }

    void ReleaseInternal()
    {
        if (cmdBuffer != null)
        {
            cmdBuffer.Release();
            cmdBuffer = null;
        }
        if (capRt != null)
        {
            RenderTexture.ReleaseTemporary(capRt);
            capRt = null;
        }
    }

    private void OnDestroy()
    {
        ReleaseInternal();
        captureState = CaptureState.None;
    }

    private void OnRenderImage( RenderTexture source, RenderTexture destination )
    {
        if (captureState == CaptureState.Capturing && cmdBuffer != null)
        {
            Graphics.ExecuteCommandBuffer(cmdBuffer);
            captureState = CaptureState.Fin;
            enabled = false;
            if (callBack != null)
            {
                callBack();
            }
        }
        Graphics.Blit(source, destination);
    }


    private static ScreenCapturer Inst = null;
    public static void CaptureScreen()
    {
        if (Inst == null)
        {
            var mainCam = SceneDataUtilities.MainCam;
            if (mainCam == null) return;
            Inst = mainCam.gameObject.GetComponent<ScreenCapturer>();
            if (Inst == null)
            {
                Inst = mainCam.gameObject.AddComponent<ScreenCapturer>();
            }
        }
        Inst.DoCapture(null);
    }

    public static bool IsFin()
    {
        if (Inst == null) return true;
        return Inst.captureState == CaptureState.Fin;
    }

    public static void Release()
    {
        if (Inst != null)
            Inst.ReleaseInternal();
    }


}

