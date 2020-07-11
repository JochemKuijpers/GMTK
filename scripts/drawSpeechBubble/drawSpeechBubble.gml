// drawSpeechBubble(x, y, speechText, speechSide)
var sx = argument0;
var sy = argument1;
var text = argument2;
var spr = sprSpeechBubble;
var img = argument3; // 0 or 1
var ts = 8; // tileSize

draw_set_color(c_white);
draw_set_font(fnt_dialog);

var width = 200;
var height = string_height_ext(text, 12, width);
height = ceil(height / ts + 2) * ts;

sy -= height;

for (var tx = sx; tx < sx + width; tx += ts) {
	var isLeft = tx == sx;
	var isRight = tx == sx + width - ts;
	
	for (var ty = sy; ty < sy + height; ty += ts) {
		var isTop = ty == sy;
		var isBottom = ty == sy + height - ts;
		
		if (isTop) {
			
			if (isLeft) {
				draw_sprite_part(spr, img, 0, 0, ts, ts, tx, ty);
			} else if (isRight) {
				draw_sprite_part(spr, img, 2*ts, 0, ts, ts, tx, ty);
			} else {
				draw_sprite_part(spr, img, ts, 0, ts, ts, tx, ty);
			}
			
		} else if (isBottom) {
			
			if (isLeft) {
				draw_sprite_part(spr, img, 0, 2*ts, ts, ts, tx, ty);
			} else if (isRight) {
				draw_sprite_part(spr, img, 2*ts, 2*ts, ts, ts, tx, ty);
			} else {
				draw_sprite_part(spr, img, ts, 2*ts, ts, ts, tx, ty);
			}
			
		} else {
			
			if (isLeft) {
				draw_sprite_part(spr, img, 0, ts, ts, ts, tx, ty);
			} else if (isRight) {
				draw_sprite_part(spr, img, 2*ts, ts, ts, ts, tx, ty);
			} else {
				draw_sprite_part(spr, img, ts, ts, ts, ts, tx, ty);
			}
		}
	}
}

draw_text_ext(sx + 8, sy + 8, text, 12, width);

return height;