using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class bullet5ui : MonoBehaviour {
	public Text bullet5;
	//private Animator number;
	public static float number;
	
	void Update() {
		
		
		number = spawnbullet.countbulletw5;
		
		
		//update the label value
		bullet5.text = " " + number;
		
	}
	void Start()
	{
		
		//		win.SetActive (false);
		//		go.SetActive (false);
		
	}
	
	
	
}