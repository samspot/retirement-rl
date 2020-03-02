/// @description Tick the stock market

SimMarkets()

var delta = 0

if(market_state == marketState.BEAR){
	delta = choose(-0.05, -0.03, -0.06)
}

if(market_state == marketState.BULL){
	delta = choose(1.09, 1.10, 1.12)
}

if(market_state == marketState.STABLE){
	delta = choose(1.04, 1.05, 1.06)
}

if(delta > 0){
	balance_ira *= delta
	balance_emp *= delta
	balance_sma *= delta + 0.04 // buff SMAs
} else {
	balance_ira -= abs(balance_ira * delta)
	balance_emp -= abs(balance_emp * delta)
	balance_sma -= abs(balance_sma * (delta - 0.04)) // buff SMAs
}

