/// CashFmt(cash)
var isNegative = real(argument0) < 0
var str = string_format(abs(real(argument0)), 7, 0)
//str = string_replace_all(str," ","0")
if(isNegative){
	str = " -$" + str
} else {
	str = "  $" + str
}
return str