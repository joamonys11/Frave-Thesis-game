using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class timer : MonoBehaviour {
	//public Text timerLabel;
	private Animator timeanim;
	public static float time;
	public GameObject win,go;
	public GameObject[] r2,r3,r4,r5,normal,soft,hard,heavy;
	public static int r2c,r3c,r4c,r5c,normalc,softc,hardc,heavyc;
	public static  float unitr2,unitr3,unitr4,unitr5,unitn,units,unith,unithea;


	void Start()
	{
		
		//		win.SetActive (false);
		//		go.SetActive (false);

		Time.timeScale = 1;
		r2c = 0;
		r3c = 0;
		r4c = 0;
		r5c = 0;
		normalc = 0;
		softc = 0;
		hardc = 0;
		heavyc = 0;
		
		if (Application.loadedLevel == 1) {

			unitr2 = 13f;


		}

    	if (Application.loadedLevel == 2) {
			
			unitr2 = 13f;
			unitr3 = 11f;
			
		}

		if (Application.loadedLevel == 3) {
			
			unitr2 = 15f;
			unitr3 = 11f;
			
		}

		if (Application.loadedLevel == 4) {
			
			unitr2 = 15f;
			unitr3 = 13f;
			
		}

		if (Application.loadedLevel == 5) {
			
			unitr2 = 15f;
			unitr3 = 13f;
			unitn = 9f;
		}

		if (Application.loadedLevel == 6) {
			
			unitr2 = 15f;
			unitr3 = 13f;
			unitn = 11f;
		}

		if (Application.loadedLevel == 7) {
			
			unitr2 = 17f;
			unitr3 = 15;
			unitn = 11f;
		}

		if (Application.loadedLevel == 8) {
			
			unitr2 = 17f;
			unitr3 = 15f;
			unitn = 11f;
			units = 5f;
		}


		if (Application.loadedLevel == 9) {
			
			unitr2 = 17f;
			unitr3 = 15f;
			unitn = 11f;
			units = 7f;
		}

		
		if (Application.loadedLevel == 10) {
			
			unitr2 = 19f;
			unitr3 = 15f;
			unitr4 = 7f;
			unitn = 11f;
			units = 7f;
		}

		if (Application.loadedLevel == 11) {
			
			unitr2 = 19f;
			unitr3 = 15f;
			unitr4 = 7f;
			unitn = 11f;
			units = 7f;
		}

		if (Application.loadedLevel == 12) {
			
			unitr2 = 19f;
			unitr3 = 15f;
			unitr4 = 9f;
			unitn = 11f;
			units = 7f;
		}
		if (Application.loadedLevel == 13) {
			
			unitr2 = 19f;
			unitr3 = 15f;
			unitr4 = 11f;
			unitn = 11f;
			units = 7f;
		}
		if (Application.loadedLevel == 14) {
			
			unitr2 = 19f;
			unitr3 = 15f;
			unitr4 = 11f;
			unitn = 11f;
			units = 7f;
		}

		if (Application.loadedLevel == 15) {
			
			unitr2 = 19f;
			unitr3 = 15f;
			unitr4 = 11f;
			unitn = 11f;
			units = 7f;
			unith =3f;
		}

		if (Application.loadedLevel == 16) {
			
			unitr2 = 19f;
			unitr3 = 15f;
			unitr4 = 13f;
			unitn = 11f;
			units = 9f;
			unith =5f;
		}	
		if (Application.loadedLevel == 17) {
			
			unitr2 = 19f;
			unitr3 = 15f;
			unitr4 = 13f;
			unitn = 11f;
			units = 9f;
			unith =7f;
		}	

		if (Application.loadedLevel == 18) {
			
			unitr2 = 23f;
			unitr3 = 15f;
			unitr4 = 13f;
			unitn = 13f;
			units = 9f;
			unith =7f;
		}	
		if (Application.loadedLevel == 19) {
			
			unitr2 = 23f;
			unitr3 = 15f;
			unitr4 = 13f;
			unitn = 13f;
			units = 9f;
			unith =7f;
		}	

		if (Application.loadedLevel == 20	) {
			
			unitr2 = 23f;
			unitr3 = 15f;
			unitr4 = 13f;
			unitn = 13f;
			units = 11f;
			unith =7f;
		}	

		if (Application.loadedLevel == 21	) {
			
			unitr2 = 23f;
			unitr3 = 15f;
			unitr4 = 13f;
			unitr5 =5f;
			unitn = 13f;
			units = 11f;
			unith =7f;
		}	
		if (Application.loadedLevel == 22	) {
			
			unitr2 = 23f;
			unitr3 = 17f;
			unitr4 = 13f;
			unitr5 =7f;
			unitn = 13f;
			units = 11f;
			unith =7f;
		}	

		
		if (Application.loadedLevel == 23	) {
			
			unitr2 = 23f;
			unitr3 = 17f;
			unitr4 = 15f;
			unitr5 =9f;
			unitn = 13f;
			units = 11f;
			unith =7f;
		}	

		if (Application.loadedLevel == 24	) {
			
			unitr2 = 23f;
			unitr3 = 17f;
			unitr4 = 15f;
			unitr5 =11f;
			unitn = 13f;
			units = 11f;
			unith =7f;
		}	

		if (Application.loadedLevel == 25	) {
			
			unitr2 = 23f;
			unitr3 = 17f;
			unitr4 = 15f;
			unitr5 =11f;
			unitn = 15f;
			units = 11f;
			unith =7f;
			unithea = 5f;
		}	

		if (Application.loadedLevel == 26	) {
			
			unitr2 = 23f;
			unitr3 = 19f;
			unitr4 = 17f;
			unitr5 =15f;
			unitn = 15f;
			units = 13f;
			unith =11f;
			unithea = 7f;
		}	

		
		
		if (Application.loadedLevel == 27	) {
			
			unitr2 = 23f;
			unitr3 = 19f;
			unitr4 = 17f;
			unitr5 =15f;
			unitn = 15f;
			units = 13f;
			unith =11f;
			unithea = 7f;
		}	

		
		if (Application.loadedLevel == 28	) {
			
			unitr2 = 23f;
			unitr3 = 19f;
			unitr4 = 17f;
			unitr5 =15f;
			unitn = 15f;
			units = 13f;
			unith =13f;
			unithea = 7f;
		}	

		
		if (Application.loadedLevel == 29	) {
			unitr2 = 23f;
			unitr3 = 19f;
			unitr4 = 17f;
			unitr5 =17f;
			unitn = 15f;
			units = 15f;
			unith =13f;
			unithea = 9f;
		}	

		
		if (Application.loadedLevel == 30	) {
			
			unitr2 = 23f;
			unitr3 = 19f;
			unitr4 = 17f;
			unitr5 =17f;
			unitn = 17f;
			units = 15f;
			unith =15f;
			unithea = 11f;
		}	
	}



	void Update() {


	
//		timeanim =  GetComponent<Animator> ();
//		time -= Time.deltaTime;
		//r1 = GameObject.FindGameObjectsWithTag("r1");
		r2 = GameObject.FindGameObjectsWithTag("r2");
		r3 = GameObject.FindGameObjectsWithTag("r3");
		r4 = GameObject.FindGameObjectsWithTag("r4");
		r5 = GameObject.FindGameObjectsWithTag("r5");
		normal = GameObject.FindGameObjectsWithTag("normaltank");
		soft = GameObject.FindGameObjectsWithTag("softtank");
		hard = GameObject.FindGameObjectsWithTag("hardtank");
		heavy  = GameObject.FindGameObjectsWithTag("heavytank");

		Debug.Log ("R2c : " + r2c);
		Debug.Log ("R3c : " + r3c);
		Debug.Log ("R4c : " + r4c);
		Debug.Log ("R5c : " + r5c);
		Debug.Log ("NOr : " + normalc);
		Debug.Log ("Sof : " + softc);
		Debug.Log ("Hard : " + hardc);
		Debug.Log ("Heavy : " + heavyc);




		if (Application.loadedLevel == 1) 
		{
			if( r2c == unitr2 )
			{

				Debug.Log("DO1");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}	

		
		if (Application.loadedLevel == 2) 
		{
			if( r2c == unitr2 && r3c  == unitr3  )
			{
				Debug.Log("DO2");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		if (Application.loadedLevel == 3) 
		{
			if( r2c == unitr2 && r3c  == unitr3  )
			{
				Debug.Log("DO3");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		if (Application.loadedLevel == 4) 
		{
			if( r2c == unitr2 && r3c  == unitr3  )
			{Debug.Log("DO4");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		if (Application.loadedLevel == 5) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  )
			{Debug.Log("DO5");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		if (Application.loadedLevel == 6) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  )
			{Debug.Log("DO6");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		if (Application.loadedLevel == 7) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  )
			{Debug.Log("DO7");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		if (Application.loadedLevel == 8) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  && softc  == units )
			{Debug.Log("DO8");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		
		if (Application.loadedLevel == 9) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  && softc  == units )
			{Debug.Log("DO9");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		if (Application.loadedLevel == 10) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  && softc  == units )
			{Debug.Log("DO10");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		if (Application.loadedLevel  >= 11 &&  Application.loadedLevel  <= 14 ) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  && softc  == units  && r4c == unitr4 )
			{Debug.Log("DO11-14");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}
	
		if (Application.loadedLevel >= 15  &&  Application.loadedLevel <= 20) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  && softc  == units  && r4c == unitr4  && hardc  == unith )
			{Debug.Log("DO15-20");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}
		
		if (Application.loadedLevel >= 21  &&  Application.loadedLevel <= 24) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  && softc  == units  && r4c == unitr4  && hardc  == unith && r5c == unitr5 )
			{Debug.Log("DO21-24");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}

		if (Application.loadedLevel >= 25  &&  Application.loadedLevel <= 30) 
		{
			if( r2c == unitr2 && r3c  == unitr3 &&   normalc  == unitn  && softc  == units  && r4c == unitr4  && hardc  == unith && r5c == unitr5 && heavyc == unithea )
			{Debug.Log("DO25-30");
				win.SetActive(true);
				Time.timeScale = 0;
			}
			
		}














		if(target.hp<=0)
		{
			go.SetActive(true);
			//time = 0;
			Time.timeScale = 0;

		}

			
		
	}




	IEnumerator Cleanstage()
	{
		 
		yield return new WaitForSeconds (2);

		Destroy(GameObject.FindWithTag("r1"));
		
		Destroy(GameObject.FindWithTag("r2"));
		
		Destroy(GameObject.FindWithTag("r3"));
		
		Destroy(GameObject.FindWithTag("r4"));
		
		Destroy(GameObject.FindWithTag("r5"));
		
		Destroy(GameObject.FindWithTag("normaltank"));
		
		Destroy(GameObject.FindWithTag("hardtank"));
		
		Destroy(GameObject.FindWithTag("heavytank"));
		
		Destroy(GameObject.FindWithTag("softtank"));



	}
}