player.isTalking = false;
npc.isTalking = false;

scriptPosition = 0
script = array_create(1000, "");
scriptLength = loadScript(script, "script.txt");

interruptScript = array_create(1000, "");
interruptScriptLength = 0;
interruptScriptPosition = 0;
isInterrupt = false;

saidCantFocus = false;

scriptTimer = 999999;