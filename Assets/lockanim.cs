using UnityEngine;
using System.Collections;

public class lockanim : MonoBehaviour {
	Animator lockdetect;
	public static bool islock;
	 AudioSource efx;
	public AudioClip lockefx,lost;
	public float clipEnd;
	// Use this for initialization
	void Start () {
		lockdetect = GetComponent<Animator> ();

		efx = GetComponent<AudioSource> ();	
	}
	
	// Update is called once per frame
	void Update () {
	

		if (hitraycast.enemy != null&&hitraycast.enemy!= "floor" &&hitraycast.enemy!= "tower") {
			lockdetect.Play("animlock");
			//oncsound(lockefx);
			//lockdetect.SetBool ("isLock", true);

		} else {
			//clipEnd = 0;
			//efx.Stop();
			lockdetect.Play("in");
			//efx.PlayOneShot(lost,0.2f);
			//lockdetect.SetBool ("isLock", false);

		}


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
		if(Time.time>clipEnd)
		{

			efx.PlayOneShot(sound);

			clipEnd = Time.time + sound.length;

	}
	}
}
