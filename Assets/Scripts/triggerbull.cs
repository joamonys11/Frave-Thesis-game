using UnityEngine;
using System.Collections;

public class triggerbull : MonoBehaviour {
	public GameObject bullspawn;
	public bool check;
	// Use this for initialization

	void Awake()
	{
		check = true;
		bullspawn = GameObject.Find("spawn");
		bullspawn.SetActive (false);

	}

	void Start () {
	

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider other) {
		if (other.gameObject.tag == "radarbull") {
			//Destroy(other.gameObject,1f);
			if(check)
			{

			bullspawn.SetActive(true);
				check = false;
			}

		}

	}
}
