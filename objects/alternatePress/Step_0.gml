if(isPlaying){
	image_index = 1
}else{
	image_index = 0
}

if(keyboard_check_pressed(ord("Q"))){
	isPlaying = true
}

if(keyboard_check_pressed(buttonToPressOne)){
	if(lastPressed == buttonToPressOne){
		timesPressed = 0
		show_debug_message("Reset in A")
	}else{
		lastPressed = buttonToPressOne
		timesPressed += 1
	}
	//show_debug_message(lastPressed)
}

if(keyboard_check_pressed(buttonToPressTwo)){
	if(lastPressed == buttonToPressTwo){
		timesPressed = 0
		show_debug_message("Reset in S")
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