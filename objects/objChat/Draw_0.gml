var size = array_length_1d(speechText);
var height = 0;

// loop over speech and draw bubbles for each
for (var i = 0; i < size; i += 1) {
	var text = array_get(speechText, i);
	var side = array_get(speechSide, i);
	
	if (i == 0) {
		draw_set_alpha(speechAnim / 8);
	} else {
		draw_set_alpha(1);
	}
	
	if (text != "") {
		height += drawSpeechBubble(x - side * 32, y - speechAnim - height, text, array_get(speechSide, i));
		height += 4; // separation between bubbles
	}
}

speechAnim = min(speechAnim + 32 / room_speed, 8);