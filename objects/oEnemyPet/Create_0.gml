event_inherited()
cash = oBalance.petCash // 2000
happiness = oBalance.petHappiness // 2
expenses = oBalance.petExpenses // 500

//text = "You have a new pet!"
text = "+" + string(happiness) + " Happiness, +$" + string(expenses) + " Expenses, -$" + string(cash) + " Cash."
toolTipText = "Pets make you happy, and fetch cash drops for you."

image_xscale = global.spriteScale
image_yscale = global.spriteScale

sound = sndPet