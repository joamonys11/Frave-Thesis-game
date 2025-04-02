using UnityEngine;
using System.Collections;

public class enableobs : MonoBehaviour {
	GameObject bunkle;

	// Use this for initialization
	void Awake()
	{

		bunkle = GameObject.FindGameObjectWithTag ("bunkle");
		bunkle.SetActive (false);



	}


	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {


	}

	void OnTriggerEnter(Collider collision) {

		if (collision.gameObject.CompareTag ("normaltank"))
		{
			bunkle.SetActive(true);
			Destroy(gameObject);
			Debug.Log("hitbunkle");
		}
		if (collision.gameObject.CompareTag ("lighttank"))
		{
			bunkle.SetActive(true);
			Destroy(gameObject);
			Debug.Log("hitbunkle");
		}
		if (collision.gameObject.CompareTag ("heavytank"))
		{
			bunkle.SetActive(true);
			Destroy(gameObject);
			Debug.Log("hitbunkle");
		}
		if (collision.gameObject.CompareTag ("tank4"))
		{
			bunkle.SetActive(true);
			Destroy(gameObject);
			Debug.Log("hitbunkle");
		}

	}


}
