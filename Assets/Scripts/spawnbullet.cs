using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class spawnbullet : MonoBehaviour
{
	public GameObject[] shoot;
	public GameObject pos;
	public string target;
	public int selectgun_index;
	public static int countbulletw1,countbulletw2,countbulletw3,countbulletw4,countbulletw5,countbulletw6,countbulletw7,countbulletw8;
	public static int icountbulletw1,icountbulletw2,icountbulletw3,icountbulletw4,icountbulletw5,icountbulletw6,icountbulletw7,icountbulletw8;
	public int count1,count2,count3,count4,count5,count6,count7,count8;
	public static  bool bulletfull;
	public GameObject g2,g3,g4,g5,g6;
	public static int limit;	
	public AudioClip s1,s2,s3,s4,s5,s6;
	AudioSource efx;

	// Use this for initializatio
	
	void Start () {
	
		efx = GetComponent<AudioSource> ();

		limit = 0;

		bulletfull = false;
		target = "tower";

	
		countbulletw2 = 0;
		countbulletw3 = 0;
		countbulletw4 =0;
		countbulletw5 = 0;
		//countbulletw6 = 111;

		g2 = GameObject.FindGameObjectWithTag("g2");
		g3 = GameObject.FindGameObjectWithTag("g3");
		g4 = GameObject.FindGameObjectWithTag("g4");
		g5 = GameObject.FindGameObjectWithTag("g5");
		//g6 = GameObject.FindGameObjectWithTag("g6");

//		g2.SetActive (false);
//		g3.SetActive (false);
//		g4.SetActive (false);
//		g5.SetActive (false);
		//g6.SetActive (false);


		g2.GetComponent<Button> ().interactable = false;
		g3.GetComponent<Button> ().interactable = false;
		g4.GetComponent<Button> ().interactable = false;
		g5.GetComponent<Button> ().interactable = false;

		
		

	
	}
	
	// Update is called once per frame
	void Update () {
		
		//Debug.Log("Bullet Check amount 1:"+ countbulletw2);
		//Debug.Log("Bullet Check amount 2:"+ countbulletw3);
		//Debug.Log("Bullet Check amount 3:"+ countbulletw4);
		//Debug.Log("Bullet Check amount 4:"+ countbulletw5); 
		//Debug.Log ("Limit :" + limit);

if(efx != null)
		{
		Debug.Log(" EFX TEST "+efx);
	}else
		Debug.Log(" EFX NOT FOUND "+efx);
	



		if (limit <=2) {


			if (countbulletw2 > 0) {

				g2.GetComponent<Button> ().interactable = true;

			}



			if (countbulletw3 > 0) {
			
				g3.GetComponent<Button> ().interactable = true;

			}

			if (countbulletw4 > 0) {
				g4.GetComponent<Button> ().interactable = true;

			}

			if (countbulletw5 > 0) {
			
				g5.GetComponent<Button> ().interactable = true;
			}

//			if (countbulletw6 > 0) {
//			
//				g6.SetActive (true);
//
//			}

		}

		Debug.Log ("count1 " + count1);
		Debug.Log ("count2 " + count2);
		Debug.Log ("count3 " + count3);

//		Debug.Log ("count2  "+countbulletw2);
//		Debug.Log ("count3  "+countbulletw3);
//		Debug.Log ("count4  "+countbulletw4);
//		Debug.Log ("count5  "+countbulletw5);
//		Debug.Log ("count6  "+countbulletw6);
//		Debug.Log ("count7  "+countbulletw7);
//		Debug.Log ("count8  "+countbulletw8);

		if (bulletfull) {

			icountbulletw2 = countbulletw2;
			icountbulletw3 = countbulletw3;
			icountbulletw4 = countbulletw4;
			icountbulletw5 = countbulletw5;
			icountbulletw6 = countbulletw6;
			icountbulletw7 = countbulletw7;
			icountbulletw8 = countbulletw8;

		} else {


			bulletfull = false;

		}



			if(Input.GetKeyDown(KeyCode.Alpha1))
			{
				
				StartCoroutine (gunw1 ());



			}

			if(Input.GetKeyDown(KeyCode.Alpha2))
			{

			if (countbulletw2  > 0) {
				StartCoroutine (gunw2 ());
				countbulletw2--;
				if(countbulletw2 < 1)
				{
					limit--;
					g2.GetComponent<Button> ().interactable = false;

				}
			}

			}

			if(Input.GetKeyDown(KeyCode.Alpha3))
			{
			if (countbulletw3 > 0) {
				StartCoroutine (gunw3 ());
				countbulletw3--;
				if(countbulletw3 < 1)
				{
					limit--;
					g3.GetComponent<Button> ().interactable = false;
				}
			}

			}


			if(Input.GetKeyDown(KeyCode.Alpha4))
			{

			if (countbulletw4 > 0) {
				StartCoroutine (gunw4 ());
				countbulletw4--;
				if(countbulletw4 < 1)
				{
					limit--;
					g4.GetComponent<Button> ().interactable = false;
				}
			}




			}

			if(Input.GetKeyDown(KeyCode.Alpha5))
			{
				
			if (countbulletw5 > 0) {
				StartCoroutine (gunw5 ());
				countbulletw5--;
				if(countbulletw5 < 1)
				{
					limit--;
					g5.GetComponent<Button> ().interactable = false;
				}
			}
				
				
				
			}

//			if(Input.GetKeyDown(KeyCode.Alpha6))
//			{
//				
//			if (countbulletw6 > 0) {
//				StartCoroutine (gunw6 ());
//				countbulletw6--;
//				if(countbulletw6 < 1)
//				{
//					limit--;
//					g6.SetActive(false);					
//				}
//			}
//				
//				
//				
//				
//			}
//











	}


	public void fightbullet()
	{

		Debug.Log("Shooting bullet "+selectgun_index);



			if (selectgun_index == 1) {


				
			StartCoroutine(gunw1());

			}



			if (selectgun_index == 2) {

			if (countbulletw2  > 0) {
				StartCoroutine (gunw2 ());
				countbulletw2--;
				if(countbulletw2 < 1)
				{
					limit--;
					g2.GetComponent<Button> ().interactable = false;
				}
			}
			
			}
			if (selectgun_index == 3) {
			if (countbulletw3 > 0) {
				StartCoroutine (gunw3 ());
				countbulletw3--;
				if(countbulletw3 < 1)
				{
					limit--;
					g3.GetComponent<Button> ().interactable = false;
				}
			}

			
			
			}
			if (selectgun_index == 4) {

			if (countbulletw4 > 0) {
				StartCoroutine (gunw4 ());
				countbulletw4--;
				if(countbulletw4 < 1)
				{
					limit--;
					g4.GetComponent<Button> ().interactable = false;
				}
			}
			
			
			}
			if (selectgun_index == 5) {
			if (countbulletw5 > 0) {
				StartCoroutine (gunw5 ());
				//Debug.Log("Gun 5");
				countbulletw5--;	
				if(countbulletw5 < 1)
				{
					limit--;
					g5.GetComponent<Button> ().interactable = false;
				}
			}
			
			
			}
//			if (selectgun_index == 6) {
//			if (countbulletw6 > 0) {
//				StartCoroutine (gunw6 ());
////				countbulletw6--;
//				if(countbulletw6 < 1)
//				{
//					limit--;
//					g6.SetActive(false);					
//				}
//			}
//
//			
//			
//			}



		} 


	public void Selectgun()
	{

		fightbullet ();
	}

	public void setgun(int selectgun)
	{
		selectgun_index = selectgun;
		Debug.Log("Select : "+selectgun);

	}




	IEnumerator gunw1()
	{

		yield return new WaitForSeconds (0.2f);
			
			Instantiate (shoot [0], pos.transform.position, pos.transform.rotation);
			Debug.Log("Bullet Spawn");
			
			efx.PlayOneShot (s1, 0.5f);
			


	}



	IEnumerator gunw2()
	{

			
		yield return new WaitForSeconds (0.4f);
		Instantiate (shoot [1], pos.transform.position, pos.transform.rotation);
		Debug.Log("Bullet Spawn");
		efx.PlayOneShot (s2, 0.5f);




	

	}

	IEnumerator gunw3()
	{


		yield return new WaitForSeconds (0.4f);
		
		efx.PlayOneShot (s3, 0.5f);
			
		Instantiate (shoot [2],pos.transform.position, pos.transform.rotation);
		Debug.Log("Bullet Spawn");
		
	}
	IEnumerator gunw4()
	{

		yield return new WaitForSeconds (0.4f);
		efx.PlayOneShot (s4, 0.5f);
		Instantiate (shoot [3], pos.transform.position, pos.transform.rotation);
		Debug.Log("Bullet Spawn");
		  //delay fire

	}
	IEnumerator gunw5()
	{
		yield return new WaitForSeconds (0.4f);
		efx.PlayOneShot (s6, 0.5f);	
		Debug.Log("Bullet Spawn");
		Instantiate (shoot [4], pos.transform.position, pos.transform.rotation);

		
	}





}