if(isPlaying){
	image_index = 1
}else{
	image_index = 0
}

if(!isPlaying && keyboard_check_pressed(ord("Q"))){
	isPlaying = true
}

if(stepsSincePressed >= 100 && isPlaying){
	isPlaying = false
}

if(keyboard_check(ord("E"))){
	stepsSincePressed += 1
}

if(keyboard_check_released(ord("E"))){
	stepsSincePressed = 0
}