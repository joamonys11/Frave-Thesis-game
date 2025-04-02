using UnityEngine;
using System.Collections;

public class stage1 : MonoBehaviour {

	// Use this for initialization
	void Awake()
	{
		level.time = 1f;
		level.indexlevel = Application.loadedLevel;   // test define is to number 
		Time.timeScale = 1;
		//level.indexlevel = 2;   // test define is to number 
	}

	void Start () {




	
	}
	
	// Update is called once per frame
	void Update () {


	}
}
