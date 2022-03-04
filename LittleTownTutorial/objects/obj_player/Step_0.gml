/// @description player movement


// check keys for movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

// calculate movement

// below line blowing my mind, man
//vx = ( (moveRight - moveLeft) * walkSpeed);

vx = ( (moveRight - moveLeft) * walkSpeed);
vy = ( (moveDown - moveUp) * walkSpeed);



// if idle
if ( vx == 0 && vy == 0 ) { 	// do nothing for now  
	}

// if moving

if ( vx != 0 || vy != 0 ) {
	
	x += vx;
	y += vy;
}
