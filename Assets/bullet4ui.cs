using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class bullet4ui : MonoBehaviour {
	public Text bullet4;
	//private Animator number;
	public static float number;
	
	void Update() {
		
		
		number = spawnbullet.countbulletw4;
		
		
		//update the label value
		bullet4.text = " " + number;
		
	}
	void Start()
	{
		
		//		win.SetActive (false);
		//		go.SetActive (false);
		
	}
	
	
	
}