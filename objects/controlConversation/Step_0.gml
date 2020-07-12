if(stressBar.currentStress > 750){
	isStressed = true
}else{
	isStressed = false
}

if (keyboard_check_pressed(vk_space)) {
	
	if (pressMultipleTimes.isPlaying) {
		if (saidCantFocus) {
			addSpeechBubble("Press W multiple times", 1);
			saidCantFocus = false;
		} else {
			addSpeechBubble("Can't.. focus..", 0);
			saidCantFocus = true;
		}
	} else if (pressAndHold.isPlaying) {
		if (saidCantFocus) {
			addSpeechBubble("Hold E and R", 1);
			saidCantFocus = false;
		} else {
			addSpeechBubble("Can't.. focus..", 0);
			saidCantFocus = true;
		}
	} else if (alternatePress.isPlaying) {
		if (saidCantFocus) {
			addSpeechBubble("Alternate A and S", 1);
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
	
	
	with (stressBar) {
		// trigger stress bar modification
		event_user(0);
		
		// maybe trigger a distraction
		event_user(1);
	}
}
