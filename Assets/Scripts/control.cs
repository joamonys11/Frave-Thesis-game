using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class control : MonoBehaviour {
	// Use this for initialization
	void Start () {

		Time.timeScale = 1;

		level.indexlevel = 1;

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void levelselect(int select)
	{
		

		//Application.LoadLevel (select);
		SceneManager.LoadScene(select);



	}
}
