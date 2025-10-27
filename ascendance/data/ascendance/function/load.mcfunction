#what values of AS_Mode represent
#0 In lobby
#1 In a multiplayer game
#2 In a singleplayer game

scoreboard objectives add AS_Mode dummy
scoreboard objectives add AS_Map dummy
scoreboard objectives add AS_Menu dummy
scoreboard objectives add AS_Select dummy
scoreboard objectives add AS_Countdown dummy
scoreboard objectives add AS_Spread dummy
scoreboard objectives add AS_JoinGame trigger
scoreboard objectives add AS_Barrel_Pos dummy
scoreboard objectives add AS_Barrel_Check dummy
scoreboard objectives add AS_Gamemode dummy
scoreboard objectives add AS_Singleplayer_Kills dummy
scoreboard objectives add AS_Deaths dummy
scoreboard objectives add AS_Dethrone_Count dummy
scoreboard objectives add AS_Match_Kills dummy
scoreboard objectives add AS_Winstreak dummy


scoreboard objectives add AS_Milestone_Kills dummy
scoreboard objectives add AS_Milestone_Deaths dummy
scoreboard objectives add AS_Milestone_Wins dummy
scoreboard objectives add AS_Milestone_Shots dummy

#start the countdown timer
function ascendance:menu/countdown

#scoreboards for stats
scoreboard objectives add AS_Kills dummy