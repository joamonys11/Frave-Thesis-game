using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class softbull : MonoBehaviour {
	//public Vector3 target2,target1;
	//public float movesp;
	//public float journeyTime = 1.0f;
	//public Transform shoot;
	//private float startTime;
	//public Transform target3;
	//public string name1;
	//Transform target1;
	public float mySpeed;
	public float myRange;
	private float myDist;
	private Transform myTransform;
	public float tanklv = 2f;
	// Use this for initialization
	//private float projectileSpeed = 30; 
	void Start () {
		
		myTransform = transform;	
		
		myRange = 100;
		mySpeed = 250;
		
	}
	// Update is called once per frame
	void Update () 
	{
		transform.Translate (Vector3.forward * Time.deltaTime * mySpeed);
		myDist += Time.deltaTime * mySpeed;
		if (myDist >= myRange) {	
			Destroy (gameObject);
		}
		//		myTransform.Translate(Vector3.forward * projectileSpeed * Time.deltaTime);
		//
		//	Destroy (gameObject, 1f);
		
		//target3 = GameObject.FindWithTag ("target").transform;
		
		//target2.z += 8;
		
		//		this.transform.position = Vector3.MoveTowards(this.shoot.position, 
		//		                                              target.transform.position + new Vector3(0,0.5f,0), movesp*Time.deltaTime);
		//		bool loop1 = true;
		//
		//		while (loop1) {
		//
		//			Debug.Log("Hit");
		//
		//			transform.localPosition = Vector3.Lerp (shoot.localPosition, target.localPosition, 5f * Time.deltaTime);
		//			transform.localRotation = Quaternion.Lerp (transform.localRotation, target.localRotation, 5f * Time.deltaTime);
		//			//Destroy (gameObject, 10f);
		//			loop1 = false;
		////
		//		float step = Random.Range(1,10) * Time.deltaTime;
		//		transform.position = Vector3.MoveTowards(shoot.position, 
		//		                                              target.transform.position + new Vector3(0,0.5f,0), step);
		//
		//		}
		
		
		
		
		//transform.position = Vector3.Slerp (shoot.position, target2, movesp * Time.deltaTime);
		
		
	}
	
	
}

