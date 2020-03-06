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
		if(iraAmount > IRA_CONTRIB_LIMIT){
			balance_ira += IRA_CONTRIB_LIMIT
			//oPlayer.cash += iraAmount - 7000
			finalAmount -= IRA_CONTRIB_LIMIT
			oPerformance.lifetime_investments += IRA_CONTRIB_LIMIT
		} else {
			balance_ira += iraAmount	
			finalAmount -= iraAmount
			oPerformance.lifetime_investments += iraAmount
		}
	}
	//balance_ira += amount * ira / 100	
	if(!isPickup){
		if(GetEmpPercent() > 0){
			var empAmount = amount * GetEmpPercent()
			balance_emp += empAmount
			finalAmount -= empAmount
			oPerformance.lifetime_investments += empAmount
		
			if(oPlayer.hasEmpMatch){
				balance_emp += (amount * (min(emp, EMP_MATCH)/100) )  // 401k employer match
				oPerformance.lifetime_investments += (amount * (min(emp, EMP_MATCH)/100) )
			}
		}
		var smaAmount = amount * GetSmaPercent()
		balance_sma += smaAmount
		finalAmount -= smaAmount
		oPerformance.lifetime_investments += smaAmount
	}
	
	oPlayer.cash += finalAmount
}