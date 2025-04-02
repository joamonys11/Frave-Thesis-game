using UnityEngine;
using System.Collections;

public class swith : MonoBehaviour {
	public GameObject turret;
	public int typeturret;
	// Use this for initialization
	void Start () {
	
		turret.SetActive (false);


	}
	
	// Update is called once per frame
	void Update () {
		Vector3 v3;

		
		Touch touch = Input.touches[0];
		Vector3 pos = touch.position;
		
		if(touch.phase == TouchPhase.Began) {
			RaycastHit hit;
			Ray ray = Camera.main.ScreenPointToRay(pos); 
			if(Physics.Raycast(ray, out hit) && (hit.collider.tag == "turreton"))
			{
				turret.SetActive(true);
			}
		}
	}


}
