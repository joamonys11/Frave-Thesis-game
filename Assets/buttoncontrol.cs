using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class buttoncontrol : MonoBehaviour{
	Button button;
	// Use this for initialization
	void Awake()
	{






	}


	void Start () {
	 

		button = GetComponent<Button> ();

	}
	
	// Update is called once per frame
	void Update () {
	
		button.onClick.AddListener (playbutclick);

	}

	public void playbutclick()
	{









	}






}
