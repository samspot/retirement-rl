with(oMarket){
	
	market_state_duration++
	if(market_state == marketState.STABLE){
		market_state = choose(marketState.BEAR, marketState.BULL, marketState.STABLE)
		
		market_state_duration = 1		
		//if(market_state == marketState.BEAR){
			//market_state_duration = 2  // shorter bear markets than bull markets
		//}
	//} else if(market_state_duration > irandom_range(3, 6)){
	} else if(market_state == marketState.BEAR && market_state_duration > irandom_range(2, 5)){
		market_state = choose(marketState.BULL, marketState.STABLE)
		market_state_duration = 1		
	} else if(market_state == marketState.BULL && market_state_duration > irandom_range(4, 7)){
		market_state = choose(marketState.BEAR, marketState.STABLE)
		market_state_duration = 1		
	}
		
		//if(market_state == marketState.BEAR){
//			market_state_duration = 2  // shorter bear markets than bull markets
		//}
	//}

	
	with(oMarketGui){
		image_index = other.market_state
		switch(other.market_state){
			case marketState.BEAR:
				toolTipText = "Bear Market"
				break;
			case marketState.BULL:
				toolTipText = "Bull Market"
				break;
			case marketState.STABLE:
				toolTipText = "Average Market"
				break;
		}
		
		toolTipText += "\n" + string(other.market_state_duration) + " Years"
	}
}