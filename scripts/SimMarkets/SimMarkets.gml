with(oMarket){
	market_state = choose(marketState.BEAR, marketState.BULL, marketState.STABLE)
	
	with(oMarketGui){
		image_index = other.market_state
		switch(other.market_state){
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
}