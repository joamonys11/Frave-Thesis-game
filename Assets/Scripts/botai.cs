using UnityEngine;
using System.Collections;

public class botai : MonoBehaviour {
	public Transform target,myTransform;
	public float moveSpeed;
	public float rotationSpeed;
	public float range,range2,stop;

	// Use this for initialization
	void Awake()
	{

		
		myTransform = transform; //cache transform data for easy access/preformance
	}


	void Start () {
	
		range = 10f;
		range2 = 10f;
		stop = 0;
		moveSpeed = 3;
		rotationSpeed = 3;
		target = GameObject.FindWithTag("Player").transform; //target the player

	}
	
	// Update is called once per frame
	void Update () {
	
	float distance;
		 distance = Vector3.Distance(myTransform.position, target.position);
		if (distance<=range2 &&  distance>=range){
			myTransform.rotation = Quaternion.Slerp(myTransform.rotation,
			                                        Quaternion.LookRotation(target.position - myTransform.position), rotationSpeed*Time.deltaTime);
		}
		
		
		else if(distance<=range && distance>stop){
			
			//move towards the player
			myTransform.rotation = Quaternion.Slerp(myTransform.rotation,
			                                        Quaternion.LookRotation(target.position - myTransform.position), rotationSpeed*Time.deltaTime);
			myTransform.position += myTransform.forward * moveSpeed * Time.deltaTime;
		}
		else if (distance<=stop) {
			myTransform.rotation = Quaternion.Slerp(myTransform.rotation,
			                                        Quaternion.LookRotation(target.position - myTransform.position), rotationSpeed*Time.deltaTime);
		}


	}



}


