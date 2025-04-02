using UnityEngine;
using System.Collections;

public class cameraCtrl : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		if(Input.GetKey(KeyCode.A)){

			transform.Rotate (0, -1, 0);
		}

		if(Input.GetKey(KeyCode.D)){

			transform.Rotate (0, 1, 0);
		}

		if(Input.GetKey(KeyCode.W)){

			transform.Translate (0, 0, 1);
		}

		if(Input.GetKey(KeyCode.S)){

			transform.Translate (0, 0, -1);
		}

		if(Input.GetKey(KeyCode.UpArrow)){

			transform.Translate (0, 1, 0);
		}

		if(Input.GetKey(KeyCode.DownArrow)){

			transform.Translate(0, -1, 0);
		}

		if(Input.GetKey(KeyCode.RightArrow)){

			transform.Translate (1, 0, 0);
		}

		if(Input.GetKey(KeyCode.LeftArrow)){

			transform.Translate (-1, 0, 0);
		}
	
	}
}
