using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class turretdefend3 : MonoBehaviour {
	public Vector3 target2,target1;
	public float movesp;
	public float journeyTime = 1.0f;
	public Transform shoot;
	private float startTime;
	//public Transform target3;
	//public string name1;
	//Transform target1;
	
	// Use this for initialization
	
	void Start () {
		
		
		
		startTime = Time.time;
		target2 = GameObject.Find("markdefend3").transform.position;
		//target1 = GameObject.Find (hitraycast.enemy).transform;
		shoot = GameObject.Find ("spawnerdefend3").transform;
		
		//		target = GameObject.FindWithTag("target").transform.position;
		
		//	movesp = 30f;
		
	}
	// Update is called once per frame
	void Update () 
	{
		
		
		
		
		//shoot = GameObject.Find ("shootpoint").transform;
		//target3 = GameObject.FindWithTag ("target").transform;
		
		//target2.z += 8;
		
		//		this.transform.position = Vector3.MoveTowards(this.shoot.position, 
		//		                                              target.transform.position + new Vector3(0,0.5f,0), movesp*Time.deltaTime);
		//		bool loop1 = true;
		//
		//		while (loop1) {
		//
		//			Debug.Log("Hit");
		//
		//			transform.localPosition = Vector3.Lerp (shoot.localPosition, target.localPosition, 5f * Time.deltaTime);
		//			transform.localRotation = Quaternion.Lerp (transform.localRotation, target.localRotation, 5f * Time.deltaTime);
		//			//Destroy (gameObject, 10f);
		//			loop1 = false;
		////
		//		float step = Random.Range(1,10) * Time.deltaTime;
		//		transform.position = Vector3.MoveTowards(shoot.position, 
		//		                                              target.transform.position + new Vector3(0,0.5f,0), step);
		//
		//		}
		
		
		
		
		//transform.position = Vector3.Slerp (shoot.position, target2, movesp * Time.deltaTime);
		
		float fracComplete = (Time.time - startTime) / journeyTime;
		
		
		
		//transform.position = Vector3.MoveTowards (shoot.position, target2, fracComplete);
		transform.position = Vector3.Slerp(shoot.position, target2,  fracComplete);
		//transform.position = Vector3.Lerp(shoot.position, target2,  fracComplete);
		Debug.Log("Shoot");
		Destroy (gameObject,1f);
		//target = GameObject.FindWithTag("target");
		
		//transform.position = Vector3.MoveTowards(transform.position,target1.position,  bulletspeed*Time.deltaTime);
		
		
		//transform.localPosition = Vector3.Lerp (transform.localPosition,target1.localPosition,3f*Time.deltaTime);
		//transform.localRotation = Quaternion.Lerp (transform.localRotation, target1.localRotation, 3f * Time.deltaTime);
		//
		
		
		
		//Debug.Log (target1);
		
		
	}
	
	
	//	void OnTriggerEnter(Collider other) {
	//		
	//		if (other.gameObject.tag == "target") {	
	//			{
	//				Debug.Log("Hit");
	//				Destroy(gameObject,1f);
	//				Destroy(other.gameObject,1f);
	//				//Application.LoadLevel("scene2");
	//				
	//				//Debug.Log(login_database.id_acc);
	//				
	//				
	//			}
	//			
	//		}
	
	
	//	public void SetDestination(Vector3 destination, float time)
	//	{
	//		t = 0;
	//		startPosition = transform.position;
	//		timeToReachTarget = time;
	//		target = destination; 
	//	}
	
}


