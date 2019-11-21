using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class NoiseNode : MonoBehaviour
{
    public NoiseSettings m_NoiseProfile;
    public float m_AmplitudeGain = 1f;
    public float m_FrquencyGain = 1f;
    private float mNoiseTime = 0;
    private Vector3 initPos;
    private Quaternion initRotate;
    [SerializeField]
    [HideInInspector]
    private Vector3 mNoiseOffsets = Vector3.zero;

    //private void Start()
    //{
    //    initPos = transform.position;
    //    initRotate = transform.rotation;
    //}

    public void SetInitPos(Vector3 _pos)
    {
        transform.localPosition = _pos;
        initPos = transform.position;
        initRotate = transform.rotation;
    }

    void Update()
    {
        mNoiseTime += Time.deltaTime * m_FrquencyGain;
        transform.position = initPos + NoiseSettings.GetCombinedFilterResults(
                   m_NoiseProfile.PositionNoise, mNoiseTime, mNoiseOffsets) * m_AmplitudeGain;
        Quaternion rotNoise = Quaternion.Euler(NoiseSettings.GetCombinedFilterResults(
                m_NoiseProfile.OrientationNoise, mNoiseTime, mNoiseOffsets) * m_AmplitudeGain);
        transform.rotation = initRotate * rotNoise;
    }
}
