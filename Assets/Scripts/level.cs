using UnityEngine;
using System.Collections;

public class level : MonoBehaviour {
	//public static float scenenum;
	// Use this for initialization
	public static int levelindex;
	public static float flevel =0f;
	public static float time;
	public static int indexlevel;

	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		levelset (levelindex);
		Debug.Log (levelindex);

	}

	public void levelset(int set)
	{
		levelindex = set;

	flevel = (float)levelindex;

		Debug.Log ("level :" + flevel);

	}
}
