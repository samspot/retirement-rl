/// @description Tick the stock market

SimMarkets()

var delta = 0

if(market_state == marketState.BEAR){
	delta = choose(BEAR_MARKET_RANGES)
}

if(market_state == marketState.BULL){
	delta = choose(BULL_MARKET_RANGES)
}

if(market_state == marketState.STABLE){
	delta = choose(STABLE_MARKET_RANGES)
}

var ira_start = balance_ira
var emp_start = balance_emp
var sma_start = balance_sma

balance_ira += balance_ira * (delta + IRA_RETURN_BUFF)
balance_emp += balance_emp * (delta + EMP_RETURN_BUFF)
balance_sma += balance_sma * (delta + SMA_RETURN_BUFF)
	
var return1_amt = balance_ira+balance_emp+balance_sma - ira_start - emp_start - sma_start
if(return1_amt != 0){
	oPerformance.return1_rate = delta * 100	
}
ds_list_add(oPerformance.return_list, oPerformance.return1_rate)
oPerformance.return1_amt = return1_amt
oPerformance.lifetime_returns += return1_amt