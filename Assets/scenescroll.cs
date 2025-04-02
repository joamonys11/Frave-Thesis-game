using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class scenescroll : MonoBehaviour {
	RectTransform rec;
	public float speedsc;
	float speedsav;
	public ScrollRect sc;
	int countsc; 
	// Use this for initialization
	void Start () {
	
		rec = GetComponent<RectTransform> ();
		countsc = 0;

		speedsav = speedsc;
	}
	
	// Update is called once per frame
	void Update () {



	}

	public void up()
	{
		if (countsc < 15) {

			speedsc = speedsav;
			transform.Translate (0, 1*speedsc, 0);
			countsc++;

			Debug.Log("countsc :"+countsc);
			//sc.enabled(false)
			if (countsc == 15) {

				speedsc = 0;
			}

		}
	}

	
	public void down()
	{
		if (countsc > 0) {
			speedsc = speedsav;
			transform.Translate (0, 1*-speedsc, 0);
			countsc--;
			Debug.Log("countsc :"+countsc);
			//sc.enabled(false)
			if (countsc == 0 ) {
			
				speedsc = 0;
			}
		}
	}

}
