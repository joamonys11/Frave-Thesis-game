using UnityEngine;
using System.Collections;

public class w1 : MonoBehaviour {
	public GameObject r2;
	// Use this for initialization
	void Awake()
	{
		//nor.SetActive (false);
		//soft.SetActive (false);

		r2.SetActive (false);

	}

	void Start () {
	



	}
	
	// Update is called once per frame
	void Update () {
	
		StartCoroutine (waitfor ());


	
//		if (level.indexlevel < 11)
//		{
//			if (timer.time < 81) {
//				
//				StopAllCoroutines();
//				
//			}
//		}
//		if (level.indexlevel >= 11 && level.indexlevel <=20 )
//		{
//			if (timer.time < 61) {
//				
//				StopAllCoroutines();
//				
//			}
//		}
//		
//		
//		if (level.indexlevel >= 21 && level.indexlevel <=30 )
//		{
//			if (timer.time <81) {
//				
//				StopAllCoroutines();
//				
//			}
//		}

	}

	IEnumerator waitfor()
	{
		yield return new WaitForSeconds (1f);

		
		r2.SetActive (true);





	}

}
