/// attack(direction)

var dir = argument0

var rightE = instance_place(GridToPixel(gX + 1), GridToPixel(gY), pEnemy)
var downE = instance_place(GridToPixel(gX), GridToPixel(gY + 1), pEnemy)
var leftE = instance_place(GridToPixel(gX - 1), GridToPixel(gY), pEnemy)
var upE = instance_place(GridToPixel(gX), GridToPixel(gY - 1), pEnemy)

switch(dir){
	case dirs.right:{
		with(rightE) hp -= other.damage
		break;
	}
	case dirs.down:{
		with(downE) hp -= other.damage
		break;
	}
	case dirs.left:{
		with(leftE) hp -= other.damage
		break;
	}
	case dirs.up: {
		with(upE) hp -= other.damage
		break;
	}
}

canMove = false
moves=0

			//alarm[0] = 10
			alarm[0] = PLAYER_WAIT