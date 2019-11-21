using System.Collections;
using System.Collections.Generic;
//using DG.Tweening;
using UnityEngine;
using UnityEngine.UI;

public class VideoControlButton : MonoBehaviour
{

	//public Image ClockImg;

	//public Image BackImg;
	//public Color BackImgColor;
	
	public Text[] InfoLable;
	public Color InfoLableColor;

	private float _showTime;
	private float _startTime;

	private int _state = -1;

	private System.Action _onSkip;

	public void Active(System.Action onSkip)
	{
		if (_state != -1) return;
		_onSkip = onSkip;
		if (!gameObject.activeInHierarchy)
		{
			gameObject.SetActive(true);
		}

//		if (BackImg != null)
//		{
//			BackImg.DOColor(BackImgColor,0.2f);
//		}

		//if (InfoLable != null && InfoLable.Length > 0)
		//{
		//	foreach (var info in InfoLable)
		//	{
		//		info.DOColor(InfoLableColor, 0.2f);
		//	}
		//}

		_state = 0;
		_showTime = Time.time;
	}

	public void Reset()
	{
//		ResetClockImg();
//		if (BackImg != null)
//		{
//			BackImg.color = new Color(BackImgColor.r, BackImgColor.g, BackImgColor.b, 0f);
//		}

		if (InfoLable != null && InfoLable.Length > 0)
		{
			foreach (var info in InfoLable)
			{
				info.color = new Color(InfoLableColor.r, InfoLableColor.g, InfoLableColor.b, 0f);
			}
		}
		gameObject.SetActive(false);
		_state = -1;
	}
	
//	private void ResetClockImg()
//	{
//		if (ClockImg != null)
//		{
//			ClockImg.fillAmount = 0f;
//		}
//		
//	}
	
	private void AutoHide(bool imm )
	{
//		ResetClockImg();
		if (imm)
		{
//			if (BackImg != null)
//			{
//				BackImg.color = new Color(BackImgColor.r, BackImgColor.g, BackImgColor.b, 0f);
//			}
	
			if (InfoLable != null && InfoLable.Length > 0)
			{
				foreach (var info in InfoLable)
				{
					info.color = new Color(InfoLableColor.r, InfoLableColor.g, InfoLableColor.b, 0f);
				}
			}
			gameObject.SetActive(false);
			_state = -1;
		}
		else
		{
//			if (BackImg != null)
//			{
//				BackImg.DOColor(new Color(BackImgColor.r,BackImgColor.g,BackImgColor.b,0f),0.2f).OnComplete(() =>
//				{
//					gameObject.SetActive(false);
//					_state = -1;
//				});
//			}
	
			//if (InfoLable != null && InfoLable.Length > 0)
			//{
			//	InfoLable[0].DOColor(new Color(InfoLableColor.r,InfoLableColor.g,InfoLableColor.b,0f), 0.2f).OnComplete(() =>
			//	{
			//		gameObject.SetActive(false);
			//		_state = -1;
			//	});
			//	if (InfoLable.Length > 1)
			//	{
			//		for (var i = 1; i < InfoLable.Length; i++)
			//		{
			//			var info = InfoLable[i];
			//			info.DOColor(new Color(InfoLableColor.r, InfoLableColor.g, InfoLableColor.b, 0f), 0.2f);
			//		}
			//	}
			//}
			
			_state = -2;
		}
	}
	
	
	// Update is called once per frame
	void Update () {

		if (_state == 0)
		{
			if (Time.time - _showTime > 3f)
			{
				AutoHide(false);
			}
		}
//		else if (_state == 1)
//		{
//			float pressPct = (Time.time - _startTime) / 1.5f;
//			if (ClockImg != null)
//			{
//				ClockImg.fillAmount = pressPct;
//			}
//
//			if (pressPct >= 1f)
//			{
//				AutoHide(true);
//				if (_onSkip != null)
//				{
//					_onSkip();
//				}
//			}
//		}
	}
	
//	public void OnPointDown()
//	{
//		if (_state == 0)
//		{
//			_startTime = Time.time;
//			_state = 1;
//		}
//	}
//
//	public void OnPointUp()
//	{
//		if (_state == 1)
//		{
////			ResetClockImg();
//			_showTime = Time.time;
//			_state = 0;
//		}
//	}

	public void OnClick()
	{
		AutoHide(true);
		if (_onSkip != null)
		{
			_onSkip();
		}
	}
	
}
