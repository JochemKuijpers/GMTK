/// @description Modify stress randomly

if (stressIncreasing) {
	currentStress += random(10);
} else {
	currentStress -= random(10);
}

increaseDecreaseTimer -= 1;

if (increaseDecreaseTimer < 0) {
	stressIncreasing = !stressIncreasing;
	increaseDecreaseTimer = random(10) + 2;
}

