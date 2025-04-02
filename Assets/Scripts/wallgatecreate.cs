using UnityEngine;
using System.Collections;

public class wallgatecreate : MonoBehaviour {
	public GameObject target,building,onepoint,twopoint,threepoint;
	// Use this for initialization
	void Awake()
	{
		target = GameObject.Find("target");
		building = GameObject.Find ("buliding");
		onepoint = GameObject.Find("lighttank");
		twopoint = GameObject.Find("heavytank");
		threepoint = GameObject.Find("normaltank");
		target.SetActive (false);
		building.SetActive (false);
		onepoint.SetActive (false);
		twopoint.SetActive (false);
		threepoint.SetActive (false);


	}

	void Start () {

//		target = GameObject.Find("target");
//		building = GameObject.Find ("buliding");
//		onepoint = GameObject.Find("lighttank");
//		twopoint = GameObject.Find("heavytank");
//		threepoint = GameObject.Find("normaltank");
//		target.SetActive (false);
//		building.SetActive (false);
//		onepoint.SetActive (false);
//		twopoint.SetActive (false);
//		threepoint.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
	
	
		StartCoroutine (towncreator ());
	}

	IEnumerator towncreator()
	{
		yield return new WaitForSeconds (2);

		building.SetActive (true);

		yield return new WaitForSeconds (5);

		target.SetActive (true);

		yield return new WaitForSeconds (2);

		onepoint.SetActive (true);

		yield return new WaitForSeconds (5);

		twopoint.SetActive (true);

		yield return new WaitForSeconds(5);
		
		threepoint.SetActive (true);

		yield return new WaitForSeconds (3);
		


	}
}