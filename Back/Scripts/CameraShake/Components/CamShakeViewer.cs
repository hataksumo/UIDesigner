#if UNITY_EDITOR
using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;
using UnityEditor;

// [CustomEditor(typeof(CamShakeViewer))]
// public class CamShakeViewrInspector : Editor
// {
// 	public override void OnInspectorGUI()
// 	{
// 		base.OnInspectorGUI();
// 		if (GUILayout.Button("ShakeViaData"))
// 		{
// 			(target as CamShakeViewer).ShakeViaData();
// 		}
		
// 		if (GUILayout.Button("Shake"))
// 		{
// 			(target as CamShakeViewer).Shake();
// 		}
// 	}
// }


public class CamShakeViewer : MonoBehaviour
{

	public int DataId;
	
	[Header("--------------------------")]
	public int number_of_shakes;

	public Vector3 shake_amount;

	public Vector3 rotation_amount;

	public float distance;

	public float speed;

	public float decay;

	public bool by_time_scale;
	
	public void ShakeViaData()
	{
		
		// ShakeData data = CameraShakeData.Instance.GetData(DataId);
		// int number_of_shakes = data.number_of_shakes;
		// Vector3 shake_amount, rotation_amount;
		// float shake_distance = data.distance;
		// float shake_speed = data.speed;
		// float shake_decay = data.decay;
		// bool by_time_scale = data.by_time_scale == 1;
		// _CameraShake.Shake(number_of_shakes, data.shake_amount, data.rotation_amount, shake_distance, shake_speed, shake_decay, 1f, by_time_scale);
		
		
		
	}
	
	
	public void Shake()
	{
		
		_CameraShake.Shake(number_of_shakes, shake_amount, rotation_amount, distance, speed, decay, 1f, by_time_scale);
	}
}

#endif