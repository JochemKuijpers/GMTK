if(stressBar.currentStress > 750){
	isStressed = true
}else{
	isStressed = false
}

scriptTimer += 1;

if (scriptTimer > 3 * room_speed || keyboard_check_pressed(vk_space)) {
	
	if (pressMultipleTimes.isPlaying) {
		if (saidCantFocus) {
			addSpeechBubble("Are you OK?", 1);
			saidCantFocus = false;
		} else {
			addSpeechBubble("Can't.. focus..", 0);
			saidCantFocus = true;
		}
	} else if (pressAndHold.isPlaying) {
		if (saidCantFocus) {
			addSpeechBubble("I'm here for you", 1);
			saidCantFocus = false;
		} else {
			addSpeechBubble("Can't.. focus..", 0);
			saidCantFocus = true;
		}
	} else if (alternatePress.isPlaying) {
		if (saidCantFocus) {
			addSpeechBubble("Take your time", 1);
			saidCantFocus = false;
		} else {
			addSpeechBubble("Can't.. focus..", 0);
			saidCantFocus = true;
		}
	} else {	
		// advance script
		event_user(0);
		saidCantFocus = false;
	}
	
	scriptTimer = 0;
	
	with (stressBar) {
		// trigger stress bar modification
		event_user(0);
		
		// maybe trigger a distraction
		event_user(1);
	}
}
