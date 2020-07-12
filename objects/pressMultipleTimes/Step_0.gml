if(mouse_check_button_pressed(mb_left)) {
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
	visible = true;
}else{
	visible = false;
}

if (!isPlaying) {
	timeSinceDeactivated += 1;
} else {
	timeSinceDeactivated = 0;
}