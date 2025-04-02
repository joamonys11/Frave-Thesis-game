using UnityEngine;
using System.Collections;

public class alarmenemy: MonoBehaviour {
	//Animator lockdetect;
	//public static bool islock;
	AudioSource efx;
	public AudioClip alarms;
	public float clipEnd;
	public bool isAlarm;
	// Use this for initialization
	void Start () {
		//lockdetect = GetComponent<Animator> ();
		
		efx = GetComponent<AudioSource> ();	


	}
	
	// Update is called once per frame
	void Update () {
		
		
//		if (hitraycast.enemy != null&&hitraycast.enemy!= "floor") {
//			lockdetect.Play("animlock");
//			//oncsound(lockefx);
//			//lockdetect.SetBool ("isLock", true);
//			
//		} else {
//			//clipEnd = 0;
//			//efx.Stop();
//			lockdetect.Play("in");
//			//efx.PlayOneShot(lost,0.2f);
//			//lockdetect.SetBool ("isLock", false);
//			
//		}
		
		
		//		if (hitraycast.enemy == "tower" || hitraycast.enemy == "target") {
		//
		//			oncsound (lockefx);
		//
		//		} else {
		//
		//			clipEnd = 0;
		//		}
		
	}



	
	
	public void oncsound(AudioClip sound)
	{
		if (isAlarm) {
			if (Time.time > clipEnd) {
			
				efx.PlayOneShot (sound);
			
				clipEnd = Time.time + sound.length;
			
			}

			//clipEnd = 0;
		}
	}

	void OnTriggerStay(Collider collision) {
		
		if(collision.gameObject.CompareTag("r1"))
		{
			oncsound(alarms);
			Debug.Log("donying");
			isAlarm = false;
			
			//Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("r2"))
		{
			oncsound(alarms);
			Debug.Log("donying");
			
			//Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("r3"))
		{
			oncsound(alarms);
			Debug.Log("donying");
			
			//Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("r4"))
		{
			oncsound(alarms);
			Debug.Log("donying");
			
			//Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("r5"))
		{
			oncsound(alarms);
			Debug.Log("donying");
			
			//Destroy(collision.gameObject);
		}

		if(collision.gameObject.CompareTag("normaltank"))
		{
			oncsound(alarms);
			Debug.Log("donying");
			//Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("softtank"))
		{
			//hp-=10;
			oncsound(alarms);
			Debug.Log("donying");
			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("hardtank"))
		{
			//hp-=15;
			oncsound(alarms);
			Debug.Log("donying");
			//Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("heavytank"))
		{
			oncsound(alarms);
			Debug.Log("donying");
			//Destroy(collision.gameObject);
		}

		
		}
		
		
		
}
