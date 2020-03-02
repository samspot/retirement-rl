var pC = argument0

// perfect center if the click isn't exactly in the right spot
pC = pC - (pC % oController.dim) + oController.dim / 2

var result = (pC - (oController.dim / 2)) / oController.dim

//return result - (result % oController.dim)
return result