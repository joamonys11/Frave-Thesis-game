using UnityEngine;
using System.Collections;

public class swithturret : MonoBehaviour {
	public GameObject d1;
	// Use this for initialization
	void Start () {

		d1.SetActive (false);
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision other)
		
			{
				if (other.gameObject.tag == "defend1") {
					Debug.Log("Born Turret de1");
					Destroy(other.gameObject);
					Destroy(gameObject);
				    d1.SetActive(true);
				}
		
		
			}

}
