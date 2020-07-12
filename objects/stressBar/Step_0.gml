currentStress -= 1 / room_speed;

if (pressMultipleTimes.isPlaying) {
	currentStress += 10 / room_speed;
}

if (pressAndHold.isPlaying) {
	currentStress += 10 / room_speed;
}

if (alternatePress.isPlaying) {
	currentStress += 10 / room_speed;
}

// clamp stress between 0 and 1000
currentStress = max(0, min(999, currentStress));
image_index = currentStress / 50;

objCtrl.isVisible = currentStress >= 750
object_set_visible(objCtrl, currentStress >= 750)