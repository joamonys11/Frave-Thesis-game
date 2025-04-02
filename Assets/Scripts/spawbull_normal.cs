using UnityEngine;
using System.Collections;

public class spawbull_normal : MonoBehaviour {
	
	public GameObject bullet,muzzleEffect;
	public Transform post;
	public float tanklevel = 1f;
	public float speed;
	// Use this for initialization
	void Start () 
	{
		speed = 1f;

		InvokeRepeating ("bullethit",0, speed);

	}
	
	// Update is called once per frame
	void Update () {

		
	}
	
	void bullethit()
		
	{
		
		Instantiate (bullet, post.position, post.rotation);
		Instantiate(muzzleEffect,post.position,post.rotation);
		
	}



	
	
}
