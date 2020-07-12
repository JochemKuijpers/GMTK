if(isPlaying){
	image_index = image_index % 4;
}else{
	image_index = image_index % 4 + 4;
}

if(!isPlaying && keyboard_check_pressed(ord("Q"))){
	isPlaying = true
}

if(stepsSincePressed >= 100 && isPlaying){
	isPlaying = false
}

if(keyboard_check(buttonOne) && keyboard_check(buttonTwo)){
	stepsSincePressed += 1
}

if(keyboard_check_released(buttonOne) || keyboard_check_released(buttonTwo)){
	stepsSincePressed = 0
}

if (!isPlaying) {
	timeSinceDeactivated += 1;
} else {
	timeSinceDeactivated = 0;
}