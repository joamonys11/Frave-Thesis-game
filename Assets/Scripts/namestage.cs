using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class namestage : MonoBehaviour {
	public Text timerLabel;
	private Animator timeanim;
	public static int time;

	void Update() {

		time = level.indexlevel;
	

		timerLabel.text = "Stage " + time;
		
	}
	void Start()
	{
		
		//		win.SetActive (false);
		//		go.SetActive (false);

	}
}