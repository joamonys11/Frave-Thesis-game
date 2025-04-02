using UnityEngine;
using System.Collections;

public class Turret_Canon4 : MonoBehaviour {
	public GameObject myProjectile;
	public static float reloadTime;
	public static float oriReloadtime=0f;
	public float turnSpeed = 10f;
	public static float firePauseTime;
	public static float firPauseOri =0f;
	public GameObject muzzleEffect;
	public float errorAmount = .001f;
	public Transform myTarget;
	public Transform[] muzzlePositions;
	public Transform turretBall;
	public float turretlevel = 4f;
	public float tanklevel;
	private float nextFireTime;
	private float nextMoveTime;
	private Quaternion desiredRotation;
	private float aimError;
	public  float  duration = 0f;
	public float hp;
	
	// Use this for initialization
	void Start () {
		
		hp = 100 * turretlevel;
		
		reloadTime = turretlevel / (Mathf.Pow (turretlevel, 3f));
		
		firePauseTime = turretlevel / ((Mathf.Pow (turretlevel, 3f)) + turretlevel);
		
		firPauseOri = firePauseTime;
		
		oriReloadtime = reloadTime;
	}
	
	// Update is called once per frame
	void Update () {
		
		if (myTarget) {
			
			if (Time.time >= nextMoveTime) {
				CalculateAimPosition (myTarget.position);
				turretBall.rotation = Quaternion.Lerp (turretBall.rotation, desiredRotation, Time.deltaTime * turnSpeed);
				
			}
			if (Time.time >= nextFireTime) {
				FireProjectile ();
			}
			
			
		}
		
		
	}
	
	void OnTriggerEnter(Collider collision) {
		
		
		if (collision.gameObject.CompareTag ("normaltank")) {
			nextFireTime = Time.time + (reloadTime);
			myTarget = collision.gameObject.transform;
			
		}
		if (collision.gameObject.CompareTag ("heavytank")) {
			nextFireTime = Time.time + (reloadTime);
			myTarget = collision.gameObject.transform;
			
		}
		
		if (collision.gameObject.CompareTag ("softtank")) {
			nextFireTime = Time.time + (reloadTime);
			myTarget = collision.gameObject.transform;
			
		}
		if (collision.gameObject.CompareTag ("hardtank")) {
			nextFireTime = Time.time + (reloadTime);
			myTarget = collision.gameObject.transform;
			
		}
		
		if (collision.gameObject.CompareTag ("missile")) {
			
			firePauseTime = 10f;
			reloadTime = 10f;
		}
		
		if(collision.gameObject.CompareTag("normalbull"))
		{
			tanklevel = 1;
			duration = Mathf.Pow(tanklevel,3f)+tanklevel;
			if(hp>=0)
			{
				hp-=duration;
				Debug.Log("normalbull");
			}
			if(hp<=1)
			{
				Destroy(gameObject);
				//Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
			}
			Destroy(collision.gameObject);
			
		}
		if(collision.gameObject.CompareTag("softbull"))
		{
			tanklevel = 2;
			duration = Mathf.Pow(tanklevel,3f)+tanklevel;
			if(hp>=0)
			{
				hp-=duration;
				Debug.Log("softbull");
			}
			if(hp<=1)
			{
				Destroy(gameObject);
				//Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
			}
			Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("hardbull"))
		{
			tanklevel = 3;
			duration = Mathf.Pow(tanklevel,3f)+tanklevel;
			if(hp<=0)
			{
				hp-=duration;
				Debug.Log("hardbull");
			}
			if(hp<=1)
			{
				Destroy(gameObject);
				//Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
			}
			Destroy(collision.gameObject);
		}
		
		if(collision.gameObject.CompareTag("heavybull"))
		{
			tanklevel = 4;
			duration = Mathf.Pow(tanklevel,3f)+tanklevel;
			if(hp<=0)
			{
				hp-=duration;
				Debug.Log("heavybull");
			}
			if(hp<=1)
			{
				Destroy(gameObject);
				//Instantiate(bomp,transform.position,transform.rotation);
				//Destroy(bomp,1f);
			}
			Destroy(collision.gameObject);
		}
		
		
	}
	
	void OnTriggerExit(Collider collission)
	{
		if (collission.gameObject.transform == myTarget) 
		{
			myTarget = null;
			
			
		}
		
		if (collission.gameObject.CompareTag("missile")){
			
			firePauseTime = firPauseOri;
			reloadTime = oriReloadtime;
		}
	}
	
	
	void CalculateAimPosition(Vector3  targetPos)
	{
		
		//		var aimPoint = Vector3(targetPos.x + aimError, targetPos.y + aimError, taretPos.z + aimError);
		//	Vector3	aimPoint = new Vector3(targetPos.x-aimError, targetPos.y-aimError, targetPos.z-aimError );
		Vector3 aimPoint = myTarget.position - transform.position;
		
		
		//aimPoint = new Vector3 (aimPoint.x, transform.position.y, aimPoint.z);
		//aimPoint.Normalize ();
		desiredRotation = Quaternion.LookRotation(aimPoint);
		
	}
	
	//	void CalculateAimError()
	//	{
	//
	//		aimError = Random.Range (-errorAmount, errorAmount);
	//
	//	}
	
	void FireProjectile()
	{
		
		nextFireTime = Time.time + reloadTime;
		nextMoveTime = Time.time + firePauseTime;
		//CalculateAimError ();
		
		foreach(Transform ThemuzzlePos in muzzlePositions)
		{
			Instantiate(myProjectile,ThemuzzlePos.position,ThemuzzlePos.rotation);
			Instantiate(muzzleEffect,ThemuzzlePos.position,ThemuzzlePos.rotation);
			
			
			
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
