say "Reloaded!"


#Key Functions!!! (These are the only non-dummy functions and depending on what game you are playing it will att these scores to those trackers which are dummies in disciue)
scoreboard objectives add MAIN_Player_Kills playerKillCount
scoreboard objectives add MAIN_Total_Kills totalKillCount
scoreboard objectives add MAIN_Deaths deathCount
scoreboard objectives add MAIN_Damage_Delt custom:damage_dealt
scoreboard objectives add MAIN_Damage_Taken custom:damage_taken
scoreboard objectives add MAIN_Health health


#Check what game you are in
#0 - lobby
#1 - Ascendance
#2 - Final Island
#3 - Gorbino
#4 - Parkor
scoreboard objectives add MAIN_Game dummy