/// @description Create the market and Simulate the first turn

event_inherited()

enum marketState {
	BEAR, BULL, STABLE
}


// percent income in each ret vehicle
ira = 0
emp = 0
sma = 0

balance_ira = 0
balance_emp = 0
balance_sma = 0


SimMarkets()

