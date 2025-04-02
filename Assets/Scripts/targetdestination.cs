using UnityEngine;
using System.Collections;

public class targetdestination : MonoBehaviour {
	public static GameObject destination;
	public GameObject[] target;
	public int i;
//	public static bool checkpositem = false; 
	public GameObject bomp;
	public float speed = 0f;

	UnityEngine.AI.NavMeshAgent nav;
	public float timer = 50f;
	// Use this for initialization
	void Awake()
	{
//		target = new GameObject[2];
//		target[0] = GameObject.FindGameObjectWithTag("target");
//		target[1]= GameObject.FindGameObjectWithTag("item");



	}





	void Start () 
	{
		nav = GetComponent<UnityEngine.AI.NavMeshAgent> ();
		speed = nav.speed;
		Debug.Log ("speed :" + speed);
		//i = 0;

		destination = GameObject.FindGameObjectWithTag ("target");
//		float dis = Vector3.Distance(destination.transform.position,transform.position);
//		if (dis > 2) {
//			
//			
//		} else {
//			nav.SetDestination (destination.transform.position);
//		}
		//nav.SetDestination (target[i].transform.position);


	}
	// Update is called once per frame
	void Update () {

		nav.SetDestination (destination.transform.position);







//		nav.SetDestination (destination.position);
		//nav.SetDestination (destination.position);
//		float dist = Vector3.Distance (target [i].transform.position,transform.position);
//		//currentTarget = targets[i].transform;
//		//if npc reaches its destination (or gets close)...
//		if (dist < 2) {
//
//			i++;
//			if(i<target.Length)
//			{
//
//				nav.destination = target[i].transform.position;
//
//
//			}
//
//			if(i == target.Length)
//			{
//
//
//				Debug.Log("navi finished reset");
//				i = 0;
//			}
//
//
//		}

			



	}



	void OnTriggerEnter(Collider other) {
		if (other.gameObject.tag == "destroytank") {
			Destroy(gameObject,1f);
			Instantiate(bomp,transform.position,transform.rotation);
		}

		if (other.gameObject.tag == "trapclone")
		{


			StartCoroutine(slowdamageclone());
			Destroy(other.gameObject,1);

		}

		if (other.gameObject.tag == "trapirontail") 
		
		{

			StartCoroutine(slowdamgeirontrap());
			Destroy(other.gameObject,1);


		}

		if (other.gameObject.tag == "trapfreez")
		
		{
			StartCoroutine(slowdamagefreez());
			Destroy(other.gameObject,1);



		}




		
	}

	IEnumerator slowdamageclone()
	{

		yield return new WaitForSeconds (3);

		nav.speed /= 2;
		Debug.Log ("Speed Change :"+nav.speed);

		yield return new WaitForSeconds (10f);


		nav.speed = speed;
		Debug.Log ("Speed Ori : " + nav.speed + ": Speed Start : " + speed);



	}

	IEnumerator slowdamgeirontrap()
	{


		yield return new WaitForSeconds (3);

		nav.speed -= 2.5f;

		Debug.Log ("Ondamge Iron : " + nav.speed);

		yield return new WaitForSeconds (20);

		nav.speed = speed;

		Debug.Log ("Speed Ori : " + nav.speed + ": Speed Start : " + speed);


	}

	IEnumerator slowdamagefreez()

	{
		Debug.Log ("Pause time ori :" + Turret_Canon1.firePauseTime);
		Debug.Log ("Reload time ori :" + Turret_Canon1.reloadTime);

		yield return new WaitForSeconds (3);
	
		Turret_Canon1.firePauseTime = 5f;
		Turret_Canon1.reloadTime = 5;
		Turret_Canon2.firePauseTime = 5f;
		Turret_Canon2.reloadTime = 5;
		Turret_Canon3.firePauseTime = 5f;
		Turret_Canon3.reloadTime = 5;
		Turret_Canon4.firePauseTime = 5f;
		Turret_Canon4.reloadTime = 5;

		Debug.Log ("Freez pause time :" + Turret_Canon1.firePauseTime);
		Debug.Log ("Freez pause time :" + Turret_Canon1.reloadTime);

		yield return new WaitForSeconds (5);

		Turret_Canon1.firePauseTime = Turret_Canon1.firPauseOri;
		Turret_Canon1.reloadTime = Turret_Canon1.oriReloadtime;
		Turret_Canon2.firePauseTime = Turret_Canon1.firPauseOri;
		Turret_Canon2.reloadTime = Turret_Canon1.oriReloadtime;
		Turret_Canon3.firePauseTime = Turret_Canon1.firPauseOri;
		Turret_Canon3.reloadTime = Turret_Canon1.oriReloadtime;
		Turret_Canon4.firePauseTime = Turret_Canon1.firPauseOri;
		Turret_Canon4.reloadTime = Turret_Canon1.oriReloadtime;

		Debug.Log ("Freez overtime pausetime : " + Turret_Canon1.firePauseTime);
		Debug.Log ("Freez overtime reloadtime : " + Turret_Canon1.reloadTime);





	}


	

}
