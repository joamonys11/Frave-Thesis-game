﻿using UnityEngine;
using System.Collections;


public class r1 : MonoBehaviour {
	public int count1,count2,count3,count4,count5,count6;  //gun counter die
	public GameObject bomp,missile,slowpar,freezepar,floor;
	public LineRenderer line;
	public GameObject destination;
	public GameObject[] target;
	public static float speed; 
	public static bool slow;
	public static float speedori;
	public static bool freeze;
	public float countsum;
	AudioSource efx;
	public AudioClip destroy;
	public GameObject tardes;
	//	public static bool checkpositem = false; 
	
	
	UnityEngine.AI.NavMeshAgent nav;

	// Use this for initialization
	void Start () {

		efx = GetComponent<AudioSource> ();

		countsum = 1;

		count1 = 1;   

		count2 = 1;

		count3 = 1;

		count4 = 1;

		count5 = 1;

		count6 = 1;

		slow = false;
		
		freeze = false;
		 
		nav = GetComponent<UnityEngine.AI.NavMeshAgent> ();

		line = GetComponent<LineRenderer>(); //get the line renderer

		destination = GameObject.FindGameObjectWithTag ("des");
		///////////////
		speed = 35f;

		speedori = speed;
		//i = 0;
		

	}
	
	// Update is called once per frame
	void Update () {


		nav.speed = speed;


		nav.SetDestination (destination.transform.position);


		//line.SetPosition (0, transform.position);

		//Drawpath (nav.path);

		
		if (freeze) {
			
			nav.speed = speed * 0;
			
			
		} else if (slow) {
			
			
			nav.speed = speed-speed*0.8f;

			Debug.Log("Slowr1");
		}
		



		
	

		
	}
	
	void OnCollisionEnter(Collision collision) {
		
		
		if(collision.gameObject.CompareTag("bompitem"))
		{
			
			
			Instantiate(tardes,transform.position,transform.rotation);
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
				Destroy(gameObject,1f);
				//Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);

			
		}
		
		if(collision.gameObject.CompareTag("p1"))
		{
			////////////////////////////
			countsum-=count6;

			if(countsum<=0)
				///////////////////
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				Instantiate(floor,transform.position,transform.rotation);


				//Destroy(bomp,1f);
				Destroy(gameObject);
				//Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
			}
			
			
			
		}
		
		if(collision.gameObject.CompareTag("p2"))
		{
			countsum-=count5;
			if(countsum<=0)
		
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				Destroy(gameObject);
			}
			
			
			
		}
		
		if(collision.gameObject.CompareTag("p3"))
		{
			countsum-=1;
			Instantiate(slowpar,transform.position,transform.rotation);
			//Destroy(bomp,1f);

			if(countsum<=0)
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				Destroy(gameObject);
			}

			slow = true;

			StartCoroutine(waitforslow());
		}
		
		if(collision.gameObject.CompareTag("p4"))
		{
			countsum-=count3;
			if(countsum<=0)
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				Destroy(gameObject);
			}

//			freeze = true;
//
//			StartCoroutine(waitforfreeze());
//			
		}
		
		
		if(collision.gameObject.CompareTag("p5"))
		{
			
			countsum-=count2;
			if(countsum<=0)
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
				Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
				Destroy(gameObject);
			}
			
		}
		
		if(collision.gameObject.CompareTag("p6"))
		{
			
			countsum-=count1;
			if(countsum<=0)
			{
				AudioSource.PlayClipAtPoint(destroy,transform.position,0.5f);
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
		//Destroy(bomp,1f);
		
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



