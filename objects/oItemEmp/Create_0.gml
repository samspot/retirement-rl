/// @description get cash

event_inherited()
emp = oBalance.empPickupPercent //5

toolTipText = "Will allocate " + string(oBalance.empPickupPercent) + "% of your income each turn to your 401(k). " 
	+ "Your employer will match up to " + string(EMP_MATCH) + "%!\n\n"

	+ "A 401(k) plan is a tax-advantaged, defined-contribution retirement account " 
	+ "offered by many employers to their employees. It is named after a section of the " 
	+ "U.S. Internal Revenue Code.\n\n"
	
	//+ "Workers can make contributions to their 401(k) accounts through automatic payroll withholding, and their employers can match some or all of those contributions. The investment earnings in a traditional 401(k) plan are not taxed until the employee withdraws that money, typically after retirement."

image_xscale = global.spriteScale
image_yscale = global.spriteScale