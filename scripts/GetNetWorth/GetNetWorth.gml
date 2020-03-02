/// GetNetWorth
var netWorth = oPlayer.cash

//if(instance_exists(oMarket)){
	with(oMarket){
		netWorth += balance_ira + balance_emp + balance_sma
	}
//}
return netWorth