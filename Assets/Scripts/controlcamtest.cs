using UnityEngine;
using System.Collections;

public class controlcamtest : MonoBehaviour {
	Camera cam1;

	// Use this for initialization
	void Start () {
	
		cam1 = GetComponent<Camera> ();
	}
	
	// Update is called once per frame
	void Update () {

		//zoom
		if (Input.GetKey (KeyCode.PageUp)) {

			cam1.fieldOfView = cam1.fieldOfView+-20*Time.deltaTime;


		}

		
		if (Input.GetKey (KeyCode.PageDown)) {
			
			cam1.fieldOfView = cam1.fieldOfView+20*Time.deltaTime;
			
			
		}

		

//		if (Input.GetKey (KeyCode.PageDown)) {
//			
//			
//			transform.Translate(0,-1*Time.deltaTime,0);
//			
//		}

	
	}
}
