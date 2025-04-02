using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class bullet6ui : MonoBehaviour {
	public Text bullet6;
	//private Animator number;
	public static float number;
	
	void Update() {
		
		
		number = spawnbullet.countbulletw6;
		
		
		//update the label value
		bullet6.text = " " + number;
		
	}
	void Start()
	{
		
		//		win.SetActive (false);
		//		go.SetActive (false);
		
	}
	
	
	
}