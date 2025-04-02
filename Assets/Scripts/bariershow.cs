using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class bariershow : MonoBehaviour {
	public Text bullet5;
	//private Animator number;
	public static float number;
	
	void Update() {
		
		
		number = itempanel.protect;
		
		
		//update the label value
		bullet5.text = " " + number;
		
	}
	void Start()
	{
		
		//		win.SetActive (false);
		//		go.SetActive (false);
		
	}
	
	
	
}