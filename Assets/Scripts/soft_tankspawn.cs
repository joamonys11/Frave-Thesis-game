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

public class soft_tankspawn : MonoBehaviour {
	
	public GameObject dnaenemyprefab,spawnefx;
	public List<Transform> locator  = new List<Transform>();
	public  float timePos = 0f;
	public  float  duration;
	public float countunit=0f;
	//public float tankindex= 5f;
	public float unitsum;
	public float unit;
	// Use this for initialization
	IEnumerator spwanen()
	{
		int randkey = Random.Range (0, locator.Count);
		Transform spwan = locator [randkey];
		Instantiate (spawnefx, spwan.position, spwan.rotation);
		yield return new WaitForSeconds (2f);
		Instantiate (dnaenemyprefab, spwan.position, spwan.rotation);
		countunit++;
		
		
	}
	
	void Start () {
		locator = GetComponentsInChildren<Transform> ().ToList();
		locator.Remove (transform);
		duration = Random.Range(9f,11f);
		unit = timer.units;
		countunit = 0;
			
		//unit = 13f;
		//			if (level.indexlevel == 1) {
		//				
		//				duration = 5f;
		//				
		//			}
		//			if (level.indexlevel == 2) {
		//				
		//				duration = 4f;
		//				
		//			}
		//			
		//			if (level.indexlevel == 3) {
		//				
		//				duration = 3f;
		//				
		//			}
		
	}
	
	// Update is called once per frame
	void Update () {
		
		//		if (level.indexlevel < 10)
		//		{
		//			if (timer.time < 80) {
		//				
		//				Destroy (gameObject);
		//				
		//			}
		//		}
		//		if (level.indexlevel >= 11 && level.indexlevel <=20 )
		//		{
		//			if (timer.time < 60) {
		//				
		//				Destroy (gameObject);
		//				
		//			}
		//		}
		//		
		//		
		//		if (level.indexlevel >= 21 && level.indexlevel <=30 )
		//		{
		//			if (timer.time < 80) {
		//				
		//				Destroy (gameObject);
		//				
		//			}
		//		}
		
		
		
		
		
		
		
		
		
		
		
		timePos += Time.deltaTime;
		//////////////////////
		
		if (timePos >= duration) {
			timePos = 0f;
			////////////////////////
			if(countunit<unit)
			{
				//spwanen();
				StartCoroutine(spwanen());
			}
		}
		Debug.Log (duration);
		
	}
	
}
