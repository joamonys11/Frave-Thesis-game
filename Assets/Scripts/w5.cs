using UnityEngine;
using System.Collections;

public class w5: MonoBehaviour {
	public GameObject r2,r3,nor;
	// Use this for initialization
	void Awake()
	{
		r2.SetActive (false);
		r3.SetActive (false);
		nor.SetActive (false);
		
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
		
		yield return new WaitForSeconds (11f);

		nor.SetActive (true);
	}
	
}
