if(stressBar.currentStress > 750){
	isStressed = true
}else{
	isStressed = false
}

scriptTimer += 1;

if (scriptTimer > 3 * room_speed) {
	
	if (pressMultipleTimes.isPlaying) {
		penCounter += 1;
		if (penCounter > 4) {
			// interrupt with pen
			penCounter = 0;
		}
	} else if (pressAndHold.isPlaying) {
		noiseCounter += 1;
		if (noiseCounter > 4) {
			// interrupt with sound
			noiseCounter = 0;
		}
	} else if (alternatePress.isPlaying) {
		breathingCounter += 1;
		if (breathingCounter > 4) {
			// interrupt with breathing
			breathingCounter = 0;
		}
	} else {	
		// advance script
		penCounter = 0;
		noiseCounter = 0;
		breathingCounter = 0;
		
		event_user(0);
		saidCantFocus = false;
	}
	
	scriptTimer = -999999; // let objChat reset this to 0
	
	with (stressBar) {
		// trigger stress bar modification
		event_user(0);
		
		// maybe trigger a distraction
		event_user(1);
	}
}
