using UnityEngine;
using System.Collections;

public class settown : MonoBehaviour {
	GameObject townset;

	// Use this for initialization
	void Start () {
	

	}
	
	// Update is called once per frame
	void Update () {
		townset = GameObject.Find("ImageTarget");
		transform.position = townset.transform.position;
	}
}
