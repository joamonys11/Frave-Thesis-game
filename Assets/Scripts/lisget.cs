﻿//using UnityEngine;
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

public class lisget : MonoBehaviour {
	public GameObject[] wavestage;

	// Use this for initialization

	
	void Start () {

		wavestage = GameObject.FindGameObjectsWithTag ("wavelist");
		for (int i= 0; i< wavestage.Length; i++) {
			
			wavestage[i].SetActive(false);
			
		}

	
		
		wavestage [level.indexlevel-1].SetActive (true);

	


		}


	
	// Update is called once per frame
	void Update () {

	
		
		
	












	}
}
