if(currentStress < 500){
	image_index = 0
	
	chanceModif = 0
	
}else if(currentStress < 750){
	image_index = 1
	
	chanceModif = 0.2
	
}else{
	image_index = 2
	
	chanceModif = 0.3
	
}

timeSinceChanceCheck += 8 / room_speed

if(timeSinceChanceCheck > 5){
	randNum = random_range(0,1.8)
	 if(randNum < loudMusicChance + chanceModif){
		pressAndHold.isPlaying = true
	 }else if(randNum < fidgetChance + chanceModif){
		 pressMultipleTimes.isPlaying = true
	 }else if(randNum < heavyBreathChance + chanceModif){
		 alternatePress.isPlaying = true
	 }
	
	timeSinceChanceCheck = 0
}

if(currentStress > 1000){
	currentStress = 1000
}else if(currentStress < 0){
	currentStress = 0
}

currentStress += stressModifier / 1.5
//show_debug_message(currentStress)