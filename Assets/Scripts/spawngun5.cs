//using UnityEngine;
//using System.Collections;
//
//public class spawner_tank : MonoBehaviour {
//
//	public GameObject dnaEnemyPrefab;
//	public Transform []locators;
//	//Time Random
//	private float timePos = 1f;
//	private float duration = 1f;
//	public void SpawnEnemy(){
//		int randKey = Random.Range (0,locators.Length);
//		Transform spawnPoint = locators[randKey];
//		Instantiate(dnaEnemyPrefab,
//		            spawnPoint.position,
//		            spawnPoint.rotation);
//	}
//	void Update () {
//		timePos += Time.deltaTime;
//		if(timePos >= duration){
//			timePos = 0f;
//			duration = Random.Range(0.1f,7f);
//			SpawnEnemy(); //1s hav SpawnEnemy 1 tao
//		}
//	}
//}
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class spawngun5 : MonoBehaviour {
	
	public GameObject dnaenemyprefab,spawnefx;
	public List<Transform> locator  = new List<Transform>();
	public  float timePos = 0f;
	public  float  duration;
	public int countunit;
	public int randomunit;
	
	// Use this for initialization
	public void spwanen()
	{
		if(Random.value > 0.2) //%80 percent chance
		{//code here
			
		}
		
		if(Random.value > 0.4) //%60 percent chance (1 - 0.4 is 0.6)
		{ //code here
			
			
		}
		
		if(Random.value > 0.6) //%40 percent chance (1 - 0.6 is 0.4)
		{ //code here
		
		}
		if(Random.value > 0.8) //%20 percent chance (1 - 0.8 is 0.2)
		{ //code here
			
			int randkey = Random.Range (0, locator.Count);
			Transform spwan = locator [randkey];
			Instantiate (spawnefx, spwan.position, Quaternion.identity);
			Instantiate (dnaenemyprefab, spwan.position, spwan.rotation);
			randomunit--;

			
			
		}
		if(Random.value > 0.9) //%20 percent chance (1 - 0.8 is 0.2)
		{ //code here
			
			
			
		}

		
	}
	
	void Start () {
		
		

		//Debug.Log ("Unity spawn " + randomunit);
		//countunit = 3;
		locator = GetComponentsInChildren<Transform> ().ToList();
		locator.Remove (transform);
		
		
		if (level.indexlevel <= 10 ) {
			//randomunit = Random.Range (10,15 );
			duration = 20f;
			
		}
		if (level.indexlevel >= 11 && level.indexlevel <= 20  ) {
			//randomunit = Random.Range (15,20 );
			duration = 15f;
			
		}
		
		if (level.indexlevel >= 21&& level.indexlevel <= 30) {
			//randomunit = Random.Range (20,25 );
			duration = 10f;
			
		}
		
		
		
		
		
	}
	
	// Update is called once per frame
	void Update () {
		timePos += Time.deltaTime;
		
		

		if (timePos >= duration)
		{
			timePos = 0f;
			spwanen();

//			if(randomunit > 0 )
//			{
//				
//				spwanen();
//				
//				
//			}
		}
		Debug.Log (duration);
		
	}
}
