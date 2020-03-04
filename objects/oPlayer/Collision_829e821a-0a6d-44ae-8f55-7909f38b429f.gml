/// @description Insert description here
// You can write your code in this editor

hp += other.hp
damage += other.damage
maxMoves += other.maxMoves
income += other.income
//cash += other.cash
AddCash(other.cash, true)

var pira = other.ira
var pemp = other.emp
var psma = other.sma

with(oMarket){
	ira += pira
	emp += pemp
	sma += psma
}

with(other){
	event_user(0)
	instance_destroy()
}