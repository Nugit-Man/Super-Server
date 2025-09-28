#what values of AS_Mode represent
#0 In lobby
#1 In a multiplayer game

scoreboard objectives add AS_Mode dummy
scoreboard objectives add AS_Map dummy
scoreboard objectives add AS_Menu dummy
scoreboard objectives add AS_Select dummy
scoreboard objectives add AS_Countdown dummy
scoreboard objectives add AS_Spread dummy
scoreboard objectives add AS_JoinGame trigger
scoreboard objectives add AS_Barrel_Pos dummy
scoreboard objectives add AS_Barrel_Check dummy

#start the countdown timer
function ascendance:menu/countdown

#scoreboards for stats
scoreboard objectives add AS_Kills dummy