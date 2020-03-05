/// @description get cash

event_inherited()
ira = oBalance.iraPickupPercent //5

toolTipText = "Will allocate " + string(oBalance.iraPickupPercent) + "% of cash " 
			+ "you pick up to your IRA, up to the $" + string(IRA_CONTRIB_LIMIT) + " annual (per-turn) contribution limit.\n\n"

			+ "A Roth IRA is a special retirement account where you pay " 
			+ "taxes on money going into your account and then all future " 
			+ "withdrawals are tax-free.\n\n"

image_xscale = global.spriteScale
image_yscale = global.spriteScale