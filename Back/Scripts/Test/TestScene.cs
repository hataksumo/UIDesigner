using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;
using System;
using UnityEditor;

#if UNITY_EDITOR
public class InspectorEditor : Editor
{
    //重写OnInspectorGUI类(刷新Inspector面板)
    public override void OnInspectorGUI()
    {
        //继承基类方法
        base.OnInspectorGUI();

        //获取要执行方法的类
        TestScene targetScript = (TestScene)target;
        //绘制Button
        if (GUILayout.Button("My Func"))
        {
            //执行方法
            targetScript.ChangeScene();
        }

    }
}
#endif
public class TestScene : MonoBehaviour
{
   
    public void ChangeScene()
    {
        SceneManager.LoadScene("LaunchScene");
    }
    private void OnGUI()
    {
        if (GUILayout.Button("My Func"))
        {
            //执行方法
            ChangeScene();
        }
    }
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyUp(KeyCode.F1))
        {
            ChangeScene();
        }
    }
}

