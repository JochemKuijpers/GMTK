if(isPlaying){
	image_index = 1
}else{
	image_index = 0
}

if(keyboard_check_pressed(ord("Q"))){
	isPlaying = true
}

if(keyboard_check_pressed(ord("A"))){
	if(lastPressed == ord("A")){
		timesPressed = 0
		show_debug_message("Reset in A")
	}else{
		lastPressed = ord("A")
		timesPressed += 1
	}
	show_debug_message(lastPressed)
}

if(keyboard_check_pressed(ord("S"))){
	if(lastPressed == ord("S")){
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