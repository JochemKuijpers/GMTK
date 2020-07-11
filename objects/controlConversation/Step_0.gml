timeTillNext -= 1; // decrease timer

if(stressBar.currentStress > 750){
	isStressed = true
}else{
	isStressed = false
}

// if timer runs out
if (timeTillNext <= 0) {
	
	// swap who's talking
	if (objPersonA.isTalking) {
		objPersonA.isTalking = false;
		objPersonB.isTalking = true;
		
		if(personTwoPosition >= objPersonB.numOfLines){
			personTwoPosition = 0
		}
		
		//addSpeechBubble("Hm-hm! Hm-hm!", 1);
		addSpeechBubble(readLineFromFile(1, isStressed, personTwoPosition), 1)
		personTwoPosition++
	} else {
		objPersonA.isTalking = true;
		objPersonB.isTalking = false;
		//addSpeechBubble("Hm-hm! Hm-hm!", 0);
		//addSpeechBubble("Yes, you are quite right, quite right indeed!", 0);
		
		if(personOnePosition >= objPersonA.numOfLines){
			personOnePosition = 0
		}
		
		addSpeechBubble(readLineFromFile(0, isStressed, personOnePosition), 0)
		personOnePosition++
	}
	
	timeTillNext = 3 * room_speed; // reset counter
}
