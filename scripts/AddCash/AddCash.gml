/// AddCash(amount, isPickup)
var amount = argument0
var isPickup = argument1
var cashPercent = GetCashPercent() 
//oPlayer.cash += amount * cashPercent
var finalAmount = amount

if(isPickup && amount > 0){
	with(instance_create_layer(0, 0, "Instances", oFloatingText)){
		text = "Got $" + string(amount)
	}
}

with(oMarket){
	if(isPickup){
		var iraAmount = amount * GetIraPercent()
		if(iraAmount > 7000){
			balance_ira += 7000
			//oPlayer.cash += iraAmount - 7000
			finalAmount -= 7000
		} else {
			balance_ira += iraAmount	
			finalAmount -= iraAmount
		}
	}
	//balance_ira += amount * ira / 100	
	if(!isPickup){
		if(GetEmpPercent() > 0){
			var empAmount = amount * GetEmpPercent()
			balance_emp += empAmount
			finalAmount -= empAmount
		
			if(oPlayer.hasEmpMatch){
				balance_emp += (amount * max(emp, 7)) / 100  // 401k employer match
			}
		}
		var smaAmount = amount * GetSmaPercent()
		balance_sma += smaAmount
		finalAmount -= smaAmount
	}
	
	oPlayer.cash += finalAmount
}