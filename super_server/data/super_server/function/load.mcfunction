#say "Reloaded!"


#Key Functions!!! (These are the only non-dummy functions and depending on what game you are playing it will att these scores to those trackers which are dummies in disciue)
scoreboard objectives add MAIN_Player_Kills playerKillCount
scoreboard objectives add MAIN_Total_Kills totalKillCount
scoreboard objectives add MAIN_Deaths deathCount
scoreboard objectives add MAIN_Damage_Delt custom:damage_dealt
scoreboard objectives add MAIN_Damage_Taken custom:damage_taken
scoreboard objectives add MAIN_Health health
scoreboard objectives add MAIN_Sneak_Time custom:sneak_time
scoreboard objectives add MAIN_Crossbow_Used minecraft.used:minecraft.crossbow
scoreboard objectives add MAIN_Fish_Caught minecraft.custom:minecraft.fish_caught
scoreboard objectives add MAIN_Bow_Used minecraft.used:minecraft.bow
scoreboard objectives add MAIN_Kills_Zombies minecraft.killed:minecraft.zombie
scoreboard objectives add MAIN_Jumps minecraft.custom:minecraft.jump

#Check what game you are in
#0 - lobby
#1 - Ascendance
#2 - Final Island
#3 - Gorbino
#4 - Parkor
scoreboard objectives add MAIN_Game dummy


#Numbers for fucking operations because this shit sucks so much ass
scoreboard objectives add MAIN_Num dummy
scoreboard players set 0 MAIN_Num 0
scoreboard players set 1 MAIN_Num 1
scoreboard players set 2 MAIN_Num 2
scoreboard players set 3 MAIN_Num 3
scoreboard players set 4 MAIN_Num 4
scoreboard players set 5 MAIN_Num 5
scoreboard players set 6 MAIN_Num 6
scoreboard players set 7 MAIN_Num 7
scoreboard players set 8 MAIN_Num 8
scoreboard players set 9 MAIN_Num 9
scoreboard players set 10 MAIN_Num 10
scoreboard players set 11 MAIN_Num 11
scoreboard players set 12 MAIN_Num 12
scoreboard players set 13 MAIN_Num 13
scoreboard players set 14 MAIN_Num 14
scoreboard players set 15 MAIN_Num 15
scoreboard players set 16 MAIN_Num 16
scoreboard players set 17 MAIN_Num 17


#The extra XP that player will have for compleating achivements and milestones wich will enter the players xp next time they go to the main lobby.
scoreboard objectives add MAIN_Achivement_XP dummy
scoreboard objectives add MAIN_XP_Timer dummy





#scoreboard to bring skyblock players to their islands
scoreboard objectives add MAIN_Skyblock_Players dummy



#Go to lobby from anywhere
scoreboard objectives add Lobby trigger Lobby