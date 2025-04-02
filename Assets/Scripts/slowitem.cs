using UnityEngine;
using System.Collections;

public class slowitem : MonoBehaviour {
	public float timeup;

	// Use this for initialization
	void Start () {
	
		timeup = 10f;



	}
	
	// Update is called once per frame
	void Update () {
	
		normaltank.slow = true;
		softtank.slow = true;
		heavytank.slow = true;
		hardtank.slow = true;
		hardtank.slow = true;
		r1.slow = true;
		r2.slow = true;
		r3.slow = true;
		r4.slow = true;
		r5.slow = true;
		r6.slow = true;

		timeup -= Time.deltaTime;

		Debug.Log ("Timeup :"+timeup);
	
		if (timeup <= 0) {

			normaltank.slow = false;
			softtank.slow = false;
			heavytank.slow = false;
			hardtank.slow = false;
			hardtank.slow = false;
			r1.slow = false;
			r2.slow = false;
			r3.slow = false;
			r4.slow = false;
			r5.slow = false;
			r6.slow = false;

		
	
			Destroy(gameObject);

		}



	}
}
