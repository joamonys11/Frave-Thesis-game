using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class hphardtank : MonoBehaviour {
	public Text timerLabel;
	//private Animator timeanim
	//public float flash;
	
	void Update() {
		
		
		
		
		
		
		
		//		if (timer <= 15)
		//		{
		//			timerLabel.color = Color.red;
		//			//timeanim.Play("timebing");
		//			
		//		}
		//		if (timer <= 0) {
		//			
		//			timer += 50;
		//			Debug.Log("Died");
		//			//Application.LoadLevel("Lose");
		//			
		//		}
		
		
		//update the label value
		timerLabel.text = string.Format ("{0:00}", target.hp);
		
	}
	void Start()
	{
		
		
		
		
		
	}
}