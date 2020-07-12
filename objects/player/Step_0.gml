if(alternatePress.isPlaying && pressAndHold.isPlaying && pressMultipleTimes.isPlaying){
	ani_start = 8
	ani_end = 11
}else if(pressAndHold.isPlaying && alternatePress.isPlaying){
	ani_start = 6
	ani_end = 7
}else if(alternatePress.isPlaying && pressMultipleTimes.isPlaying){
	ani_start = 14
	ani_end = 17
}else if(pressAndHold.isPlaying && pressMultipleTimes.isPlaying){
	ani_start = 21
	ani_end = 22
}else if(pressMultipleTimes.isPlaying){
	ani_start = 18
	ani_end = 19
}else if(pressAndHold.isPlaying){
	ani_start = 20
	ani_end = 20
}else if(alternatePress.isPlaying){
	ani_start = 2
	ani_end = 3
}else{
	ani_start = 0
	ani_end = 1
}

if(ani_current < ani_start){
	ani_current = ani_start
}

if(ani_current < ani_end && timeSinceAni >= ani_speed){
	ani_current += 1
	timeSinceAni = 0
}else if(ani_current >= ani_end && timeSinceAni >= ani_speed){
	ani_current = ani_start
	timeSinceAni = 0
}
timeSinceAni++
show_debug_message(ani_current)

image_index = ani_current