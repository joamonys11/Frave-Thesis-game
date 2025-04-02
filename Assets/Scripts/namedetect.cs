using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class namedetect : MonoBehaviour {
	public Text timerLabel;
	// Use this for initialization
	void Start () {
	


	}
	
	// Update is called once per frame
	void Update () {
	
		timerLabel.text = string.Format ("  NAME :{0:00}", hitraycast.enemy);
		Debug.Log ("Detect :" + timerLabel);

	}
}
