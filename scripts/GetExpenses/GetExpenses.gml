/// GetExpenses()
var a = oPlayer.age
var e = oPlayer.expenses

if(a > 35 && a < 50){
	e *= 1.30	
} 

if(a >= 50 && a < 65){
	e *= 1.60
}

if(a >= 65){
	e *= 2.20	
}

return e