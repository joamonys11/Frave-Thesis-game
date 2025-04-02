using UnityEngine;
using System.Collections;

public class r6 : MonoBehaviour {
	public int count1,count2,count3,count4,count5,count6;  //gun counter die
	public GameObject bomp,missile;
	public static GameObject destination;
	public GameObject[] target;
	public static float speed; 
	public static bool slow;
	public static float speedori;
	public static bool freeze;
	//	public static bool checkpositem = false; 
	
	
	UnityEngine.AI.NavMeshAgent nav;
	
	// Use this for initialization
	void Start () {
		
		count1 = 1;   
		
		count2 = 3;
		
		count3 = 2;
		
		count4 = 2;
		
		count5 = 1;
		
		count6 = 1;
		
		slow = false;
		
		freeze = false;
		
		
		
		
		nav = GetComponent<UnityEngine.AI.NavMeshAgent> ();
		
		speed = 6f;
		
		speedori = speed;
		//i = 0;
		
		destination = GameObject.FindGameObjectWithTag ("target");
	}
	
	// Update is called once per frame
	void Update () {
		
		nav.speed = speed;
		
		
		nav.SetDestination (destination.transform.position);
		
		
		
		if (freeze) {
			
			nav.speed = speed * 0;
			
			
		} else if (slow) {
			
			
			nav.speed = speed/2;
			
		}
		
		
		
		
		
		
		
		
	}
	
	void OnCollisionEnter(Collision collision) {
		
		
		if(collision.gameObject.CompareTag("bompitem"))
		{
			
			
			Destroy(gameObject);
			Debug.Log("bomp");
			
		}
		//		if(collision.gameObject.CompareTag("bullde1"))
		//		{
		//			turretlv = 1;
		//			duration = Mathf.Pow(turretlv,2f)+turretlv;
		//			Debug.Log("DMG : "+duration);
		//			hp-=duration;
		//			Debug.Log("bullde1");
		//			if(hp<=1)
		//			{
		//				Destroy(gameObject);
		//				Instantiate(bomp,transform.position,transform.rotation);
		//				//Destroy(bomp,1f);
		//			}
		//		}
		//		if(collision.gameObject.CompareTag("bullde2"))
		//		{
		//			turretlv = 2;
		//			duration = Mathf.Pow(turretlv,2f)+turretlv;
		//			hp-=duration;
		//			Debug.Log("bullde2");
		//			if(hp<=0)
		//			{
		//				Destroy(gameObject);
		//				//Instantiate(bomp,transform.position,transform.rotation);
		//				//Destroy(bomp,1f);
		//			}
		//		}
		//		if(collision.gameObject.CompareTag("bullde3"))
		//		{
		//			turretlv = 3;
		//			duration = Mathf.Pow(turretlv,2f)+turretlv;
		//			hp-=duration;
		//			Debug.Log("bullde3");
		//			if(hp<=0)
		//			{
		//				Destroy(gameObject);
		//				//Instantiate(bomp,transform.position,transform.rotation);
		//				//Destroy(bomp,1f);
		//			}
		//		}
		if(collision.gameObject.CompareTag("target"))
		{
			
			
			
			
			
			Instantiate(bomp,transform.position,transform.rotation);
			//Destroy(bomp,1f);
			Destroy(gameObject);
			//Instantiate(bomp,transform.position,transform.rotation);
			//Destroy(bomp,1f);
			
			
		}
		
		if(collision.gameObject.CompareTag("p1"))
		{
			////////////////////////////
			count1--;
			if(count1<=0)
				///////////////////
			{
				
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				Destroy(gameObject);
				//Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
			}
			
			
			
		}
		
		if(collision.gameObject.CompareTag("p2"))
		{
			count2--;
			if(count2<=0)
				
			{
				
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				Destroy(gameObject);
			}
			
			
			
		}
		
		if(collision.gameObject.CompareTag("p3"))
		{
			
			
			slow = true;
			
			StartCoroutine(waitforslow());
		}
		
		if(collision.gameObject.CompareTag("p4"))
		{
			
			
			freeze = true;
			
			StartCoroutine(waitforfreeze());
			
		}
		
		
		if(collision.gameObject.CompareTag("p5"))
		{
			
			count5--;
			if(count5<=0)
			{
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				Destroy(gameObject);
			}
			
		}
		
		if(collision.gameObject.CompareTag("p6"))
		{
			
			count6--;
			if(count6<=0)
			{
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				Destroy(gameObject);
			}
			
			
			
		}
		
		
		
		
		
		
		//		if(collision.gameObject.CompareTag("bullde4"))
		//		{
		//			turretlv = 4;
		//			duration = Mathf.Pow(turretlv,2f)+turretlv;
		//			hp-=duration;
		//			Debug.Log("bullde4");
		//			if(hp<=0)
		//			{
		//				Destroy(gameObject);
		//				//Instantiate(bomp,transform.position,transform.rotation);
		//				//Destroy(bomp,1f);
		//			}
		//		}
		
		
		
		
		//		if (collision.gameObject.CompareTag ("destroytank") )
		//		    {
		//			Instantiate(bomp,transform.position,transform.rotation);
		//			Destroy(gameObject,1f);
		//
		//		}
		
		
		
	}
	
	
	
	
	IEnumerator waitforslow()
	{
		
		yield return new WaitForSeconds (5);
		
		
		slow = false;
		
	}
	
	IEnumerator waitforfreeze()
	{
		
		yield return new WaitForSeconds (5);
		
		
		freeze = false;
		
	}
	
}



//



