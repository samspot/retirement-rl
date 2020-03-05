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

if(delta > 0){
	balance_ira *= delta + IRA_RETURN_BUFF
	balance_emp *= delta + EMP_RETURN_BUFF
	balance_sma *= delta + SMA_RETURN_BUFF 
} else {
	balance_ira -= abs(balance_ira * (delta - IRA_RETURN_BUFF))
	balance_emp -= abs(balance_emp * (delta - EMP_RETURN_BUFF))
	balance_sma -= abs(balance_sma * (delta - SMA_RETURN_BUFF)) 
}

