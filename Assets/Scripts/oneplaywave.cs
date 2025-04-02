using UnityEngine;
using System.Collections;

public class oneplaywave : MonoBehaviour {
	public GameObject w1,w2,w3,w4;
	// Use this for initialization
	void Start () {

		w1 = GameObject.Find("wave1");
		w2 = GameObject.Find("wave2");
		w3 = GameObject.Find("wave3");
		w4 = GameObject.Find("wave4");

		w1.SetActive (false);
		w2.SetActive (false);
		w3.SetActive (false);
		w3.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
	
		StartCoroutine (aitank ());

	}

	IEnumerator aitank()
	{

		w1.SetActive (true);

		yield return new WaitForSeconds (120);

		w2.SetActive (true);

		yield return new WaitForSeconds (120);


			w3.SetActive (true);

		yield return new WaitForSeconds (120);

		
		w4.SetActive (true);





	}
}
