using UnityEngine;
using System.Collections;

public class w4: MonoBehaviour {
	public GameObject r2,r3;
	// Use this for initialization
	void Awake()
	{
		r2.SetActive (false);
		r3.SetActive (false);
		
		
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
		
		yield return new WaitForSeconds (3f);
		
		r3.SetActive (true);
		
		
	}
	
}
