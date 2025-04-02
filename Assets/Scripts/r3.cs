using UnityEngine;
using System.Collections;

public class r3 : MonoBehaviour {
	public int count1,count2,count3,count4,count5,count6;  //gun counter die
	public GameObject bomp,missile,slowpar,freezepar;
	public static GameObject destination;
	public GameObject[] target;
	public static float speed; 
	public static bool slow;
	public static float speedori;
	public static bool freeze;
	public float attackdis;
	public GameObject spawn;
	public float countsum;
	public LineRenderer line;
	AudioSource efx;
	public AudioClip destroy;
	public GameObject tardes;


	//	public static bool checkpositem = false; 
	
	
	UnityEngine.AI.NavMeshAgent nav;
	
	// Use this for initialization
	void Start () {

		countsum = 2;

		count1 = 1;   
		
		count2 = 1;
		
		count3 = 1;
		
		count4 = 1;
		
		count5 = 2;

		slow = false;
		
		freeze = false;
		
		attackdis = 600f;
		spawn.SetActive (false);
		
		nav = GetComponent<UnityEngine.AI.NavMeshAgent> ();

		line = GetComponent<LineRenderer> ();

		efx = GetComponent<AudioSource> ();
		
		speed = 15f;
		
		speedori = speed;
		//i = 0;
		
		destination = GameObject.FindGameObjectWithTag ("des");
	}
	
	// Update is called once per frame
	void Update () {

		float distance = Vector3.Distance (destination.transform.position, transform.position);
		
		
		
		
//		Debug.Log ("Disr3 :" + distance);
		
		
		if (distance < attackdis ) {
			
			spawn.SetActive(true);
			
		}


		nav.speed = speed;


		//line.SetPosition (0, transform.position);
		
		//Drawpath (nav.path);
		
		nav.SetDestination (destination.transform.position);
		
		
		
		if (freeze) {
			
			nav.speed = speed * 0;
			
			
		} else if (slow) {
			
			
			nav.speed = speed-speed*0.8f;
			
		}
		
		
		
		
		
		
		
		
	}
	
	void OnCollisionEnter(Collision collision) {
		
		
		if(collision.gameObject.CompareTag("bompitem"))
		{
			
			
			Instantiate(tardes,transform.position,transform.rotation);
			timer.r3c +=1;
			Destroy(gameObject,1f);

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
			
			
			
			
			
			Instantiate(tardes,transform.position,transform.rotation);
			
			//Destroy(bomp,1f);
			timer.r3c +=1;
			Destroy(gameObject,1f);
			//Instantiate(bomp,transform.position,transform.rotation);
			//Destroy(bomp,1f);
			
			
		}
		
		if(collision.gameObject.CompareTag("p1"))
		{
			////////////////////////////
			countsum-=1;
			if(countsum<=0)
				///////////////////
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				timer.r3c +=1;
				Destroy(gameObject);
				//Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
			}
			
			
			
		}
		
		if(collision.gameObject.CompareTag("p2"))
		{
			countsum-=2;
			if(countsum<=0)
				
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				timer.r3c +=1;
				Destroy(gameObject);
			}
			
			
			
		}
		
		if(collision.gameObject.CompareTag("p3"))
		{
			countsum-=2;
			Instantiate(slowpar,transform.position,transform.rotation);
			//Destroy(bomp,1f);
			
			if(countsum<=0)
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				timer.r3c +=1;
				Destroy(gameObject);
			}
			
			slow = true;
			
			StartCoroutine(waitforslow());
		}
		
		if(collision.gameObject.CompareTag("p4"))
		{
			
			countsum-=2;
			if(countsum<=0)
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				timer.r3c +=1;
				Destroy(gameObject);
			}
		}
		
		
		if(collision.gameObject.CompareTag("p5"))
		{
			
			countsum-=2;
			if(countsum<=0)
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				timer.r3c +=1;
				Destroy(gameObject);
			}
			
		}
		
//		if(collision.gameObject.CompareTag("p6"))
//		{
//			
//			countsum-=count1;
//			if(countsum<=0)
//			{
//				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
//				Instantiate(bomp,transform.position,transform.rotation);
//				//Destroy(bomp,1f);
//				timer.r3c +=1;
//				Destroy(gameObject);
//			}
//			
//			
//			
//		}
		
		
		
		
		
		
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
		
		countsum-=1;
		
		yield return new WaitForSeconds (10f);
		
		
		slow = false;
		
		if(countsum<=0)
			
		{
			
			Instantiate(bomp,transform.position,transform.rotation);
			//Destroy(bomp,1f);
			Destroy(gameObject);
		}
	}
	
	IEnumerator waitforfreeze()
	{
		Instantiate(freezepar,transform.position,transform.rotation);

		
		yield return new WaitForSeconds (3);
		
		
		freeze = false;
		
	}


	
	public void Drawpath(UnityEngine.AI.NavMeshPath path)
	{
		
		if (path.corners.Length < 2) {
			return;
			
		}
		
		line.SetVertexCount (path.corners.Length);
		
		for (int i = 1; i<path.corners.Length; i++) {
			
			line.SetPosition(i,path.corners[i]);
		}
		
		
	}
	
}



//



