/// @description stuff related to the camera setup

// these variables are decalared in the "room start" event

//the if probably isn't necessary in this case but 
// i don't think it hurts either
if ( instance_exists(target) ) {
	cameraX = target.x - ( cameraWidth / 2 );
	cameraY = target.y - ( cameraHeight / 2 );
	
	// now "clamp" the camera. not really sure what that means. but seems fine
	// I think this is making sure a whole number comes out
	
	cameraX = clamp( cameraX, 0, room_width - cameraWidth );
	cameraY = clamp( cameraY, 0, room_height - cameraHeight );
}

// camera set view pos reference:
//https://manual-en.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FCameras_And_Display%2FCameras_And_Viewports%2Fcamera_set_view_pos.htm&rhsearch=camera_set_view_pos&rhhlterm=camera_set_view_pos

/*

You can use this function to update the position of the camera view within the room. 
You give the unique camera ID value (as returned by the different camera_create() 
functions) and then give the x and y positions to set the camera to.

*/

camera_set_view_pos( view_camera[0], cameraX, cameraY );