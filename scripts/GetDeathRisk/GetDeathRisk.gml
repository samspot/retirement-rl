var risk = oPlayer.age - DEATH_CONSTANT - oPlayer.happiness

if(oPlayer.cash < 0){
	risk += abs(oPlayer.cash / 10000)
}

return risk