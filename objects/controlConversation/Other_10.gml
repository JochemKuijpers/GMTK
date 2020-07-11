/// @description Process script line

var line = "";

if (isInterrupt) {
	line = array_get(interruptScript, interruptScriptPosition);
	interruptScriptPosition++;
	if (interruptScriptPosition >= interruptScriptLength) {
		isInterrupt = false;
	}
}

if (!isInterrupt) {
	line = array_get(script, scriptPosition);
	scriptPosition++
}

if (beginsWith(line, "player: ")) {
	var discardLength = string_length("player: ");
	var text = string_copy(line, discardLength + 1, string_length(line) - discardLength);
	
	addSpeechBubble(text, 0);
	player.isTalking = true;
	npc.isTalking = false;
}


if (beginsWith(line, "npc: ")) {
	var discardLength = string_length("npc: ");
	var text = string_copy(line, discardLength + 1, string_length(line) - discardLength);
	
	addSpeechBubble(text, 1);
	player.isTalking = false;
	npc.isTalking = true;
}

if (beginsWith(line, "event: ")) {
	var discardLength = string_length("event: ");
	var text = string_copy(line, discardLength + 1, string_length(line) - discardLength);
	
	if (text == "end") {
		// end of the script.
		// "event: end"
		game_end();
	} else if (text == "loop") {
		// restarts the script from the beginning
		// "event: loop"
		if (isInterrupt) {
			interruptScriptPosition = 0;
		} else {
			scriptPosition = 0;
		}
		event_user(0); // immediately load next action
		
	} else if (beginsWith(text, "load ")) {
		// load an interrupting script
		// "event: load <filename>"
		var file = string_copy(text, 6, string_length(text) - 5);
		interruptScriptLength = loadScript(interruptScript, file);
		interruptScriptPosition = 0;
		isInterrupt = true;
		event_user(0); // immediately load next action
		
	} else if (text == "return") {
		// return from an interrupting script
		// "event: return"
		isInterrupt = false;
		event_user(0); // immediately load next action
		
	} else {
		show_message("Unknown / not implemented event: '" + text + "'");
		exit;
	}
}
