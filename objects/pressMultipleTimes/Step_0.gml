if(keyboard_check_pressed(ord("Q"))){
	if(!isPlaying){
		isPlaying = true
		timesPressed = 0
	}
}

if(keyboard_check_pressed(buttonToPress)){
	if(isPlaying){
		timesPressed += 1
	}
	show_debug_message(timesPressed)
	
	if(timesPressed >= 5){
		isPlaying = false
		timesPressed = 0
	}
}

if(isPlaying){
	image_speed = 8 / room_speed
}else{
	image_speed = 0 //Speed to 0
	image_index = 0 //Sets to first frame
}

if (!isPlaying) {
	timeSinceDeactivated += 1;
} else {
	timeSinceDeactivated = 0;
}