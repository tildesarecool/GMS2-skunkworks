/// @description variables and setup

// emitter variable
myEmitter = 0;

// create emitter
if ( useSound != noone ) {

	if ( !audio_is_playing(useSound) ) {
		myEmitter = audio_emitter_create();
		audio_emitter_position(myEmitter, x, y, 0);
		audio_falloff_set_model(audio_falloff_exponent_distance); // how audio fades out
		audio_emitter_falloff(myEmitter, fallStart, maxDist, 1); // fallStart set in variables as 500px as default
		audio_play_sound_on(myEmitter, useSound, 1, 1);	
	}
}