using UnityEngine;
using System.Collections;

public class w2: MonoBehaviour {
	public GameObject r3,r2;
	// Use this for initialization
	void Awake()
	{
	
		r3.SetActive (false);
		r2.SetActive (false);

	}
	
	void Start () {
		

		
	}
	
	// Update is called once per frame
	void Update () {
		
		
		StartCoroutine (waitfor ());
		
		
		
		


	}
	
	IEnumerator waitfor()
	{
		yield return new WaitForSeconds (1f);
		
		r2.SetActive (true);
		
		yield return new WaitForSeconds (7f);
		
		r3.SetActive (true);

	}
	
}
