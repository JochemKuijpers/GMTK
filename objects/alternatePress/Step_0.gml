if(isPlaying){
	visible = true;
}else{
	visible = false;
}

if(keyboard_check_pressed(buttonToPressOne)){
	if(lastPressed == buttonToPressOne){
		timesPressed = 0
		//show_debug_message("Reset in one")
	}else{
		lastPressed = buttonToPressOne
		timesPressed += 1
	}
	//show_debug_message(lastPressed)
}

if(keyboard_check_pressed(buttonToPressTwo)){
	if(lastPressed == buttonToPressTwo){
		timesPressed = 0
		//show_debug_message("Reset in two")
	}else{
		lastPressed = buttonToPressTwo
		timesPressed += 1
	}
	//show_debug_message(lastPressed)
}

if(timesPressed >= timesToPress && isPlaying){
	isPlaying = !isPlaying
	timesPressed = 0
}

if (!isPlaying) {
	timeSinceDeactivated += 1;
} else {
	timeSinceDeactivated = 0;
}