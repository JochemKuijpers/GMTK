if(isPlaying){
	image_index = 1
	if(stressModifier != 1){
		stressBar.stressModifier -= stressModifier
		stressModifier = 1
		stressBar.stressModifier += stressModifier
	}
}else{
	image_index = 0
	if(stressModifier != 0){
		stressBar.stressModifier -= stressModifier
		stressModifier = 0
		stressBar.stressModifier += stressModifier
	}
}

if(!isPlaying && keyboard_check_pressed(ord("Q"))){
	isPlaying = true
}

if(stepsSincePressed >= 100 && isPlaying){
	isPlaying = false
}

if(keyboard_check(buttonToPress)){
	stepsSincePressed += 1
}

if(keyboard_check_released(buttonToPress)){
	stepsSincePressed = 0
}