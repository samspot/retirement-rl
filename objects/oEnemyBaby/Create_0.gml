event_inherited()
cash = oBalance.babyCash// 3000
happiness = oBalance.babyHappiness //2
expenses = oBalance.babyExpenses //3000
//text = "You have a new baby!"

text = "+" + string(happiness) + " Happiness, +$" + string(expenses) + " Expenses, -$" + string(cash) + " Cash."
toolTipText = "Babies are expensive, but increase your Happiness."

image_xscale = global.spriteScale
image_yscale = global.spriteScale

sound = sndBaby