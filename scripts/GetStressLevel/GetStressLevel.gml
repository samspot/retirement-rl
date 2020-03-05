/// GetStressLevel()

var risk = GetDeathRisk()

var s = stress.DANGER
switch(floor(risk / 10)){
	case -10:
	case -9:
	case -8:
	case -7:
	case -6:
		s = stress.HAPPY
		break
	case -5:
		s = stress.GREAT
		break
	case -4:
		s = stress.GOOD
		break
	case -3:
		s = stress.OK
		break
	case -2:
		s = stress.STRESSED
		break
	case -1:
		s = stress.WORRIED
		break
	case 0:
		s = stress.FREAKING
		break
	case 1:
	case 2:
		s = stress.NEARDEATH
		break
	case 3:
	case 4:
		s = stress.DYING
		break
	case 5:
	case 6:
	case 7:
	case 8:
	case 9:
	case 10:
		s = stress.DANGER
		break
}
return s
