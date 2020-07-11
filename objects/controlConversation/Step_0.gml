timeTillNext -= 1; // decrease timer

// if timer runs out
if (timeTillNext <= 0) {
	
	// swap who's talking
	if (objPersonA.isTalking) {
		objPersonA.isTalking = false;
		objPersonB.isTalking = true;
	} else {
		objPersonA.isTalking = true;
		objPersonB.isTalking = false;
	}
	
	timeTillNext = 3 * room_speed; // reset counter
}

