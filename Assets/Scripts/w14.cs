using UnityEngine;
using System.Collections;

public class w14: MonoBehaviour {
	public GameObject r2,r3,nor,soft,r4;
	// Use this for initialization
	void Awake()
	{
		r2.SetActive (false);
		r3.SetActive (false);
		nor.SetActive (false);
		soft.SetActive (false);
		r4.SetActive (false);
	}
	
	void Start () {
		
		
	}
	
	// Update is called once per frame
	void Update () {
		
		
		
		StartCoroutine (waitfor ());
		
		
		
	}
	
	IEnumerator waitfor()
	{
		yield return new WaitForSeconds (3f);
		
		r2.SetActive (true);
		
		yield return new WaitForSeconds (5f);
		
		r3.SetActive (true);
		
		yield return new WaitForSeconds (7f);
		
		r4.SetActive (true);
		
		yield return new WaitForSeconds (1f);
		
		nor.SetActive (true);
		yield return new WaitForSeconds (9f);
		
		soft.SetActive (true);
	}
	
}
