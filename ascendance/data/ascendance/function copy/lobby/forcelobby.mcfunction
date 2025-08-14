#If I add more villagers this line of code has to change
tag @a[scores={Stats_Innit=1..}] add Stats_Check


scoreboard players set @a Stats_Innit 0
scoreboard players set @a[tag=!Stats_Check] Stats_Check 0
execute as @a[tag=Stats_Check] run function ascendance:lobby/stats




#calculate KDR
#I Use Snowball here to not make another scoreborad and since I don't know if any others are free atm
scoreboard players set $Num Num 100000
execute as @a run scoreboard players operation @s KDR = @s Total_Kills
execute as @a run scoreboard players operation @s KDR *= $Num Num
execute as @a run scoreboard players operation @s KDR /= @s Total_Deaths
execute as @a run scoreboard players operation @s Snowball = @s KDR
execute as @a run scoreboard players operation @s Snowball /= $Num Num
execute as @a run scoreboard players remove @s[scores={Snowball=1}] KDR 100000
execute as @a run scoreboard players remove @s[scores={Snowball=2}] KDR 200000
execute as @a run scoreboard players remove @s[scores={Snowball=3}] KDR 300000
execute as @a run scoreboard players remove @s[scores={Snowball=4}] KDR 400000


#parkore times
scoreboard players remove @a[tag=!times,scores={Time=1..},tag=!busy] Time 1
scoreboard players remove @a[tag=!times,scores={Time_5s=1..},tag=!busy] Time_5s 1
scoreboard players set @a[tag=!times,tag=!busy] Time_60s 0
scoreboard players add @a[tag=times] Time 1
scoreboard players add @a[tag=times,scores={Time=20}] Time_5s 1
scoreboard players add @a[tag=times,scores={Time_5s=60}] Time_60s 1
scoreboard players set @a[tag=times,scores={Time=20}] Time 1
scoreboard players set @a[tag=times,scores={Time_5s=60}] Time_5s 1
scoreboard players operation @a Time *= $Time Time
execute as @a[tag=times] run title @s actionbar ["Time: ",{"score":{"objective":"Time_60s","name":"@s"}},":",{"score":{"objective":"Time_5s","name":"@s"}},":",{"score":{"objective":"Time","name":"@s"}}] 
scoreboard players operation @a Time /= $Time Time

#Start and stop
execute at @e[tag=time_start] run tag @a[distance=..3] add times
execute at @e[tag=time_stops] run tp @a[distance=..3,tag=times] 38.5 19 7.5 180 0
execute at @e[tag=time_stop] run tag @a[distance=..3] remove times


#give parkor advancements
execute at @e[tag=time_end] run advancement grant @a[distance=..3,tag=times] only ascendance:ascendance/jumpman
execute at @e[tag=time_end] run advancement grant @a[distance=..3,scores={Time_60s=0,Time_5s=..24},tag=times] only ascendance:ascendance/speed_demon
execute at @e[tag=time_end] run advancement grant @a[tag=!times,distance=..3,scores={Time=0}] only ascendance:ascendance/sequence_break
execute at @e[tag=time_end] run tag @a[distance=..3] remove times
execute at @e[tag=time_end] run scoreboard players set @a[distance=..3] Time 200
execute at @e[tag=time_end] run scoreboard players set @a[distance=..3] Time_5s 500


#Shooting range
advancement grant @a[scores={Rock_Deaths=1},tag=Shooting] only ascendance:ascendance/good_job
tag @a[tag=Shooting] add leave
execute at @e[tag=Shooting_Range] run tag @a[distance=..3] remove leave
tp @a[tag=leave] 38 25 37
clear @a[tag=leave]
tag @a[tag=leave] remove Shooting
tag @a[tag=leave] remove busy
tag @a remove leave

#Spawn things at the shooting range
execute as @a[tag=Shooting] run execute store result score @s Num run random value 1..1000
execute as @a[tag=Shooting,scores={Num=1..10}] run summon minecart -989 11 27 {Passengers:[{id:"minecraft:zombie",Silent:1b,NoAI:1b,Health:1f,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}]}
execute as @a[tag=Shooting,scores={Num=11..20}] run summon minecart -989 12 24 {Passengers:[{id:"minecraft:zombie",Silent:1b,NoAI:1b,Health:1f,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}]}
execute as @a[tag=Shooting,scores={Num=21..30}] run summon minecart -989 13 21 {Passengers:[{id:"minecraft:zombie",Silent:1b,NoAI:1b,Health:1f,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}]}
execute as @a[tag=Shooting,scores={Num=31..40}] run summon minecart -989 14 18 {Passengers:[{id:"minecraft:zombie",Silent:1b,NoAI:1b,Health:1f,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}]}
execute as @a[tag=Shooting,scores={Num=41..50}] run summon minecart -989 15 15 {Passengers:[{id:"minecraft:zombie",Silent:1b,NoAI:1b,Health:1f,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}]}
execute as @a[tag=Shooting,scores={Num=69}] run summon minecart -989 15 15 {Passengers:[{id:"minecraft:skeleton",Silent:1b,NoAI:1b,Health:1f,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}]}

#the advancemnte
execute as @e[type=skeleton] run execute on attacker run advancement grant @s only ascendance:ascendance/nice_shot_mate




#Training Times
scoreboard players add @a[tag=busy] Time 1
scoreboard players add @a[tag=busy,scores={Time=20}] Time_5s 1
scoreboard players add @a[tag=busy,scores={Time_5s=60}] Time_60s 1
scoreboard players set @a[tag=busy,scores={Time=20}] Time 1
scoreboard players set @a[tag=busy,scores={Time_5s=60}] Time_5s 1
scoreboard players operation @a Time *= $Time Time
execute as @a[tag=busy,tag=!Shooting] run title @s actionbar ["Kills: ",{"score":{"objective":"Training","name":"@s"}},"/25, Time: ",{"score":{"objective":"Time_60s","name":"@s"}},":",{"score":{"objective":"Time_5s","name":"@s"}},":",{"score":{"objective":"Time","name":"@s"}}] 
scoreboard players operation @a Time /= $Time Time
scoreboard players set @a[tag=busy,scores={Time_5s=0,Time=5}] Armor_Stands 1
scoreboard players set @a[tag=busy,scores={Time_5s=0,Time=5}] Training -1

#Training Mode
scoreboard players add @a[scores={Armor_Stands=1}] Training 1
execute at @a[tag=busy] run kill @e[type=experience_orb,distance=..20]
execute at @a[tag=busy] run kill @e[type=item,distance=2..20] 



execute as @a[tag=Training-Desert_Tomb,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Desert_Tomb] run summon zombified_piglin ~ ~9 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-Tabletop,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Tabletop] run summon zombified_piglin ~ ~9 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-Brutalism,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Brutalism] run summon zombified_piglin ~ ~19 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-The_Club,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=The_Club] run summon zombified_piglin ~ ~9 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-Colosseum,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Colosium] run summon zombified_piglin ~ ~9 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-Shipment,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Shipment] run summon zombified_piglin ~ ~3 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-Final_Island,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Final_Island] run summon zombified_piglin ~ ~-101 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-Caves,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Caves] run summon zombified_piglin ~ ~9 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-Ravine,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Ravine] run summon zombified_piglin ~ ~9 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-The_Cube,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=The_Cube] run summon zombified_piglin ~ ~51 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-Ice_Spikes,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Ice_Spikes] run summon zombified_piglin ~ ~-21 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}
execute as @a[tag=Training-Jungle_Pikes,scores={Armor_Stands=1}] at @e[limit=1,sort=random,tag=Jungle_Pikes] run summon zombified_piglin ~ ~9 ~ {Health:1,NoAI:1b,Silent:1b,active_effects:[{id:glowing,duration:999999,show_particles:0b}],attributes:[{id:"generic.max_health",base:0.1f}]}


#Training compleate
scoreboard players set @a[scores={Time_5s=0},tag=busy,tag=!Shooting] Rock_Deaths 0
scoreboard players set @a[tag=busy,tag=!Shooting,scores={Rock_Deaths=1..,Time_5s=1..}] Training 26
advancement grant @a[scores={Training=25,Time_60s=1,Time_5s=0..30}] only ascendance:ascendance/crazy_fast
execute at @a[scores={Training=25}] run kill @e[type=zombified_piglin,distance=..200]
title @a[scores={Training=25}] title "Training Compleate"
title @a[scores={Training=26}] title "Training Failed"
tp @a[scores={Training=25..}] 38 25 37
clear @a[scores={Training=25..}]
scoreboard players set @a[scores={Training=25..}] Time 0
scoreboard players set @a[scores={Training=25..}] Time_5s 0
scoreboard players set @a[scores={Training=25..}] Time_60s 0
scoreboard players set @a[tag=busy] Armor_Stands 0
tag @a[scores={Training=25..}] remove Training-Desert_Tomb
tag @a[scores={Training=25..}] remove Training-Tabletop
tag @a[scores={Training=25..}] remove Training-Brutalism
tag @a[scores={Training=25..}] remove Training-Colosseum
tag @a[scores={Training=25..}] remove Training-The_Club
tag @a[scores={Training=25..}] remove Training-Shipment
tag @a[scores={Training=25..}] remove Training-Final_Island
tag @a[scores={Training=25..}] remove Training-Caves
tag @a[scores={Training=25..}] remove Training-Ravine
tag @a[scores={Training=25..}] remove Training-The_Cube
tag @a[scores={Training=25..}] remove Training-Ice_Spikes
tag @a[scores={Training=25..}] remove Training-Jungle_Pikes
tag @a[scores={Training=25..}] remove busy

tellraw @a[scores={Training=25,Time_60s=0}] ["Rank: S\nXP: +25"]
tellraw @a[scores={Training=25,Time_60s=1}] ["Rank: A\nXP: +10"]
tellraw @a[scores={Training=25,Time_60s=2}] ["Rank: B\nXP: +5"]
tellraw @a[scores={Training=25,Time_60s=3}] ["Rank: C\nXP: +3"]
tellraw @a[scores={Training=25,Time_60s=4}] ["Rank: D\nXP: +1"]



scoreboard players add @a[scores={Training=25,Time_60s=4}] XP 1
scoreboard players add @a[scores={Training=25,Time_60s=3}] XP 3
scoreboard players add @a[scores={Training=25,Time_60s=2}] XP 5
scoreboard players add @a[scores={Training=25,Time_60s=1}] XP 10
scoreboard players add @a[scores={Training=25,Time_60s=0}] XP 25


execute as @a[scores={Training=25,Time_60s=0..4}] run function ascendance:multiplayer/xp



scoreboard players reset @a[scores={Training=25..}] Training