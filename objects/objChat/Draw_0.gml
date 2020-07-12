var size = array_length_1d(speechText);
var height = 0;

// loop over speech and draw bubbles for each
speechAnim += 1;
var slide = min(speechAnim/4, 8);

for (var i = 0; i < size; i += 1) {
	var text = array_get(speechText, i);
	var side = array_get(speechSide, i);
	
	if (i == 0) {
		draw_set_alpha(min(1, speechAnim / 32));
		var texlen = speechAnim / 4 + 1;
		if (texlen < string_length(text)) {
			text = string_copy(text, 1, texlen);
		} else {
			if (controlConversation.scriptTimer < 0) {
				controlConversation.scriptTimer = 0;
			}
		}
	} else {
		draw_set_alpha(1);
	}
	
	if (text != "") {
		height += drawSpeechBubble(x - (1 - side) * 32, y - slide - height, text, array_get(speechSide, i));
		height += 4; // separation between bubbles
	}
}