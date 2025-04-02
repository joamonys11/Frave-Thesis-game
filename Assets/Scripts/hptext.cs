using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class hptext : MonoBehaviour {
	public Text timerLabel;
	private Animator timeanim;
	public static float timer = 10;
	public GameObject go;
	void Update() {
		
		
	

		
		
		//update the label value
		timerLabel.text = string.Format (" HP : {0:00}", target.hp);
		
	}
	void Start()
	{

		
	}
}