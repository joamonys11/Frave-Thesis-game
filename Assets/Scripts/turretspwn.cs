using UnityEngine;
using System.Collections;

public class turretspwn : MonoBehaviour {
	
	public GameObject bullet;
	public Transform post;
	// Use this for initialization
	void Start () {
		
		bullet = GameObject.FindWithTag("bullter");
		InvokeRepeating("bullethit", 4, 5F);
		
	}
	
	// Update is called once per frame
	void Update () {
		
		
		
	}
	
	void bullethit()
		
	{
		
		Instantiate (bullet, post.position, post.rotation);
		
	}
	
	
}
