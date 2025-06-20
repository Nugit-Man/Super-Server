scoreboard objectives add Mode dummy
scoreboard players set $Game Mode 1
scoreboard players set $Menu Mode 0
scoreboard players set $Map Mode 0
scoreboard players set $Start Mode 0

team empty Blue
team empty Green
team empty Red
team empty Yellow

#adding stuff for no errors
difficulty easy
bossbar add start "Game Starting In X Seconds"
bossbar set minecraft:start max 10
team add Red
team add Blue
team add Green
team add Yellow
scoreboard objectives add XPlevels level
scoreboard objectives add XPlevel dummy
scoreboard players set @a XPlevel 0
scoreboard objectives add Num dummy
scoreboard objectives add Snowball dummy
scoreboard objectives add BonusXP dummy
scoreboard objectives add Unlocks dummy
experience set @a 0 levels
experience set @a 0 points
scoreboard objectives add Total_Kills playerKillCount "Total Kills"
scoreboard objectives add Total_Deaths deathCount "Total Deaths"
scoreboard objectives add Rock_Deaths deathCount
scoreboard objectives add Total_Wins dummy "Total Wins"
scoreboard objectives add Winstreak dummy
scoreboard objectives add Shank dummy
scoreboard objectives add Time dummy
scoreboard objectives add Time_5s dummy
scoreboard objectives add Time_60s dummy
scoreboard players set $Time Time 5
scoreboard objectives add Curry dummy
scoreboard objectives add Star dummy
scoreboard objectives add MVP dummy

#add stats
scoreboard objectives add Total_Jumps minecraft.custom:jump
scoreboard objectives add Total_Shots minecraft.used:bow
scoreboard objectives add Stats_Check dummy
scoreboard objectives add Stats_Innit minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add KDR dummy
scoreboard objectives add Total_Games dummy "Total Games"
scoreboard objectives add Training dummy
scoreboard objectives add Armor_Stands minecraft.killed:zombified_piglin

#Lock everything
scoreboard players set U_Dota Unlocks 0
scoreboard players set U_Speed Unlocks 0
scoreboard players set U_Jump_boost Unlocks 0
scoreboard players set U_Shield Unlocks 0
scoreboard players set U_Chaos Unlocks 0
scoreboard players set U_Nausia Unlocks 0
scoreboard players set U_Darkness Unlocks 0
scoreboard players set U_Shipment Unlocks 0
scoreboard players set U_Blindness Unlocks 0
scoreboard players set U_Horse Unlocks 0
scoreboard players set U_Levitation Unlocks 0
scoreboard players set U_Combustion Unlocks 0
scoreboard players set U_Team_Attack Unlocks 0
scoreboard players set U_Glowing Unlocks 0
scoreboard players set U_Ammo Unlocks 0
scoreboard players set U_Invisability Unlocks 0
scoreboard players set U_Slowness Unlocks 0
scoreboard players set U_Slowfall Unlocks 0
scoreboard players set U_Mayhem Unlocks 0
scoreboard players set U_Cube Unlocks 0
scoreboard players set U_Final_Island Unlocks 0
scoreboard players set U_The_Caves Unlocks 0
scoreboard players set U_Ice_Spikes Unlocks 0
scoreboard players set U_Jungle_Pikes Unlocks 0
scoreboard players set U_TF2 Unlocks 0
scoreboard players set U_Lives Unlocks 0



tag @a remove busy
tag @a remove player
say Reloaded!