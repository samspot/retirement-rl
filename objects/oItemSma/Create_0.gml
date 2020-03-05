/// @description get cash

event_inherited()
sma = oBalance.smaPickupPercent //5

toolTipText = "Will allocate " + string(oBalance.smaPickupPercent) + "% of your income " 
	+ "each turn to your SMA. Your SMA has a " + string(SMA_RETURN_BUFF * 100) + "% better "
	+ "return rate than your 401(k).\n\n"

	+ "An SMA (Seperately Managed Account) is a portfolio of assets managed by a professional investment firm. "
	+ "SMAs differ from pooled vehicles like mutual funds in that each portfolio is unique "
	+ "to a single account (hence the name). \n\n SMA's are targetted to high-net-worth "
	+ "investors with minimums between $100,000 and $5 million."

image_xscale = global.spriteScale
image_yscale = global.spriteScale