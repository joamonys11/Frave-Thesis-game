using UnityEngine;
using System.Collections;

public class hitraycast : MonoBehaviour {
	Ray ray;
	RaycastHit objectHit;
	public GameObject detect;
	//Transform cam;
	//public  GameObject arcam; 
	//public static GameObject target1;
	public static string enemy;
	// Use this for initialization
	void Start ()
	{
		int x = Screen.width / 2;
		int y = Screen.height / 2;
		
		//ray = Camera.main.ScreenPointToRay (Input.mousePosition);

		ray = Camera.main.ScreenPointToRay (new Vector3(x, y));
		//cam = Camera.main.transform;
		//ray = new Ray(Vector3.zero, -cam.forward);
		
		
	}
	
	// Update is called once per frame
	void Update () {
		Debug.DrawRay(ray.origin, ray.direction * 10000, new Color(1f,0.922f,0.016f,1f));
		if (Physics.Raycast (transform.position, transform.forward, out objectHit, 10000)) {
			//Debug.Log("Raycast hitted to: " + objectHit.collider);
			//Debug.Log (objectHit.collider.name);
			enemy = objectHit.collider.name;

			Debug.Log ("Enemy : " + enemy);	


		
			
		} else {

			enemy = null;

		}


		if (enemy != null && enemy != "floor" ) {
			detect.SetActive (true);
			
			Debug.Log ("Enemy : " + enemy);
		} else {

			detect.SetActive (false);

		}
		
		
		
	}
	
	//		if (Physics.Raycast(transform.position, transform.forward, out objectHit, 10000)) {
	//			//Debug.Log("Raycast hitted to: " + objectHit.collider);
	//			Debug.Log(objectHit.collider.name);
	//			enemy = objectHit.collider.name;
	//			
	//			
	//			Debug.Log("Enemy : "+ enemy);
	//			
	//			
	//		}
	
	
	
	
}
