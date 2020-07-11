if(timeHovered < 100){
	image_index = 0
}else if(timeHovered < 150){
	image_index = 1
}else{
	image_index = 2
}

if(isHovering){
	timeHovered -= 1
}else{
	timeHovered += 1
}

if(timeHovered >= 200){
	timeHovered = 200
}else if(timeHovered <= 0){
	timeHovered = 0
}

if(timeHovered >= 100){
	isPlaying = true
}else{
	isPlaying = false
}

// show_debug_message(timeHovered)