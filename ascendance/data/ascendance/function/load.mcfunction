#what values of AS_Mode represent
#0 In lobby
#1 In a multiplayer game

scoreboard objectives add AS_Mode dummy
scoreboard objectives add AS_Map dummy
scoreboard objectives add AS_Menu dummy
scoreboard objectives add AS_Select dummy
scoreboard objectives add AS_Countdown dummy


#start the countdown timer
function ascendance:menu/countdown

#scoreboards for each map
scoreboard objectives add AS_Map_DesertTomb dummy "Desert Tomb"
scoreboard objectives add AS_Map_DesertTomb dummy "Tabletop"
scoreboard objectives add AS_Map_DesertTomb dummy "Brutalism"
scoreboard objectives add AS_Map_DesertTomb dummy "Jungle Pikes"