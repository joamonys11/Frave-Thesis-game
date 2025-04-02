using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class bullet3ui : MonoBehaviour {
	public Text bullet3;
	//private Animator number;
	public static float number;
	
	void Update() {
		
		
		number = spawnbullet.countbulletw3;
		
		
		//update the label value
		bullet3.text = " " + number;
		
	}
	void Start()
	{
		
		//		win.SetActive (false);
		//		go.SetActive (false);
		
	}
	
	
	
}