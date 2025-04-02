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

public class spawnitem : MonoBehaviour {
	
	public GameObject dnaenemyprefab;
	public List<Transform> locator  = new List<Transform>();
	public  float timePos = 0f;
	public  float  duration;
	public int countunit;


	// Use this for initialization
	public void spwanen()
	{
	

			int randkey = Random.Range (0, locator.Count);
			Transform spwan = locator [randkey];
			Instantiate (dnaenemyprefab, spwan.position, spwan.rotation);
			countunit--;

		
	}
	
	void Start () {


		duration = Random.Range (20, 30);
		countunit = 3;
		locator = GetComponentsInChildren<Transform> ().ToList();
		locator.Remove (transform);

	





	}
	
	// Update is called once per frame
	void Update () {
		timePos += Time.deltaTime;

		if (timePos >= duration)
		{
			timePos = 0f;

			if(countunit > 0 )
			{

			spwanen();

			
			}
		}
		Debug.Log (duration);
		
	}
}
