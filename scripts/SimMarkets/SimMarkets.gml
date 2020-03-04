with(oMarket){
	market_state = choose(marketState.BEAR, marketState.BULL, marketState.STABLE)
	image_index = market_state
	switch(market_state){
		case marketState.BEAR:
			toolTipText = "Bear Market:("
			break;
		case marketState.BULL:
			toolTipText = "Bull Market :)"
			break;
		case marketState.STABLE:
			toolTipText = "Average Market"
			break;
	}
}