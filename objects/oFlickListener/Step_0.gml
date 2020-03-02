/// @description flicks

if device_mouse_check_button_pressed(0,mb_left)
{
   v_xstart = device_mouse_x(0);
   v_ystart = device_mouse_y(0);
   v_isflick = true;
   v_flicktime = 0;
}

if(up > 0) up--
if(right > 0) right--
if(down > 0) down--
if(left > 0) left--

if v_isflick == true
{
   v_flicktime += 1/room_speed;
   if v_flicktime > v_flicktimemax
   {
      v_isflick = false;
      exit;
   }
   if device_mouse_check_button_released(0,mb_left)
   {
      v_isflick = false;
      var dir = point_direction(v_xstart,v_ystart,device_mouse_x(0),device_mouse_y(0));
      dir = floor(dir/90);
      switch (dir)
      {
         case 0:
         {
            //right
			right = 10
            break;
         }
         case 1:
         {
            //up
			up = 10
            break;
         }
         case 2:
         {
            //left
			left = 10
            break;
         }
         case 3:
         {
            //down
			down = 10
            break;
         }
      }
   }
}