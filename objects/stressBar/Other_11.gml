/// @description Maybe trigger random distraction

if (random(1) < loudMusicChance && pressAndHold.timeSinceDeactivated > 10 * room_speed) {
	pressAndHold.isPlaying = true;
} else if(random(1) < fidgetChance && pressMultipleTimes.timeSinceDeactivated > 10 * room_speed) {
	pressMultipleTimes.isPlaying = true;
} else if(random(1) < heavyBreathChance && alternatePress.timeSinceDeactivated > 10 * room_speed) {
	alternatePress.isPlaying = true;
}