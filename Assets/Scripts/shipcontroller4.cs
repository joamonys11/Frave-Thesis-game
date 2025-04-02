using UnityEngine;
using System.Collections;

public class shipcontroller4 : MonoBehaviour {
	public GameObject scene1,scene2,scene3;

	// Use this for initialization

	void Awake()
	{


		scene1 = GameObject.Find("normaltank_4");
		scene2 =  GameObject.Find("heavytank_4");
		scene3 = GameObject.Find("metal_4");
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
