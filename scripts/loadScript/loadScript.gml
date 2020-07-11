// loadScript(array, filename)
var array = argument0;
var filename = argument1;
var file = file_text_open_read(working_directory + filename);
var count = 0;

while (!file_text_eof(file) ){
	var line = file_text_read_string(file);
	if (string_length(line) > 3) {
		array_set(array, count, line);
		show_debug_message(line);
		count++;
	} else {
		show_debug_message("skipping line '" + line + "' because it's too short.");
	}
	file_text_readln(file);
}

return count;