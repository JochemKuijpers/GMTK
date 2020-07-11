// addSpeechBubble(text, side)
var size = array_length_1d(objChat.speechText);

// shift bubbles
for (var i = size - 1; i > 0; i -= 1) {
	objChat.speechText[i] = objChat.speechText[i - 1];
	objChat.speechSide[i] = objChat.speechSide[i - 1];
}

// add new bubble
objChat.speechText[0] = argument0;
objChat.speechSide[0] = argument1;

// reset animation
objChat.speechAnim = 0;