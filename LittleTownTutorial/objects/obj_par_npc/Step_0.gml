/// @description Animation and more

// Random loop timing

if ( image_speed > 0 ) {
	// image speed = "is something animating?"
	
	if ( image_index == image_number ) {
		// is this still animating?
		image_speed = 0;
		alarm[0] = irandom_range( loopRange01, loopRange02 );
		
	}
}

// depth sorting
depth =- y;

