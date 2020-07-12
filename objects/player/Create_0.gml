isTalking = false;
isDistracted = false;

// All possible character anim with list of frame numbers
idle = array_create(2, [0, 1])
loud_breath = array_create(2, [2, 3])
loud_breath_pen = array_create(4, [4, 5, 6, 7])
breath_pen = array_create(4, [10, 11, 12, 13])
clickPen = array_create(2, [14, 15])
loud = array_create(1, [16])
loud_pen = array_create(2, [17, 18])

// Variables to work animation
ani_start = 0
ani_end = 0
ani_current = 0
ani_speed = 25
timeSinceAni = 0