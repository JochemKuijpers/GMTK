if(isPlaying){
	image_index = image_index % 4;
	
	audio_sound_gain(mainTheme, 0, 500)
	audio_sound_gain(mainLoud, 1, 500)
	
}else{
	image_index = image_index % 4 + 4;
}

if(!isPlaying && keyboard_check_pressed(ord("Q"))){
	isPlaying = true
}

if(stepsSincePressed >= 100 && isPlaying){
	isPlaying = false
	
	audio_sound_gain(mainLoud, 0, 500)
	audio_sound_gain(mainMuted, 0, 500)
	audio_sound_gain(mainTheme, 1, 500)
}

if(keyboard_check(buttonOne) && keyboard_check(buttonTwo)){
	stepsSincePressed += 1
	
	if(isPlaying){
		audio_sound_gain(mainLoud, 0, 100)
		audio_sound_gain(mainMuted, 1, 100)
	}
}

if(keyboard_check_released(buttonOne) || keyboard_check_released(buttonTwo)){
	stepsSincePressed = 0
	
	if(isPlaying){
		audio_sound_gain(mainLoud, 1, 100)
		audio_sound_gain(mainMuted, 0, 100)
	}
}

if (!isPlaying) {
	timeSinceDeactivated += 1;
} else {
	timeSinceDeactivated = 0;
}


