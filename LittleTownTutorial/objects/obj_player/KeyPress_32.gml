/// @description textbox test

// create a textbox

var _text; // temp variable, _ to indicate it's just for this event/temporary

// create textbox if npc is nearby
if ( nearbyNPC ) {
	_text = nearbyNPC.myText; // nearbyNPC is assign the "collision rectangle"  in the step event
	if ( !instance_exists(obj_textbox) ) {
		// this over-writes/over-rides value from object textbox texttoshow default
		iii = instance_create_depth( x, y, -10000, obj_textbox );
		iii.textToShow = _text;
	}
}