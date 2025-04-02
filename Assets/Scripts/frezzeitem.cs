using UnityEngine;
using System.Collections;

public class frezzeitem : MonoBehaviour {
	public float timeup;
	// Use this for initialization
	void Start () {
	
		timeup = 10f;
	}
	
	// Update is called once per frame
	void Update () {

		normaltank.freeze = true;
		softtank.freeze = true;
		hardtank.freeze = true;
		heavytank.freeze = true;
		r1.freeze = true;
		r2.freeze = true;
		r3.freeze = true;
		r4.freeze = true;
		r5.freeze = true;
		r6.freeze = true;

		timeup -= Time.deltaTime;
		Debug.Log ("Timeup :"+timeup);
		if (timeup <= 0) {

			normaltank.freeze = false;
			softtank.freeze = false;
			hardtank.freeze = false;
			heavytank.freeze = false;
			r1.freeze = false;
			r2.freeze = false;
			r3.freeze = false;
			r4.freeze = false;
			r5.freeze = false;
			r6.freeze = false;

			Destroy(gameObject);
		}






	
	}
}
