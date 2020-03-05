event_inherited()
cash = oBalance.vacaCash // 2000
happiness = oBalance.vacaHappiness // 1
expenses = 0
//text = "You took a vacation!"
text = "Spent $" + string(cash) + " on vaca and gained +" + string(happiness) + " Happiness."
toolTipText = "Going on vacation will cost some Cash, but increase your Happiness."

image_xscale = global.spriteScale
image_yscale = global.spriteScale