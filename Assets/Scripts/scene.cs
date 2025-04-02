using UnityEngine;
using System.Collections;

public class scene : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	public void gotogame()
	{

		Application.LoadLevel("play1");

	}

	public void gotostart()
	{
		
		Application.LoadLevel("main");
		
	}

	public void gotomode()
	{
		
		Application.LoadLevel("modeselect");
		
	}

	public void exitgame()
	{
		
		Application.Quit();
		
	}
}
