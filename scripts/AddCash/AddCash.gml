/// AddCash(amount)
var amount = argument0
var cashPercent = 100 - oMarket.ira - oMarket.emp - oMarket.sma
oPlayer.cash += amount * 100 / cashPercent

with(oMarket){
	var iraAmount = amount * ira / 100
	if(iraAmount > 7000){
		balance_ira += 7000
		oPlayer.cash += iraAmount - 7000
	} else {
		balance_ira += iraAmount	
	}
	//balance_ira += amount * ira / 100	
	balance_emp += amount * emp / 100 
	
	if(oPlayer.age < 65){
		balance_emp += (amount * max(emp, 7)) / 100  // 401k employer match
	}
	balance_sma += amount * sma / 100	
}