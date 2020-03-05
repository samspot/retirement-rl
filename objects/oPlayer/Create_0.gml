/// @description init
#macro PLAYER_WAIT 1
event_inherited()

toolTipText = "It's you!  Live as long as you can before you run out of money."

c = oController
canMove = true
mSpeed = 4
mSpeed = 12
hp = 9
maxMoves = oBalance.pMaxMoves // 2
moves = maxMoves
damage = 1
cash =  oBalance.pStartCash //20000
age =  oBalance.pAge //18
income =  oBalance.pIncome //0

expenses =  oBalance.pExpenses //3000
expenseRate =  oBalance.pExpenseRate //1.0
dead = false
happiness = 0

hasEmpMatch = true
hasIncome = true
willStarve = false

married = false
pets = 0

if(debug_mode){
	//cash = 1000000
	//expenses = 1
}


image_xscale = global.spriteScale
image_yscale = global.spriteScale