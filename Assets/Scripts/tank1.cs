using UnityEngine;
using System.Collections;

public class tank1 : MonoBehaviour {
	float speed,speed1;
	// Use this for initialization
	void Start () {
	
		speed = 3f;
		speed1 = -3f;
	}
	
	// Update is called once per frame
	void Update () {


		transform.Translate ( speed1*Time.deltaTime,0, speed*Time.deltaTime);
		if(transform.position.z >= -0.305)
		{
			speed = 0;
			speed1 = 0;

		}
	
	}
}
