using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class itempanel : MonoBehaviour {

	public static int slow,bomp,protect,freeze,hpadd;
	public GameObject bompitem,posspawn,slowly,barier,freezeitem,bompui,slowlyui,barierui,hpplusui,freezeui;
	//public static bool w1,w2,w3,w4,w5,w6,w7,w8;

	// Use this for initialization
	void Start () {


		//slow = 10;
		bomp = 0;
		protect = 0;
		freeze = 0;
		hpadd =0;
		posspawn = GameObject.Find ("slowpos");
		barierui = GameObject.FindGameObjectWithTag ("barierui");
		hpplusui = GameObject.FindGameObjectWithTag("hpplusui");
		freezeui = GameObject.FindGameObjectWithTag("freezeui");
		//slowlyui = GameObject.FindGameObjectWithTag("slowlyui");
		//		bompui = GameObject.Find("bompui");
		//		bompui.SetActive (false);
		//		slowlyui.SetActive (false);
//		barierui.SetActive (false);
//		freezeui.SetActive (false);
//		hpplusui.SetActive (false);
		barierui.GetComponent<Button> ().interactable = false;
		hpplusui.GetComponent<Button> ().interactable = false;
		freezeui.GetComponent<Button> ().interactable = false;
	}
	
	// Update is called once per frame
	void Update () {
	


		if (protect >= 1) {
			
			
			barierui.GetComponent<Button> ().interactable = true;
		} else if(protect <=0){
			barierui.GetComponent<Button> ().interactable = false;
		}
		
		if (hpadd >= 1) {
			
			hpplusui.GetComponent<Button> ().interactable = true;
			
		}else if(hpadd <=0 ) {
			hpplusui.GetComponent<Button> ().interactable = false;
		}
		
		if (freeze >= 1 ) {
			
			freezeui.GetComponent<Button> ().interactable = true;
			
		}else if (freeze <=0) {
			freezeui.GetComponent<Button> ().interactable = false;
		}






	}

	public void hplose()
	{
		
		target.hp -= 10;
		
	}
	
	public void hpplus()
	{
		
		target.hp += 100;
		hpadd--;
	}
	
	
	
	
	public void timeplus()
	{
		
		timer.time += 3f;
		
	}


	public void barieruse()
	{
		
		if (protect >= 1) {
			
			freezeui.GetComponent<Button> ().interactable = true;
			protect--;

			Debug.Log("Protect  ");
			
		}
		
	}
	public void freezeuse()
	{
		
		if (freeze >=1) {
			
			Instantiate (freezeitem, posspawn.transform.position, Quaternion.identity);
			freeze--;
			
		}
	}

}
