/// @description Maybe trigger random distraction

if (random(2 - currentStress/1000) < loudMusicChance && pressAndHold.timeSinceDeactivated > 10 * room_speed) {
	pressAndHold.isPlaying = true;
} else if(random(2 - currentStress/1000) < fidgetChance && pressMultipleTimes.timeSinceDeactivated > 10 * room_speed) {
	pressMultipleTimes.isPlaying = true;
} else if(random(2 - currentStress/1000) < heavyBreathChance && alternatePress.timeSinceDeactivated > 10 * room_speed) {
	alternatePress.isPlaying = true;
}