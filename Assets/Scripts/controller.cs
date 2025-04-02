using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class controller : MonoBehaviour {


	public static string turret;
	public static int countturret;
	public GameObject[] turretobj; 
//	public GameObject turret1,turret2,turret3,turret4;
	public int selectturret;
	public bool isOn;
	public bool isPause,isOption;
	public GameObject optionui;
	public GameObject Targetlostobj;
	public bool isPlay;
	public GameObject isDetect,gameplay;

	


	//public static bool w1,w2,w3,w4,w5,w6,w7,w8;
	public GameObject loadingscene,progress;

	//public Animator optionset;
	drag turretplace;

	level setlevel;
	// Use this for initialization
	void Awake()
	{
		//Application.targetFrameRate = 30;

	}


	void Start () {
	
		//optionset = GetComponent<Animator> ();
	//slow = 0;
//	bomp = 0;
//	protect = 2;
//	countturret = 0;
//	freeze = 0;
//		hpadd = 0;
//		posspawn = GameObject.Find ("slowpos");

//	slowlyui = GameObject.FindGameObjectWithTag("slowlyui");
//	barierui = GameObject.FindGameObjectWithTag ("barierui");
//	hpplusui = GameObject.FindGameObjectWithTag("hpplusui");
//	freezeui = GameObject.FindGameObjectWithTag("freezeui");
	//bompui = GameObject.Find("bompui");
//bompui.SetActive (false);
//	slowlyui.SetActive (false);
//		barierui = GameObject.FindGameObjectWithTag ("barierui");
//		hpplusui = GameObject.FindGameObjectWithTag("hpplusui");
//		freezeui = GameObject.FindGameObjectWithTag("freezeui");
//		barierui.SetActive (false);
//		freezeui.SetActive (false);
//		hpplusui.SetActive (false);
		//barier = GameObject.FindGameObjectWithTag("barier");
//		barier.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {







		
//		if (protect >= 1) {
//			
//			
//			barierui.SetActive (true);
//		} else if(protect <=0){
//			barierui.SetActive (false);
//		}
//
//		if (hpadd >= 1) {
//
//			hpplusui.SetActive(true);
//
//		}else if(hpadd <=0 ) {
//			hpplusui.SetActive (false);
//		}
//
//		if (freeze >= 1 ) {
//			
//			freezeui.SetActive(true);
//			
//		}else if (freeze <=0) {
//			freezeui.SetActive (false);
//		}
//








	}

	public void exitgame()
	{
		Time.timeScale = 1;
		Application.Quit ();

	}

	public void restart()
	{
		Time.timeScale = 1;
		StartCoroutine (LevelCoroutine (Application.loadedLevel));
	}

//	public void placeturret(int turetselect)
//	{
//		int maxcount = 2 * level.indexlevel + 1;
//
//		Debug.Log ("Maxturret :" + maxcount);
//		selectturret = turetselect;
//
//		if (selectturret == 0 || selectturret == 1 || selectturret == 2 || selectturret == 3) {
//
//
//			if (countturret <= maxcount) {
//
//				if(selectturret == 0)
//				{
//					turret = "turret1";
//					
//				}
//				if(selectturret == 1)
//				{
//					turret = "turret2";
//					
//				}
//				if(selectturret == 2)
//				{
//					turret = "turret3";
//					
//				}
//				if(selectturret == 3)
//				{
//					turret = "turret4";
//					
//				}
//				
//				Instantiate (turretobj [selectturret], spawnturret [countturret].position, Quaternion.identity);
//				
//				countturret++;
//				
//				drag.nameitem = turret;
//				
//				Debug.Log ("Place : " + turret);
//				
//				//t1.placeturret();
//	
//
//
//			}
//
//
//		}
//	}
//
	


			//t1.placeturret();

		
	

//		public void placeturret2()
//		{
//			int maxcount = 2*level.indexlevel+1 ;
//			
//			if (countturret <= maxcount) {
//				
//				turret = "turret2";
//				
//				Instantiate(turret2,spawnturret[countturret].position,Quaternion.identity);
//				
//				countturret++;
//				
//				drag.nameitem = turret;
//				
//				Debug.Log("Place : "+turret);
//				
//				//t1.placeturret();
//	}
//	
//


	public void play()
	{

		Time.timeScale = 1;
		Application.LoadLevel("play");
		

		
	}

	public void nextstage()
	{

		Time.timeScale = 1;
		level.levelindex++;
		level.time+=1f;
		level.indexlevel++;
		StartCoroutine (LevelCoroutine (level.indexlevel));

	}


	public void mainmenu()
	{
		Time.timeScale = 1;
		StartCoroutine (LevelCoroutine (0));


	}

//	public void hplose()
//	{
//
//		target.hp -= 10;
//
//	}
//
//	public void hpplus()
//	{
//		
//		target.hp += 100;
//		hpadd--;
//	}
//
//
//	
//
//	public void timeplus()
//	{
//
//		timer.time += 3f;
//
//	}


//	public void bompuse()
//	{
//
//
//		if (bomp > 0) {
//
//
//			if((level.indexlevel == 7) || (level.indexlevel == 12) || (level.indexlevel == 13) || (level.indexlevel == 21) || (level.indexlevel == 25) || (level.indexlevel == 26) || (level.indexlevel == 34) || (level.indexlevel == 39) || (level.indexlevel == 40)) 
//			{
//			Instantiate (bompitem, posspawn.transform.position, Quaternion.identity);
//			bomp--;
//
//			}
//		}
//	}

//	public void slowuse()
//	{
//		
//		if (slow > 0) {
//			
//			Instantiate (slowly, posspawn.transform.position, Quaternion.identity);
//			slow--;
//			
//		}
//	}
//
//	public void barieruse()
//	{
//
//		if (protect >= 1) {
//
//			barier.SetActive(true);
//			protect--;
//
//		}
//
//	}
//	public void freezeuse()
//	{
//		
//		if (freeze >=1) {
//			
//			Instantiate (freezeitem, posspawn.transform.position, Quaternion.identity);
//			freeze--;
//			
//		}
//	}


	public void playbutton()
	{


		Time.timeScale = 1;
		if (level.indexlevel <= 10) {
			
			timer.time = 60f;
			
			Debug.Log("  levelindex "+level.indexlevel);
		}
		
		if (level.indexlevel >= 11 && level.indexlevel <= 20) {
			
			timer.time = 120f;
			
		}
		if (level.indexlevel >= 21 && level.indexlevel <= 30) {
			
			timer.time = 180f;
			
		}


	}

	public void flashoff()
	{

		isOn = !isOn;

		if (isOn) {
			//CameraDevice.Instance.SetFlashTorchMode (isOn);
		} else {


			//CameraDevice.Instance.SetFlashTorchMode (isOn);
		}

	}

	public void Pausegame()
	{
		
		isPause = !isPause;

		StartCoroutine (waittime ());
	}


	public void optionopen()
	{

//		isOption = !isOption;
//
//	if (isOption) {
//
//
//
//			optionui.GetComponent<Animator> ().SetBool ("optionset", isOption);
//		} else {
//
//
//			optionui.GetComponent<Animator> ().SetBool ("optionset", !isOption);
//		}
		optionui.GetComponent<Animator> ().SetBool ("optionset", true);


			Debug.Log ("IsOption " + isOption);


		}


	IEnumerator LevelCoroutine(int stage)
	{

		Time.timeScale = 1;
		loadingscene.SetActive (true);
		progress.SetActive (true);
		AsyncOperation aysnc = Application.LoadLevelAsync(stage);

		while (!aysnc.isDone) {
			progress.GetComponent<Slider>().value += aysnc.progress;
			
			Debug.Log("Loading :"+aysnc.progress);
			yield return null;
		}


	}

	IEnumerator waittime()
	{
		yield return new WaitForSeconds (2.5f);

		if (isPause) {
			
			Time.timeScale = 0;
			
			
			
		} else {
			
			Time.timeScale = 1;
		}
	}

	public void Resume()
	{
		
		isPause = !isPause;


		optionui.GetComponent<Animator>().SetBool("optionset",false);

		Time.timeScale = 1;

	}




	public void TargetLost()
	{

			gameplay.SetActive(false);
			Targetlostobj.SetActive(true);
			isDetect.SetActive(false);
			


	}

	public void TargetrSet()
	{

		gameplay.SetActive(true	);
			isDetect.SetActive(true);
			Targetlostobj.SetActive(false);


	}






}
