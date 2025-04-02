using UnityEngine;
using System.Collections;

public class shipcontroller3 : MonoBehaviour {
	public GameObject scene1,scene2,scene3;

	// Use this for initialization

	void Awake()
	{


		scene1 = GameObject.Find("normaltank_3");
		scene2 =  GameObject.Find("heavytank_3");
		scene3 = GameObject.Find("lighttank_3");
		scene1.SetActive (false);
		scene2.SetActive (false);
		scene3.SetActive (false);

	}

	void Start () {
	

		StartCoroutine (stagearrage ());

	}
	
	// Update is called once per frame
	void Update () {

	
	}


	IEnumerator stagearrage()
	{

		scene1.SetActive (true);

		yield return new WaitForSeconds (10);

		scene2.SetActive (true);

		yield return new WaitForSeconds(20);

		scene3.SetActive (true);


		yield return new WaitForSeconds (120);

		scene1.SetActive (false);
		scene2.SetActive (false);
		scene3.SetActive (false);

	}




}
