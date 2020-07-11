if(currentStress < 500){
	image_index = 0
}else if(currentStress < 750){
	image_index = 1
}else{
	image_index = 2
}

if(currentStress > 1000){
	currentStress = 1000
}else if(currentStress < 0){
	currentStress = 0
}

currentStress += stressModifier