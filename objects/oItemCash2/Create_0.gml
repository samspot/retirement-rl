/// @description get cash

event_inherited()
cash = oBalance.cash2 //10000


//toolTipText = " $" + string_format(cash, 5, 2) + " in cold hard cash."
toolTipText = CashFmt(cash) + " in cold hard cash."

image_xscale = global.spriteScale
image_yscale = global.spriteScale