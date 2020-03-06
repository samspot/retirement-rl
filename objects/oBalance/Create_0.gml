/// @description set balance parameters

// Player starting stats
pMaxMoves = 2
pStartCash = 20000
pAge = 18
pIncome = 0
pExpenses = 3000
pExpenseRate = 1.0

// spawn rates
#macro WALLS_TO_SPAWN 3
#macro PICKUPS_TO_SPAWN 10
#macro VEHICLES_TO_SPAWN 4

#macro SPOUSE_SPAWN_CHANCE 50
#macro YOUNG_ENEMY_SPAWNS 2
#macro ADULT_ENEMY_SPAWNS 3
#macro MIDDLE_ENEMY_SPAWNS 4
#macro OLD_ENEMY_SPAWNS 5
#macro ANCIENT_ENEMY_SPAWNS 5

#macro SMA_SPAWN_MINIMUM_AMOUNT 100000
#macro PRE_SMA_VEHICLE_SPAWNS oItemIra, oItemEmp, oItemEmp
#macro POST_SMA_VEHICLE_SPAWNS oItemSma, oItemEmp, oItemSma

#macro WORKING_AGE_ENEMIES oEnemyCreditCard, oEnemyVacation, oEnemyTv, oEnemyBaby, oEnemyPet, oEnemyPhishing
#macro RETIREMENT_AGE_ENEMIES oEnemyCreditCard, oEnemyVacation, oEnemyTv, oEnemyCrook, oEnemyPet, oEnemyPhishing

#macro YOUNG_CASH_SPAWNS oItemCash, oItemCash, oItemCash, oItemCash2
#macro ADULT_CASH_SPAWNS oItemCash, oItemCash2, oItemCash2, oItemCash3
#macro MIDDLE_CASH_SPAWNS oItemCash, oItemCash2, oItemCash3, oItemCash3

// Cash Values
cash1 = 5000
cash2 = 10000
cash3 = 20000

// Investment Pickup Values
iraPickupPercent = 5
empPickupPercent = 5
smaPickupPercent = 5

#macro IRA_CONTRIB_LIMIT 7000
#macro EMP_MATCH 7

// job
jobIncome = 3500

// Enemy Values
phishingCash = 4000
crookRetirement = 0.1
tvCash = 3000

babyCash = 300
babyHappiness = 2
babyExpenses = 300

vacaHappiness = 1
vacaCash = 2000

creditCash = 2000
creditExpenses = 200

spouseHappiness = 5
spouseExpenses = 3000

petCash = 2000
petHappiness = 2
petExpenses = 500

// Markets
#macro BEAR_MARKET_RANGES -0.05, -0.03, -0.06
#macro BULL_MARKET_RANGES 0.09, 0.10, 0.12
#macro STABLE_MARKET_RANGES 0.04, 0.05, 0.06

#macro IRA_RETURN_BUFF 0
#macro EMP_RETURN_BUFF 0
#macro SMA_RETURN_BUFF 0.04

#macro DEBT_RATE .07

// Expense rates for age thresholds - as you age you have more needs/wants
#macro YOUNG_EXP_RATE 1.0
#macro ADULT_EXP_RATE 1.3
#macro MIDDLE_EXP_RATE 1.6
#macro OLD_EXP_RATE 2.2
#macro ANCIENT_EXP_RATE 1.9

// Stress
#macro STRESS_FROM_DEBT abs(oPlayer.cash / 10000)
#macro DEATH_CONSTANT 70
//#macro DEATH_CONSTANT 0

#macro PLAYER_AGE_ADULT 35
#macro PLAYER_AGE_MIDDLE 50
#macro PLAYER_AGE_OLD 65
#macro PLAYER_AGE_ANCIENT 80