var risk = oPlayer.age - 70 - oPlayer.happiness

if(oPlayer.cash < 0){
	risk += abs(oPlayer.cash / 10000)
}

return risk