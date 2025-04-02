using UnityEngine;
using System.Collections;

public class grid : MonoBehaviour {
	
	RaycastHit rayHit;
	RaycastHit rayHit2;
	
	// variable to hold which object we are moving
	private GameObject moveThis;
	
	// variables to hold the new X and Z coordinates to move the object to
	private float moveToX;
	private float moveToZ;
	
	void Start () {
		
		//at the start we set the move object to the camera, we are not going to move it, but we just use this as a check
		moveThis = gameObject;
		
	}
	
	void Update () {
		
		// now we check if the mouse left button was pressed
		if (Input.GetKey(KeyCode.Mouse0)) {
			
			// we cast a ray from camera to tho our mouse, to see if our mouse is actually over any movable object
			if (Physics.Raycast (Camera.main.ScreenPointToRay (Input.mousePosition), out rayHit)) {
				
				// if our ray hit a collider, we check that no movable object has yet been set 
				// AND that the object we are trying to move is not the ground
				if (moveThis == gameObject &&rayHit.collider.tag != "target" ){
					//then we set the movable object variable to the object we hit
					moveThis = rayHit.transform.gameObject;
				}
				
			}
		}
		
		// here we check if the left mouse button was released
		if (Input.GetKeyUp(KeyCode.Mouse0)) {
			
			// if a movable object was set to something else, we reset the variable back to the check object (which is our camera)
			if (moveThis != gameObject) {
				moveThis = gameObject;
			}
		}
		
		// now we actually move the object, so if our moveThis variable is not set to the default (camera)
		if (moveThis != gameObject) {
			
			// we cast a ray to our mouse coordinates in the world once more
			if (Physics.Raycast (Camera.main.ScreenPointToRay (Input.mousePosition), out rayHit2)) {
				
				// here is where we fix the snapping, a little math to set the X and Z world coordinates of the mouse up to a nice round number
				moveToX = Mathf.Round(rayHit2.point.x/1)/1;
				moveToZ = Mathf.Round(rayHit2.point.z*1)/1;
				
				// we make sure that what we hit the plane with the tag "ground", this won't let us position the cubes inside other cubes 
				// and also won't let us go outside the bounds of the plane
				if (rayHit2.collider.tag == "target") {
					// if we are indeed touching the "ground" plane, we move our object to the new position
					moveThis.transform.position = new Vector3 (moveToX, moveThis.transform.position.y, moveToZ);
				}
				
			}
		}
		
	}
}