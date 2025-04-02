using UnityEngine;
using System.Collections;

public class spawndefend3 : MonoBehaviour {
	
	public GameObject bullet;
	public Transform post;
	// Use this for initialization
	void Start () {
		
		InvokeRepeating("bullethit", 2, 1F);
		
	}
	
	// Update is called once per frame
	void Update () {
		
		
		
	}
	
	void bullethit()
		
	{
		
		Instantiate (bullet, post.position, post.rotation);
		
	}
	
	
}
