if(stressBar.currentStress > 750){
	isStressed = true
}else{
	isStressed = false
}

scriptTimer += 1;

if (scriptTimer > 3 * room_speed) {
	
	if (pressMultipleTimes.isPlaying) {
		//penCounter += 1;
		//if (penCounter > 4) {
		//	// interrupt with pen
		//	with (controlConversation) {
		//		interruptScriptLength = loadScript(interruptScript, "event_pen.txt");
		//		isInterrupt = true;
		//		interruptScriptPosition = 0;
		//	}
		//	penCounter = 0;
		//}
	} else if (pressAndHold.isPlaying) {
		//noiseCounter += 1;
		//if (noiseCounter > 4) {
		//	// interrupt with sound
		//	with (controlConversation) {
		//		interruptScriptLength = loadScript(interruptScript, "event_noise.txt");
		//		isInterrupt = true;
		//		interruptScriptPosition = 0;
		//	}
		//	noiseCounter = 0;
		//}
	} else if (alternatePress.isPlaying) {
		//breathingCounter += 1;
		//if (breathingCounter > 4) {
		//	// interrupt with breathing
		//	with (controlConversation) {
		//		interruptScriptLength = loadScript(interruptScript, "event_breathing.txt");
		//		isInterrupt = true;
		//		interruptScriptPosition = 0;
		//	}
		//	breathingCounter = 0;
		//}
	} else {	
		// advance script
		penCounter = 0;
		noiseCounter = 0;
		breathingCounter = 0;
		
		event_user(0);
		saidCantFocus = false;
		scriptTimer = -999999; // let objChat reset this to 0
		
		with (stressBar) {
			// trigger stress bar modification
			event_user(0);
		
			// maybe trigger a distraction
			event_user(1);
		}
		
	}
}
