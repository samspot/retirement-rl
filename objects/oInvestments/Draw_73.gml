/// @description Draw bar graph
draw_self()

var barlen = 0
var cashPercent = GetCashPercent() //(100 - oMarket.ira - oMarket.emp - oMarket.sma) / 100

toolTipText = "Your Allocations - "
	+ "Cash: " + string(GetCashPercent()*100) + "%\n"
	+ "IRA: " + string(GetIraPercent()*100) + "%\n"
	+ "401(k): " + string(GetEmpPercent()*100) + "%\n"
	+ "SMA: " + string(GetSmaPercent()*100) + "%\n"

if(cashPercent > 0){
	barlen = hDelta * cashPercent
	draw_set_colour(c_yellow);
	draw_rectangle(gCash, gBottom-barlen, gCash+4, gBottom, false)
}

var iraPercent = GetIraPercent() // oMarket.ira / 100
if(iraPercent > 0){
	barlen = hDelta * iraPercent
	draw_set_colour(c_navy);
	draw_rectangle(gIra, gBottom-barlen, gIra+4, gBottom, false)
}

var empPercent = GetEmpPercent() // oMarket.emp / 100
if(empPercent > 0){
	barlen = hDelta * empPercent
	draw_set_colour(c_black);
	draw_rectangle(gEmp, gBottom-barlen, gEmp+4, gBottom, false)
}

var smaPercent = GetSmaPercent() // oMarket.sma / 100
if(smaPercent > 0){
	barlen = hDelta * smaPercent
	draw_set_colour(c_green);
	draw_rectangle(gSma, gBottom-barlen, gSma+4, gBottom, false)
}


event_inherited()		