var risk = oPlayer.age - DEATH_CONSTANT - oPlayer.happiness

if(oPlayer.cash < 0){
	risk += STRESS_FROM_DEBT //abs(oPlayer.cash / 10000)
}

return risk