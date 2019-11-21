using Cinemachine;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Nation
{

    //    [XLua.CSharpCallLua]
    [XLua.LuaCallCSharp]
    public class CinemachineNationCameraMoveEnd : CinemachineExtension
    {

    //public delegate void OnVirtualCameraEnter();
    //public OnVirtualCameraEnter onVirtualCameraEnter;
    //public delegate void OnVirtualCameraEnter();
    public Action onVirtualCameraEnter;
    private CinemachineTransposer mainCMCameraBody;
    private int triggerStatus = TRIGGER_ST_DEFAULT;
    private float minDistance;
    public const int TRIGGER_ST_DEFAULT = 0;
    public const int TRIGGER_ST_WAIT = 1;
    public const int TRIGGER_ST_OK = 2;

    protected override void Awake()
    {
        base.Awake();
        triggerStatus = TRIGGER_ST_DEFAULT;
        minDistance = 0.1f;
        CinemachineVirtualCamera cinemachineVirtualCamera = VirtualCamera as CinemachineVirtualCamera;
        mainCMCameraBody = cinemachineVirtualCamera.GetCinemachineComponent(Cinemachine.CinemachineCore.Stage.Body) as Cinemachine.CinemachineTransposer;
    }

    protected override void OnDestroy()
    {
        base.OnDestroy();
        onVirtualCameraEnter = null;
        mainCMCameraBody = null;
    }
        //public void Init(float minDistance, OnVirtualCameraEnter eventEvent)
    public void Init(float minDistance, Action eventEvent)
    {
        this.minDistance = minDistance;
        this.onVirtualCameraEnter = eventEvent;
    }
    public void ClearEvent()
    {
        this.onVirtualCameraEnter = null;
    }

    public void SetMinDistance(float minDistance)
    {
        this.minDistance = minDistance;
    }

    public void SetTriggerStatus(int status) {
        triggerStatus = status;
    }

    protected override void PostPipelineStageCallback(CinemachineVirtualCameraBase vcam, CinemachineCore.Stage stage, ref CameraState state, float deltaTime)
    {
        //if (stage == CinemachineCore.Stage.Body) {
        //    Debug.LogError(" CinemachineEventAdd   111111111111111 : " +  stage);
        //}
        if (vcam.Follow == null)
        {
            return;
        }
        if (triggerStatus == TRIGGER_ST_DEFAULT) {
            return;
        }

        if (triggerStatus == TRIGGER_ST_OK)
        {
            return;
        }

        if (stage == CinemachineCore.Stage.Finalize)
        {
            Vector3 targetPosition = vcam.Follow.transform.position + mainCMCameraBody.EffectiveOffset;
            float dis = Vector3.Distance(targetPosition,state.FinalPosition);
            if (dis <= minDistance) {
                if (onVirtualCameraEnter != null)
                {
                    onVirtualCameraEnter();
                    //Debug.LogError("onVirtualCameraEnter trigger~~~~~~~~~~~~~~~~~");
                }
                triggerStatus = TRIGGER_ST_OK;
            }
        }
    
    }
}
}