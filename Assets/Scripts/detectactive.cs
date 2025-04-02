using UnityEngine;
using System.Collections;

public class detectactive : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		if (hitraycast.enemy != null) {
			gameObject.SetActive (true);
		} else {
			gameObject.SetActive (false);

		}
	}
}
