using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class bullettplay1 : MonoBehaviour {
	//public Vector3 target2,target1;
	//public float movesp;
	//public float journeyTime = 1.0f;
	//public Transform shoot;
	//private float startTime;
	//public Transform target3;
	//public string name1;
	//Transform target1;
	public float mySpeed;
	public float myRange;
	private float myDist;
	private Transform myTransform;
	public GameObject tardes;
	AudioSource efx;
	public AudioClip keep; 
	Rigidbody rigid;
	// Use this for initialization
	//private float projectileSpeed = 30; 
	void Start () {
		
		Debug.Log("Check Bullet Spawn :  1 ");
		myTransform = transform;	
		mySpeed = 1000f;
		//rigid = GetComponent<Rigidbody> ();
		Destroy (gameObject, 10f);

		efx = GetComponent<AudioSource> ();

	}
	// Update is called once per frame
	void Update () 
	{
		transform.Translate (Vector3.forward * Time.deltaTime * mySpeed);

		
		//rigid.AddForce (transform.forward * mySpeed/100);
//		rigid.AddRelativeForce(Vector3.forward * mySpeed*Time.deltaTime);
	}
	
	void OnCollisionEnter(Collision other) {

		if (other.gameObject.tag == "desplay") {
			
			target.hp-=2f;
			Instantiate(tardes,transform.position,transform.rotation);
			Destroy(gameObject,1);
			
		}
		
		if (other.gameObject.tag == "target") {
			
			target.hp-=2f;
			
			Instantiate(tardes,transform.position,transform.rotation);
			Destroy(gameObject,3f);
			
			Debug.Log("Des");
			
		}

		if (other.gameObject.tag == "floor") {
			

			Instantiate(tardes,transform.position,transform.rotation);
			Destroy(gameObject,3f);
			
			Debug.Log("Des");
			
		}
		
		
		if (other.gameObject.tag == "barieritem")
		{
			
			
			itempanel.protect+=1;
			AudioSource.PlayClipAtPoint(keep,transform.position,0.5f);
			Destroy(other.gameObject);
			
			
			
		}
		
		
		if (other.gameObject.tag == "freezeitem")
		{
			
			
			itempanel.freeze+=1;
			AudioSource.PlayClipAtPoint(keep,transform.position,0.5f);
			Destroy(other.gameObject);
			
		}
		
		if (other.gameObject.tag == "hpplus")
		{
			
			
			itempanel.hpadd+=1;
			AudioSource.PlayClipAtPoint(keep,transform.position,0.5f);
			Destroy(other.gameObject);
			
		}
		
		if (other.gameObject.tag == "gun2")
		{

			if(spawnbullet.limit < 2 )
			{
				if(spawnbullet.countbulletw2 <1)
				{
				StartCoroutine(plusbulletui());
					AudioSource.PlayClipAtPoint(keep,transform.position,0.5f);
				spawnbullet.countbulletw2+=30;
				}
			}
				
			Destroy(other.gameObject);
			
		}
		
		if (other.gameObject.tag == "gun3")
		{
			
			if(spawnbullet.limit < 2)
			{
				if(spawnbullet.countbulletw3 <1)
				{

				StartCoroutine(plusbulletui());
					AudioSource.PlayClipAtPoint(keep,transform.position,0.5f);
				spawnbullet.countbulletw3+=10;
				}
			}

			Destroy(other.gameObject);
			
		}
		
		if (other.gameObject.tag == "gun4")
		{
			
			if(spawnbullet.limit <2)
			{
				if(spawnbullet.countbulletw4 < 1)
				{

					StartCoroutine(plusbulletui());
					AudioSource.PlayClipAtPoint(keep,transform.position,0.5f);
					spawnbullet.countbulletw4+=20;
			
				
				}
			}
				Destroy(other.gameObject);
			
		}
		
		if (other.gameObject.tag == "gun5")
		{

			if(spawnbullet.limit <2)
			{
				if(	spawnbullet.countbulletw5 <1)
				{
				StartCoroutine(plusbulletui());
					AudioSource.PlayClipAtPoint(keep,transform.position,0.5f);
				spawnbullet.countbulletw5+=10;
		
				}
			}

			Destroy(other.gameObject);
			
		}
		
		if (other.gameObject.tag == "gun6")
		{
			if(spawnbullet.limit <2)
			{
				if(spawnbullet.countbulletw6 <1)
				{
					StartCoroutine(plusbulletui());
					AudioSource.PlayClipAtPoint(keep,transform.position,0.5f);
					spawnbullet.countbulletw6+=2;

			}

			}
			Destroy(other.gameObject);
			
		}
		
		
		
		
		
		if (other.gameObject.tag == "normaltank") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		
		if (other.gameObject.tag == "softtank") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		if (other.gameObject.tag == "hardtank") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		
		if (other.gameObject.tag == "heavytank") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		if (other.gameObject.tag == "r1") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		if (other.gameObject.tag == "r2") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		if (other.gameObject.tag == "r3") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		if (other.gameObject.tag == "r4") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		if (other.gameObject.tag == "r5") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		if (other.gameObject.tag == "r6") 	
		{
			Debug.Log("Hit");
			//Instantiate(bomp,transform.position,transform.rotation);
			Destroy(gameObject);
			
			//targetdestination.destination= null;
			//Application.LoadLevel("scene2");
			
			//Debug.Log(login_database.id_acc);
			
			
			
		}
		
		
	}
	
	IEnumerator plusbulletui()
	{



		spawnbullet.limit += 1;

		yield return new WaitForSeconds (0f);

	}
	
	
	
}

