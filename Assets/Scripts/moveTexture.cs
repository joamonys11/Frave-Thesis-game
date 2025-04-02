using UnityEngine;
using System.Collections;

public class moveTexture : MonoBehaviour {

	public Renderer rend;
	public float scrollSpeed = 0.1f;

	// Use this for initialization
	void Start () {

		rend = GetComponent<Renderer> ();

	}

	// Update is called once per frame
	void Update () {

		float offset = Time.time * scrollSpeed;
		rend.material.SetTextureOffset("_MainTex", new Vector2(0 , -offset));


	}
}
