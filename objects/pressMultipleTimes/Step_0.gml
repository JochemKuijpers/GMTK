if(keyboard_check_pressed(ord("Q"))){
	if(!isPlaying){
		isPlaying = true
		timesPressed = 0
	}
}

if(keyboard_check_pressed(buttonToPress)){
	timesPressed += 1
	
	show_debug_message(timesPressed)
	
	if(timesPressed >= 5){
		isPlaying = false
		timesPressed = 0
	}
}

if(isPlaying){
	image_speed = 8 / room_speed
	if(stressModifier != 1){
		stressBar.stressModifier -= stressModifier
		stressModifier = 1
		stressBar.stressModifier += stressModifier
	}
}else{
	image_speed = 0 //Speed to 0
	image_index = 0 //Sets to first frame
	if(stressModifier != 0){
		stressBar.stressModifier -= stressModifier
		stressModifier = 0
		stressBar.stressModifier += stressModifier
	}
}