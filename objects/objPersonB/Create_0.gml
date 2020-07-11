normalTalking = file_text_open_read(working_directory + "personTwo.txt");
stressedTalking = file_text_open_read(working_directory + "stressPersonTwo.txt");

numOfLines = 3

normalLines = array_create(numOfLines, "")
stressedLines = array_create(numOfLines, "")

count = 0
while(!file_text_eof(normalTalking)){
	array_set(normalLines, count, file_text_read_string(normalTalking))
	show_debug_message(array_get(normalLines, count))
	count++
	file_text_readln(normalTalking)
}

count = 0
while(!file_text_eof(stressedTalking)){
	array_set(stressedLines, count, file_text_read_string(stressedTalking))
	show_debug_message(array_get(stressedLines, count))
	count++
	file_text_readln(stressedTalking)
}