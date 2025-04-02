using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class bullet2ui : MonoBehaviour {
	public Text bullet2;
	//private Animator number;
	public static float number;

	void Update() {
		

		number = spawnbullet.countbulletw2;
		
		
		//update the label value
		bullet2.text = " " + number;	
		
	}
	void Start()
	{
		
		//		win.SetActive (false);
		//		go.SetActive (false);

	}
	
	

}