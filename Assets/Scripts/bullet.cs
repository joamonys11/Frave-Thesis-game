using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public class bullet : MonoBehaviour {
	public GameObject raycastObject;
		RaycastHit objectHit;
	public GameObject bullet1;  
	public Transform tranformspw;
	public static string targetname;
	// Use this for initialization

	void Start () {
			

	}
	
	// Update is called once per frame
	void Update () {

//		Vector3 fwd = raycastObject.transform.TransformDirection(Vector3.forward);
//		Debug.DrawRay(raycastObject.transform.position, fwd * 1000, Color.green);
//		if (Physics.Raycast(raycastObject.transform.position, fwd, out objectHit, 1000))
//		{
//			//do something if hit object ie
//			Debug.Log(objectHit.collider.name);
//
//		}
	}
	public void spwnbul()
	{
	


		Instantiate (bullet1, tranformspw.position, tranformspw.rotation);



	}

	}






