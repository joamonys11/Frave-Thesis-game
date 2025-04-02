using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class menumanage : MonoBehaviour {
	public GameObject loadingscene,progress;
	public bool isPause;
	public GameObject Levelmenu,mainmenus;
	public Animator anim;
	//public Animation Levelmenu_anim;
	//public GameObject sidney;
	// Use this for initialization
	void Start () {
	
		Time.timeScale = 1;
	 
		if(anim.gameObject)
		{

			Debug.Log("Animetor found");
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void Loading(int stage)
	{

		StartCoroutine (LevelCoroutine (stage));

		Debug.Log("CLick");
	}

	public void Timeset()
	{
		Time.timeScale = 1;
		
		Debug.Log("Time : "+Time.timeScale);
	}


	IEnumerator LevelCoroutine(int stagenumber)
	{
//		level.levelindex++;
//		level.time+=1f;
//		level.indexlevel++;
		
		loadingscene.SetActive (true);
		progress.SetActive (true);
		Levelmenu.SetActive(false);
		AsyncOperation aysnc = Application.LoadLevelAsync(stagenumber);
		
		while (!aysnc.isDone) {
		

			progress.GetComponent<Slider>().value += aysnc.progress;

			Debug.Log("Loading :"+aysnc.progress);
			yield return null;
		}
		
		
	}



	public void Pausegame()
	{
		
		isPause = !isPause;
		
		if (isPause) {
			
			Time.timeScale = 0;
			
			
			
		} else {
			
			Time.timeScale = 1;
		}
	}


	public void Exit()
	{

		Application.Quit ();
		
		Debug.Log("Time : "+Time.timeScale);
	}

	public void Backtomain()  // morning()
	{
			//sidney.eat;
	//sidney.sleep;
		mainmenus.SetActive(true); //m1
		//anim.Play("");
		
		//on.Play();
		
	
		Levelmenu.SetActive(false); //m2
		//Levelmenu_anim.Play("Close");


	}

	public void Levelselect() //evening()
	{
	Levelmenu.SetActive(true);
    mainmenus.SetActive(false);



	//sidney.poop;
	//sidney.sing;

	}

	// eat , sleep
	//sidney.eat;
	//sidney.sleep;

	// คำสั่งพิเศษให้ซิดนี้ทำทุกอย่างทุกอย่างในการเรียก 1 ครั้ง


}
