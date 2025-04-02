using UnityEngine;
using System.Collections;

public class bullfull : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	

		spawnbullet.bulletfull = true;



	}
	
	// Update is called once per frame
	void Update () {

		StartCoroutine (waitfordes ());
			
	
	}

	IEnumerator waitfordes()
	{

		yield return new WaitForSeconds (1);

		spawnbullet.bulletfull = false;

		Destroy (gameObject);



	}

}
