using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class hpbar : MonoBehaviour {
 		Slider slider;
	public GameObject changecolor;
	//public float hplose;
	
	// Use this for initialization
	void Start () {
		slider = GetComponent<Slider> ();

	}
	
	
	
	// Update is called once per frame
	void Update () {
		
		//		Bot_zombie.hp
		//		slider.value = ;

	

		slider.value = target.hp;
		//Debug.Log ("Slide value  " + 	target.hp);


		if (target.hp < 100) {
			changecolor.GetComponent<Image> ().color = Color.blue;
		}

		if (target.hp > 100 && target.hp < 500) {
			changecolor.GetComponent<Image> ().color = Color.yellow;
		}


		}

	
	
	
}
