if(isVisible) {
	stressBar.currentStress -= 250
	pressMultipleTimes.isPlaying = false
	pressAndHold.isPlaying = false
	alternatePress.isPlaying = false
	
	with (controlConversation) {
		interruptScriptLength = loadScript(interruptScript, "event_ctrl.txt");
		isInterrupt = true;
		interruptScriptPosition = 0;
	}
}