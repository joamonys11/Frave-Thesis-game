using UnityEngine;
using System.Collections;

public class shipcontroller2 : MonoBehaviour {
	public GameObject scene1,scene2;

	// Use this for initialization

	void Awake()
	{


		scene1 = GameObject.Find("normaltank_2");
		scene2 =  GameObject.Find("metal_2");

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


	}




}
