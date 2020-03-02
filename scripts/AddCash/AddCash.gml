/// AddCash(amount)
var amount = argument0
var cashPercent = 100 - oMarket.ira - oMarket.emp - oMarket.sma
oPlayer.cash += amount * 100 / cashPercent

with(oMarket){
	balance_ira += amount * ira / 100	
	balance_emp += amount * emp / 100	
	balance_sma += amount * sma / 100	
}