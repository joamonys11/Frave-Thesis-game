using UnityEngine;
using System.Collections;

public class target : MonoBehaviour {
	public static float hp;
	public  float  duration = 0f;
	public float tanklevel;
	public GameObject bomp;
	public AudioClip alarms;
	public float clipEnd;
	AudioSource efx;
	// Use this for initialization


	void Start () {


		hp = 1000;
		Debug.Log("HP Tower "+hp);
	
		efx = GetComponent<AudioSource> ();	
	
	}



	
	// Update is called once per frame
	void Update () {
	
		if (hp <= 250) {

			oncsound (alarms);

		} 
	
	}

	void OnCollisionEnter(Collision collision) {


		if(collision.gameObject.CompareTag("p1")||collision.gameObject.CompareTag("p2")||collision.gameObject.CompareTag("p3")||collision.gameObject.CompareTag("p4")||collision.gameObject.CompareTag("p5")||collision.gameObject.CompareTag("p6"))
		{
			hp-=2.5f;
		
			
			Destroy(collision.gameObject);
			
		}

		if(collision.gameObject.CompareTag("normalbull"))
		   {

			hp-=10;
			Debug.Log("donying");

			Destroy(collision.gameObject);



		}
		if(collision.gameObject.CompareTag("softbull"))
		{

			hp-=15;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}

		if(collision.gameObject.CompareTag("hardbull"))
		{
			hp-=20;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("heavybull"))
		{
			hp-=25;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}

		if(collision.gameObject.CompareTag("r1"))
		{
			hp-=30;
			Debug.Log("donying");

			Destroy(collision.gameObject);
		}

		if(collision.gameObject.CompareTag("r2"))
		{

			Debug.Log("donying");
			
			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("r3"))
		{
			
			Debug.Log("donying");
			
			Destroy(collision.gameObject);
		}

		if(collision.gameObject.CompareTag("r4"))
		{
			
			Debug.Log("donying");
			
			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("r5"))
		{
			
			Debug.Log("donying");
			
			Destroy(collision.gameObject);
		}

		if(collision.gameObject.CompareTag("r2bull"))
		{
			hp-=15;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("r3bull"))
		{
			hp-=5;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}

		if(collision.gameObject.CompareTag("r4bull"))
		{
			hp-=5;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}

		
		if(collision.gameObject.CompareTag("r5bull"))
		{
			hp-=2.5f;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}

		


		if(collision.gameObject.CompareTag("normaltank"))
		{
			hp-=5;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("softtank"))
		{
			hp-=10;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("hardtank"))
		{
			hp-=15;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("heavytank"))
		{
			hp-=20;
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}




//		if(collision.gameObject.CompareTag("normaltank"))
//		{
//			tanklevel = 1;
//			duration = Mathf.Pow(tanklevel,3f)+tanklevel;
//			Debug.Log("ses");
//			if(hp>=0)
//			{
//				hp-=duration;
//				
//			}
//			Destroy(collision.gameObject);
//			
//		}

	}


//	public static void OnDamage(float d)
//	{
//		hp -= d;
//		if (hp <= 0) {
//			
//			
//			Debug.Log("Died");
//			//Application.LoadLevel ("Lose");
//			//Application.LoadLevel("ui");
//		}
//	}

	public void oncsound(AudioClip sound)
	{

			if (Time.time > clipEnd) {
				
				efx.PlayOneShot (sound);
				
				clipEnd = Time.time + sound.length;
				
			}
			
			

	}

}
