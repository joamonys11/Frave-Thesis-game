using UnityEngine;
using System.Collections;

public class canonturet2 : MonoBehaviour {
	public float mySpeed  =10f;
	public float myRange = 30f;
	private float myDist;
	// Use this for initialization
	void Start () {
	



	}
	
	// Update is called once per frame
	void Update () {
	
		transform.Translate (Vector3.forward * Time.deltaTime * mySpeed);
		myDist += Time.deltaTime * mySpeed;
		if (myDist >= myRange)
			Destroy (gameObject);

	}

	



}
