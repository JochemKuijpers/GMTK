if(isPlaying){
	image_index = 1
	if(stressModifier != 0){
		stressBar.stressModifier += stressModifier
		stressModifier = 0
		stressBar.stressModifier -= stressModifier
	}
}else{
	image_index = 0
	if(stressModifier != 1){
		stressBar.stressModifier += stressModifier
		stressModifier = 1
		stressBar.stressModifier -= stressModifier
	}
}

if(keyboard_check_pressed(ord("Q"))){
	isPlaying = true
}

if(keyboard_check_pressed(buttonToPressOne)){
	if(lastPressed == buttonToPressOne){
		timesPressed = 0
		show_debug_message("Reset in A")
	}else{
		lastPressed = ord("A")
		timesPressed += 1
	}
	show_debug_message(lastPressed)
}

if(keyboard_check_pressed(buttonToPressTwo)){
	if(lastPressed == buttonToPressTwo){
		timesPressed = 0
		show_debug_message("Reset in S")
	}else{
		lastPressed = ord("S")
		timesPressed += 1
	}
	show_debug_message(lastPressed)
}

if(timesPressed >= 5 && isPlaying){
	isPlaying = !isPlaying
	timesPressed = 0
}