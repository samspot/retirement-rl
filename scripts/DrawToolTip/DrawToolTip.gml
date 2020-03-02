  /*
    argument0 = text
    argument1 = font
    argument2 = text color
    argument3 = tooltip color
    argument3 = alpha

*/
var text_width;
var text_height;
var old_alpha;
var old_color;

// Set alpha
old_alpha = draw_get_alpha();
draw_set_alpha(argument4);

// Set font
draw_set_font(argument1);

// Set Aligns
draw_set_valign(fa_bottom);

text_width  = 5 + string_width(argument0);
text_height = 5 + string_height(argument0);

//text_width = 75
var xPos = mouse_x
var yPos = mouse_y

var drawExtWidth = room_width * .5
// really big text
//if(text_width > room_width / 2){
if(string_length(argument0) > 50){
	xPos = room_width * .8
	text_height = 60
	text_width = room_width * .70
	if(string_length(argument0) > 200){
		xPos = room_width * .95
		yPos = room_height * .95
		text_height = room_height / 2.5
		text_width = room_width * .85
		drawExtWidth = room_width * .9
	}
}


//if ( ( ( xPos - room_width + text_width) <= ( room_width - 5) ) && ( xPos - text_width ) < 0 )
if(xPos < room_width / 2)
{    
    //draw_set_halign(fa_left);
    // Draw rect around the text
    draw_roundrect_color( xPos, yPos - text_height, xPos + text_width, yPos + 5, argument3, argument3, false);

    // Set color
    old_color = draw_get_color();
    draw_set_color(argument2);

    // Draw the text inside the rect
    //draw_text( xPos, yPos - 2, argument0);
    draw_text_ext( xPos, yPos - 2, argument0, 16, drawExtWidth);    

    // Reset old color
    draw_set_color(old_color);
}
else
{
    // Set alignment to right
    draw_set_halign(fa_right);

    // Draw rect around the text
    draw_roundrect_color( xPos, yPos - text_height, xPos - text_width, yPos + 5, argument3, argument3, false);

    // Set color
    old_color = draw_get_color();
    draw_set_color(argument2);    

    // Draw the text inside the rect
    //draw_text( xPos, yPos - 2, argument0);    
    draw_text_ext( xPos, yPos - 2, argument0, 16, drawExtWidth);    

    // Reset old color
    draw_set_color(old_color);    

    // Reset alignment to left
    draw_set_halign(fa_left);

}

// Reset alignment
draw_set_valign(fa_middle);    


// Reset alpha
draw_set_alpha(old_alpha);