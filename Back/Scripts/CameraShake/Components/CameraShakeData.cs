using System.Collections.Generic;
using UnityEngine;


[System.Serializable]
public struct ShakeData
{
    public string name;    
    
    public int number_of_shakes;

    public Vector3 shake_amount;

    public Vector3 rotation_amount;

    public float distance;

    public float speed;

    public float decay;

    public bool by_time_scale;
}
