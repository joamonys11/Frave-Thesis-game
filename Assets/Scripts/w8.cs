using UnityEngine;
using System.Collections;

public class w8: MonoBehaviour {
	public GameObject r2,r3,nor,soft;
	// Use this for initialization
	void Awake()
	{
		r2.SetActive (false);
		r3.SetActive (false);
		nor.SetActive (false);
		soft.SetActive (false);
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
		
		yield return new WaitForSeconds (5f);
		
		r3.SetActive (true);
		
		yield return new WaitForSeconds (3f);
		
		nor.SetActive (true);

		yield return new WaitForSeconds (11f);

		soft.SetActive (true);
	}
	
}
