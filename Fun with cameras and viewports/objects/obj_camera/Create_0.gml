/// @description Insert description here
// You can write your code in this editor

// enable a view and make said view visible
// these global settings/variables can be overwritten, something to keep in mind


view_enabled = true;
view_visible[0] = true;

// set the x and port to 0
view_xport[0] = 0;
view_yport[0] = 0;

// set the width and height of the port
view_wport[0] = 960;
view_hport[0] = 540;

// create the camera using above variables
// cameras are "dynamic resources" - must be destroyed when done using to avoid memory leaks
// this only /prepares/ the camera, it's not showing anything yet.
// so multiple cameras could be setup at once then utilized/turned on at different points
// the viewcamera[0] variable now holds the idea of that camera create view function
// so it will know what to show
//view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, 400, 250); // original line
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, 400, 0);

// side note: above code changed from the prior version when running the game (in room start event) in at least two ways:
// player object is no longer "squished" like it's a scaling error
// there's a horizintal and verticle sroll, whitch prior code didn't have
// the room and the camera top/bottom were the same edges in other words
// left/right scrolling appears the same

/**************** original **********************/
//var _dwidth = display_get_width();
//var _dheight = display_get_height();
//var _xpos = (_dwidth / 2) - 480;
//var _ypos = (_dheight / 2) - 270;
/**************** original **********************/
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;

window_set_rectangle(_xpos, _ypos, 960, 540);

surface_resize(application_surface, 960, 540);
