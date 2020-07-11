if(timeHovered < 100){
	image_index = 0
	
	if(stressModifier != 0){
		stressBar.stressModifier -= stressModifier
		stressModifier = 0
		stressBar.stressModifier += stressModifier
	}
}else if(timeHovered < 150){
	image_index = 1
	if(stressModifier != 1){
		stressBar.stressModifier -= stressModifier
		stressModifier = 1
		stressBar.stressModifier += stressModifier
	}
}else{
	image_index = 2
	if(stressModifier != 2){
		stressBar.stressModifier -= stressModifier
		stressModifier = 2
		stressBar.stressModifier += stressModifier
	}
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

