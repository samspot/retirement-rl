/// IsMovingSwiping

if(oGestureListener.right > 0 || oGestureListener.left > 0 || oGestureListener.up > 0 || oGestureListener.down > 0){
	return true
}

if(oPlayer.hspeed > 0 || oPlayer.vspeed > 0){
	return true
}


return false