using UnityEngine;
using System.Collections;

public class barier : MonoBehaviour {
	public float timeup;
	public GameObject bomp,barierob;
	// Use this for initialization
	void Start () {



	}
	
	// Update is called once per frame
	void Update () {




		StartCoroutine (waitfortime ());


		
	}




	
	void OnCollisionEnter(Collision collision) {
		
		
		if(collision.gameObject.CompareTag("normalbull"))
		{

			
			Destroy(collision.gameObject);
			
		}
		if(collision.gameObject.CompareTag("softbull"))
		{

			
			Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("hardbull"))
		{

			
			Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("heavybull"))
		{

			Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("r1"))
		{

			Destroy(collision.gameObject);
		}

		if(collision.gameObject.CompareTag("r2"))
		{
			
			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("r3"))
		{
			
			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("r4"))
		{
			
			Destroy(collision.gameObject);
		}

		if(collision.gameObject.CompareTag("r5"))
		{
			
			Destroy(collision.gameObject);
		}


		if(collision.gameObject.CompareTag("r2bull"))
		{

			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("r3bull"))
		{

			
			Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("r4bull"))
		{

			
			Destroy(collision.gameObject);
		}
		
		
		if(collision.gameObject.CompareTag("r5bull"))
		{

			
			Destroy(collision.gameObject);
		}
		
		
		if(collision.gameObject.CompareTag("r6bull"))
		{

			
			Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("normaltank"))
		{

			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("softtank"))
		{

			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("hardtank"))
		{

			Destroy(collision.gameObject);
		}
		if(collision.gameObject.CompareTag("heavytank"))
		{

			Destroy(collision.gameObject);
		}
		
		
		
		
		//		if(collision.gameObject.CompareTag("normaltank"))
		//		{
		//			tanklevel = 1;
		//			duration = Mathf.Pow(tanklevel,3f)+tanklevel;
		//			Debug.Log("ses");
		//			if(hp>=0)
		//			{
		//				hp-=duration;
		//				
		//			}
		//			Destroy(collision.gameObject);
		//			
		//		}
		
	}

	IEnumerator waitfortime()
	{


		yield return new WaitForSeconds (10f);
	
		barierob.SetActive (false);


	}




	
	//	public static void OnDamage(float d)
	//	{
	//		hp -= d;
	//		if (hp <= 0) {
	//			
	//			
	//			Debug.Log("Died");
	//			//Application.LoadLevel ("Lose");
	//			//Application.LoadLevel("ui");
	//		}
	//	}
	
	
	
}
