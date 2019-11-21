using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class VideoManagerTester : MonoBehaviour
{
    // Start is called before the first frame update

    public Button btn1;
    public Button btn2;
    public Button btn3;
    public Button btn4;
    void Start()
    
    {
      //  DoPlay();
        // btn3.gameObject.SetActive(false);
        // btn4.gameObject.SetActive(false);
        // btn1.onClick.AddListener(DoPlay);
        // btn2.onClick.AddListener(DoPause);
        // btn3.onClick.AddListener(DoContiue);
        // btn4.onClick.AddListener(DoSkip);
    }

    // Update is called once per frame
    void Update()
    {

    }

    public string fileName = "AVProVideoSamples/BigBuckBunny_720p30.mp4";
    public string fileName2 = "AVProVideoSamples/SampleSphere.mp4";
    string fileName3 = "AVProVideoSamples/0621_BeginAnimation.mp4";

    public void DoPlay()
    {
        var videoMan = VideoManager.GetInstance();
        videoMan.PlayVideo(fileName3, true, null);
        // btn1.gameObject.SetActive(false);
        // btn4.gameObject.SetActive(true);

    }

    public void DoPause()
    {

        var videoMan = VideoManager.GetInstance();
        videoMan.Pause();
        btn2.gameObject.SetActive(false);
        btn3.gameObject.SetActive(true);
    }

    public void DoContiue()
    {

        var videoMan = VideoManager.GetInstance();
        videoMan.Contiue();
        btn3.gameObject.SetActive(false);
        btn2.gameObject.SetActive(true);
    }


    public void DoSkip()
    {
        var videoMan = VideoManager.GetInstance();
        videoMan.Skip();
        btn4.gameObject.SetActive(false);
        btn1.gameObject.SetActive(true);
        btn2.gameObject.SetActive(true);
        btn3.gameObject.SetActive(false);

       videoMan = VideoManager.GetInstance();
        videoMan.PlayVideo(fileName2, false, null);
    }

}
