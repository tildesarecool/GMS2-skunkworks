/// @description camera setup

// camera
// for uses of these variables see the step event
cameraX = 0;
cameraY = 0;
target = obj_player;

cameraWidth = 600; // I'll keep this for later
cameraHeight = 1000; // I'll keep this for later

// reference: https://manual-en.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FCameras_And_Display%2FCameras_And_Viewports%2Fview_enabled.htm
// "This variable controls whether any view ports that are visible within the room are enabled or not."
// the if statement is from the manual page
if ( !view_enabled &&  view_visible[0] != true ) {
	view_visible[0] = true; 
	view_enabled = true;
}
// setting size of camera
// reference for the camera_set_view_size:
// https://manual-en.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FCameras_And_Display%2FCameras_And_Viewports%2Fcamera_set_view_size.htm
 //reference for the view_camera[0]:
 //https://manual-en.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FCameras_And_Display%2FCameras_And_Viewports%2Fview_camera.htm
 //
camera_set_view_size( view_camera[0], cameraWidth, cameraHeight  );
//Display

//displayScale = 2; // I'll keep this for later
displayWidth = 1000; // I'll just hard set this
displayHeight = 1000; // I'll just hard set this
//window_set_size( displayWidth, displayHeight );





// surface related setup
// reference for application surface
//https://manual-en.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FDrawing%2FSurfaces%2Fapplication_surface.htm&rhsearch=surface_resize&rhhlterm=surface_resize
// reference surface resize
// https://manual-en.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FDrawing%2FSurfaces%2Fsurface_resize.htm&rhsearch=surface_resize&rhhlterm=surface_resize
// i think this default application surface is bassically a generic win 32 "handle" or "Default canvas" that's not optimized for anything in partiicular. 
// just "hand it off the OS and let it do the work" sort of a vibe. I assume.
// so this just uses that applicaiton surface as the "surface id" since custom surfaces can be created
surface_resize( application_surface, displayWidth, displayHeight );
// next we need to "center" the game window but this has to be in a later frame than "room start" so an alarm is used
// alarm 0 just says "window_center();". that's it.
alarm[0] = 1; // center 1 frame in

// special commands just the for "draw GUI" event. perhaps it will useful later? I don't know
// the draw gui event being in separate controller object such as "obj_game"
//  use to to scale up to width/height 
// well as demonstrated in the video so the lives/score values remain in the upper left as the camera moves round
// without anything written on the screen with a draw event below should not change anything
display_set_gui_maximize( cameraWidth, cameraHeight );