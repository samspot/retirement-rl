event_inherited()
happiness = oBalance.spouseHappiness //5
expenses = oBalance.spouseExpenses //3000
married = true
//text = "You got married!"
text = "+" + string(happiness) + " Happiness, +$" + string(expenses) + " Expenses."
toolTipText = "Getting married will increase your Happiness, and your Expenses."

image_xscale = global.spriteScale
image_yscale = global.spriteScale

sound = sndMarried