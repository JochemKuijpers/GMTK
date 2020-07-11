//readLineFromFile(personTalking, isStressed, position)

if(argument0 == 0 && !argument1){	
	return array_get(objPersonA.normalLines, argument2)	
	
}else if(argument0 == 0 && argument1){
	return array_get(objPersonA.stressedLines, argument2)
	
}else if(argument0 == 1 && !argument1){
	return array_get(objPersonB.normalLines, argument2)
	
}else if(argument0 == 1 && argument1){
	return array_get(objPersonB.stressedLines, argument2)
	
}else{
	show_message("You shouldn't be here")
}
