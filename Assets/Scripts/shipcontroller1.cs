using UnityEngine;
using System.Collections;

public class shipcontroller1 : MonoBehaviour {
	public GameObject scene1,scene2,scene3;

	// Use this for initialization

	void Awake()
	{


		scene1 = GameObject.Find("lighttank_1");
		scene2 =  GameObject.Find("heavytank_1");

		scene1.SetActive (false);
		scene2.SetActive (false);
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


		yield return new WaitForSeconds(120);

		scene1.SetActive (false);
		scene2.SetActive (false);
		scene3.SetActive (false);


	}




}
