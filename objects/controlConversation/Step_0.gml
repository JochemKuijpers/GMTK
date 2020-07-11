timeTillNext -= 1; // decrease timer

// if timer runs out
if (timeTillNext <= 0) {
	
	// swap who's talking
	if (objPersonA.isTalking) {
		objPersonA.isTalking = false;
		objPersonB.isTalking = true;
		addSpeechBubble("Hm-hm! Hm-hm!", 1);
	} else {
		objPersonA.isTalking = true;
		objPersonB.isTalking = false;
		//addSpeechBubble("Hm-hm! Hm-hm!", 0);
		addSpeechBubble("Yes, you are quite right, quite right indeed!", 0);
	}
	
	timeTillNext = 3 * room_speed; // reset counter
}

