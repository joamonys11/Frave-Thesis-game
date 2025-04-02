using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class soundcontrol : MonoBehaviour {
	AudioSource src;
	public AudioClip play;
	public AudioClip[] bgm;
	public int random;
	public bool isSound;
	public GameObject sound;
	public Sprite onsound,offsound;


	void Start () {
	
		src = GetComponent<AudioSource> ();
		random = Random.Range (0, 2);

		if (Application.loadedLevel != 0) 
		{
			playsound ();
		}
		if (Application.loadedLevel == 0) 
		{
			src.PlayOneShot (bgm [2]);
		}


	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void playbut()
	{

		src.PlayOneShot (play,0.5f);
	}


	public void playsound()
	{

		src.PlayOneShot (bgm [random]);

	}

	public void isMute()
	{
		isSound = !isSound;
		if (isSound) {
			sound.GetComponent<Image>().sprite = offsound;
			src.Stop();
			
			
			
		} else {
				sound.GetComponent<Image>().sprite = onsound;
			if (Application.loadedLevel != 0) 
			{
				
				playsound ();
			}
			if (Application.loadedLevel == 0) 
			{
				src.PlayOneShot (bgm [2]);
			}

		}

	}

}
