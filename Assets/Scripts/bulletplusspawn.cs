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

public class bulletplusspawn : MonoBehaviour {
	
	public GameObject dnaenemyprefab;
	public List<Transform> locator  = new List<Transform>();
	public  float timePos = 0f;
	public  float  duration;
	public int countunit;
	public int randomunit;
	
	// Use this for initialization
	public void spwanen()
	{
		int randomnum = Random.Range(1,5);
		
		Debug.Log ("Randomnum droprate   :" + randomnum);
		if (randomnum == 3) {
			
			int randkey = Random.Range (0, locator.Count);
			Transform spwan = locator [randkey];
			Instantiate (dnaenemyprefab, spwan.position, spwan.rotation);
			randomunit--;
		}
		
	}
	
	void Start () {
		
		
		randomunit = Random.Range (3, 5);
		Debug.Log ("Unity spawn " + randomunit);
		//countunit = 3;
		locator = GetComponentsInChildren<Transform> ().ToList();
		locator.Remove (transform);
		
		
		
		
		
		
		
	}
	
	// Update is called once per frame
	void Update () {
		timePos += Time.deltaTime;
		
		
		duration = 10;
		if (timePos >= duration)
		{
			timePos = 0f;
			
			if(randomunit > 0 )
			{
				
				spwanen();
				
				
			}
		}
		Debug.Log (duration);
		
	}
}
