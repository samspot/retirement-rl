var text = argument0
var font = argument1
var fColor = argument2
var ttColor = argument3
var alpha = argument4

if(text = ""){ return }
var text_width;
var text_height;
var old_alpha;
var old_color;

// Set alpha
old_alpha = draw_get_alpha();
draw_set_alpha(alpha);

// Set font
draw_set_font(font);


// Set Aligns
draw_set_valign(fa_bottom);

text_width  = 5 + string_width(text);
text_height = 5 + string_height(text);

var xPos = mouse_x + GetGameX()
var yPos = mouse_y

// don't wiggle the width within a grid square
xPos = GridToPixel(PixelToGrid(xPos))

// handle left or right aligned depending on which side of the room we're on
var isLeftAligned = xPos < room_width / 2
if(isLeftAligned) {    
    draw_set_halign(fa_left);
	
	var rectRightx = min((room_width-RIGHT_BUFFER), xPos + text_width)
	var rectLeftx = xPos
	
	var drawExtWidth = rectRightx - xPos
} else {
    draw_set_halign(fa_right);
	
	var rectLeftx = max((0+LEFT_BUFFER), xPos - text_width)
	var rectRightx = xPos
	
	var drawExtWidth = rectLeftx + xPos
}


text_height = string_height_ext(text, 16, drawExtWidth)

// top of rectangle will be go from text height to y
var rectTopy = yPos - text_height
var rectBottomy = yPos + 5

// really long string, do a full screen tooltip
if(string_length(text) > 200){
	rectLeftx   = (room_width * .05) + GetGameX()
	rectRightx  = (room_width * .95) + GetGameX()
	rectTopy    = room_height * .05
	rectBottomy = room_height * .95
	
	drawExtWidth = room_width * .9
}

// text should flow to the bottom of the rectangle
var textY = rectBottomy

// If we had a long string, we need to reset text position one last time
if(isLeftAligned) {    
	var textX = rectLeftx
} else {
	var textX = rectRightx
}

// Draw rect around the text
draw_roundrect_color( rectLeftx-2, rectTopy, rectRightx+2, rectBottomy, ttColor, ttColor, false);

// Set color
old_color = draw_get_color();
draw_set_color(fColor);    

// Draw the text inside the rect
draw_text_ext( textX, textY, text, 16, drawExtWidth);    

// Reset old color
draw_set_color(old_color);    

// Reset alignment & alpha
draw_set_valign(fa_middle);    
draw_set_alpha(old_alpha);
draw_set_halign(fa_left);