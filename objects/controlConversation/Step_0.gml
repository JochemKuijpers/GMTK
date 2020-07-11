if(stressBar.currentStress > 750){
	isStressed = true
}else{
	isStressed = false
}

if (keyboard_check_pressed(vk_space)) {
	// whenever you call event_user(0)
	// it triggers the next conversation item
	event_user(0);
}
