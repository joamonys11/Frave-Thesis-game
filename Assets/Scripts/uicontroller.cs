using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class uicontroller : MonoBehaviour {

	public GameObject winters,summer,spring;
	public GameObject winterlv,summerlv,springlv;

	// Use this for initialization
	void Start () {

		winterbt();
		
	
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void winterbt()
	{
		winters.GetComponent<Button>().interactable = false;
		summer.GetComponent<Button>().interactable = true;
		spring.GetComponent<Button>().interactable = true;
		winterlv.SetActive(true);
		summerlv.SetActive(false);
		springlv.SetActive(false);

	}
	public void summerbt()
	{
		winters.GetComponent<Button>().interactable = true;
		summer.GetComponent<Button>().interactable = false;
		spring.GetComponent<Button>().interactable = true;
			winterlv.SetActive(false);
		summerlv.SetActive(true);
		springlv.SetActive(false);



	}

	public void springbt()
	{

		winters.GetComponent<Button>().interactable = true;
		summer.GetComponent<Button>().interactable = true;
		spring.GetComponent<Button>().interactable = false;
		winterlv.SetActive(false);
		summerlv.SetActive(false);
		springlv.SetActive(true);





	}
}
