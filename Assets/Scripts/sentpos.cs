using UnityEngine;
using System.Collections;

public class sentpos : MonoBehaviour {
	public static GameObject marketset;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		marketset.transform.position = transform.position;
	}
}
