using UnityEngine;
using System.Collections;

public class missilescript : MonoBehaviour {
	public float journeyTime = 20.0f;
	public Transform shoot;
	public Vector3 target;


	private float startTime;

	// Use this for initialization
	void Start () {
		startTime = Time.time;


		target = GameObject.FindGameObjectWithTag("turret").transform.position;
		shoot = GameObject.FindGameObjectWithTag("shoot").transform;


	}
	
	// Update is called once per frame
	void Update () {


		float fracComplete = (Time.time - startTime) / journeyTime;

		transform.position = Vector3.Slerp(shoot.position, target,  fracComplete);
			
		Destroy (gameObject, 1);

	}
}
