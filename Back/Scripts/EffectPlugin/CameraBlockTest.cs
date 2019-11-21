using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraBlockTest : MonoBehaviour
{
    public Transform battleCenter;
    Ray checkRay;
    RaycastHit[] hitRes = new RaycastHit[1];
    int layer;
    Vector3 refPoint = Vector3.zero;
    Vector3 lockPoint = Vector3.zero;
    private void Awake()
    {
        checkRay = new Ray();
        layer = 1 << LayerMask.NameToLayer("Ground");
    }

    public void SetBattleCenter( Transform center)
    {
        this.battleCenter = center;
        enabled = true;
    }

    private void LateUpdate()
    {
        if (battleCenter == null)
        {
            enabled = false;
            return;
        }
        if (CheckBlocking())
        {
            transform.position = lockPoint;
        }
    }
    bool CheckBlocking()
    {
        Vector3 CamForard = transform.forward;
        Vector3 vectCenter2Cam =  battleCenter.position - transform.position;
        float distance = Vector3.Dot(vectCenter2Cam, CamForard);

        distance = Mathf.Max(2f, distance);
        refPoint = transform.position + CamForard * distance;
        
        checkRay.origin = refPoint;
        checkRay.direction = -CamForard;

        var resCount = Physics.RaycastNonAlloc(checkRay, hitRes, distance, layer);
        if (resCount > 0)
        {
            lockPoint = hitRes[0].point;
            return true;
        } else
        {
            return false;
        }
    }
#if UNITY_EDITOR

    private void OnDrawGizmos()
    {
        var col = Gizmos.color;
        Gizmos.color = Color.green;
        Gizmos.DrawSphere(refPoint, 0.2f);
        Gizmos.color = Color.red;
        Gizmos.DrawSphere(lockPoint, 0.2f);
        Gizmos.color = col;
    }

#endif
}
