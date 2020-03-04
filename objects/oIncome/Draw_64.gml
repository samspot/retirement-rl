/// @description Draw current balances

DrawTextShadowed(4, room_height-80, "annual income: " + string(oPlayer.income))
DrawTextShadowed(4, room_height-60, "cash: " + string(oPlayer.cash))
DrawTextShadowed(4, room_height-40, "expenses: " + string(GetExpenses()))

DrawTextShadowed(room_width / 2, room_height-80, "ira$: " + string(oMarket.balance_ira))
DrawTextShadowed(room_width / 2, room_height-60, "emp$: " + string(oMarket.balance_emp))
DrawTextShadowed(room_width / 2, room_height-40, "sma$: " + string(oMarket.balance_sma))
