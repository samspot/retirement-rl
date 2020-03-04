/// @description Draw current balances

DrawTextShadowed(4, ys, "cash: " + string(oPlayer.cash))
DrawTextShadowed(4, ys+20, "expenses: " + string(GetExpenses()))
DrawTextShadowed(220, ys, "ira$: " + string(oMarket.balance_ira))
DrawTextShadowed(220, ys+20, "emp$: " + string(oMarket.balance_emp))
DrawTextShadowed(220, ys+40, "sma$: " + string(oMarket.balance_sma))
