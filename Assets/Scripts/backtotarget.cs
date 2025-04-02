using UnityEngine;
using System.Collections;

public class backtotarget : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
		StartCoroutine (waitimedes ());
		Debug.Log("settoitem");
		//StartCoroutine (backtotarget1 ());

	}
	
	// Update is called once per frame
	void Update () {
	

		targetdestination.destination = GameObject.FindGameObjectWithTag("item");

	}



	void OnTriggerEnter(Collider collision) {


		if (collision.gameObject.CompareTag ("heavytank"));
		{

			targetdestination.destination = GameObject.FindGameObjectWithTag("target");



	}

		if (collision.gameObject.CompareTag ("normaltank"));
		{
			
			targetdestination.destination = GameObject.FindGameObjectWithTag("target");
			
			
			
		}
		if (collision.gameObject.CompareTag ("lighttank"));
		{
			
			targetdestination.destination = GameObject.FindGameObjectWithTag("target");
			
			
			
		}
	
}

	IEnumerator waitimedes()
	{

		yield return new WaitForSeconds (10);
		targetdestination.destination = GameObject.FindGameObjectWithTag("target");

		Destroy (gameObject);

	}

}
