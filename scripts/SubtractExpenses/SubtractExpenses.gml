/// SubtractExpenses()


AddCash(GetPlayerIncome(), false)
var cash = oPlayer.cash
cash -= GetExpenses()

var tempWithdrawals = 0

if(cash < 0){
	if(oMarket.balance_emp > abs(cash)){
		oMarket.balance_emp += cash
		tempWithdrawals =+ abs(cash)
		cash = 0		
	} else {
		tempWithdrawals += oMarket.balance_emp
		cash += oMarket.balance_emp
		oMarket.balance_emp = 0
	}
}

if(cash < 0){
	if(oMarket.balance_sma > abs(cash)){
		oMarket.balance_sma += cash
		tempWithdrawals =+ abs(cash)
		cash = 0
	} else {
		tempWithdrawals += oMarket.balance_sma
		cash += oMarket.balance_sma
		oMarket.balance_sma = 0
	}
}

if(cash < 0){
	if(oMarket.balance_ira > abs(cash)){
		oMarket.balance_ira += cash
		tempWithdrawals =+ abs(cash)
		cash = 0
	} else {
		tempWithdrawals += oMarket.balance_ira
		cash += oMarket.balance_ira
		oMarket.balance_ira = 0
	}
}

oPerformance.lifetime_withdrawals += tempWithdrawals
tempWithdrawals = 0

if(cash < 0){
	//cash *= DEBT_RATE
	//balance_ira += balance_ira * (delta + IRA_RETURN_BUFF)
	cash += cash * DEBT_RATE
}
oPlayer.cash = cash