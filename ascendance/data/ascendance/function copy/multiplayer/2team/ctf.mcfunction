#Give the advancement
execute if score Red Flagstate matches 0 run advancement grant @a[team=Red,scores={Red_Flags=1}] only ascendance:ascendance/nice_job_team
execute if score Blue Flagstate matches 0 run advancement grant @a[team=Blue,scores={Blue_Flags=1}] only ascendance:ascendance/nice_job_team

#Give the other advancement
advancement grant @a[scores={Deathmessages=1..,Red_Flags=1..}] only ascendance:ascendance/inch_by_inch
advancement grant @a[scores={Deathmessages=1..,Blue_Flags=1..}] only ascendance:ascendance/inch_by_inch


#MVP stuff
scoreboard players add @a[scores={Killmessages=1..}] MVP 2
scoreboard players add @a[scores={Red_Flags=1..}] MVP 2
scoreboard players add @a[scores={Blue_Flags=1..}] MVP 2


#Blue Taking red flag
execute if score Red Flagstate matches 0 run execute as @a[team=Blue,scores={Red_Flags=1}] run title @a[tag=player] title "Red Flag Taken"
execute if score Red Flagstate matches 0 run effect give @a[team=Blue,scores={Red_Flags=1}] glowing infinite 0 true
execute if score Red Flagstate matches 0 run item replace entity @a[team=Blue,scores={Red_Flags=1}] armor.head with red_banner
execute if score Red Flagstate matches 0 run tag @a[team=Blue,scores={Red_Flags=1}] add Red_Flag_Taken
execute if score Red Flagstate matches 0 run execute as @a[team=Blue,scores={Red_Flags=1}] run scoreboard players set Red Flagstate 1
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 0 run execute as @a[team=Blue,scores={Red_Flags=1}] run execute at @a[team=Blue] run playsound minecraft:custom.tf2-take master @a[team=Blue]
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 0 run execute as @a[team=Blue,scores={Red_Flags=1}] run execute at @a[team=Red] run playsound minecraft:custom.tf2-take1 master @a[team=Red]

#If the player dies with it see if there is air around them, if not then reset the flag
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run execute if block ~ ~-50 ~ air run fill ~ ~-50 ~ ~ ~-50 ~ red_banner replace air
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run execute if block ~ ~-50 ~ red_banner run title @a[tag=player] title "Red Flag Dropped"
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run execute if block ~ ~-50 ~ red_banner run scoreboard players set Red Flagstate 2
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run execute if block ~ ~-49 ~ air run fill ~ ~-49 ~ ~ ~-49 ~ red_banner replace air
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run execute if block ~ ~-49 ~ red_banner run title @a[tag=player] title "Red Flag Dropped"
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run execute if block ~ ~-49 ~ red_banner run scoreboard players set Red Flagstate 2
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run execute if block ~ ~-48 ~ air run fill ~ ~-48 ~ ~ ~-48 ~ red_banner replace air
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run execute if block ~ ~-48 ~ red_banner run title @a[tag=player] title "Red Flag Dropped"
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run execute if block ~ ~-48 ~ red_banner run scoreboard players set Red Flagstate 2
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 2 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute as @e[tag=Red_Flag_Tracker] run execute at @a[tag=Blue] run playsound minecraft:custom.tf2-drop master @a[team=Blue]
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 2 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute as @e[tag=Red_Flag_Tracker] run execute at @a[tag=Red] run playsound minecraft:custom.tf2-drop1 master @a[team=Red]
#Either player fell in the void or something messed up, so run the failsafe
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run function ascendance:multiplayer/2team/red_flag
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run title @a[tag=player] title "Red Flag Reset"
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 0 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute as @e[tag=Red_Flag_Tracker] run execute at @a[tag=Blue] run playsound minecraft:custom.tf2-reset1 master @a[team=Blue]
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 0 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute as @e[tag=Red_Flag_Tracker] run execute at @a[tag=Red] run playsound minecraft:custom.tf2-reset master @a[team=Red]
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run scoreboard players set Red Flagstate 0
execute if score Red Flagstate matches 1 as @r[tag=Red_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Red_Flag_Tracker] run tag @a remove Red_Flag_Taken

execute if score Red Flagstate matches 1 run execute at @a[tag=Red_Flag_Taken] run tp @e[tag=Red_Flag_Tracker] ~ ~50 ~


#If the flag is dropped
execute if score Red Flagstate matches 2 as @r[team=Red,scores={Red_Flags=1}] run function ascendance:multiplayer/2team/red_flag
execute if score Red Flagstate matches 2 as @r[team=Red,scores={Red_Flags=1}] run title @a[tag=player] title "Red Flag Reset"
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 2 as @r[team=Red,scores={Red_Flags=1}] at @a[team=Blue] run playsound minecraft:custom.tf2-reset1 master @a[team=Blue]
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 2 as @r[team=Red,scores={Red_Flags=1}] at @a[team=Red] run playsound minecraft:custom.tf2-reset master @a[team=Red]
execute if score Red Flagstate matches 2 as @r[team=Red,scores={Red_Flags=1}] run scoreboard players set Red Flagstate 0
execute if score Red Flagstate matches 2 run execute as @a[team=Blue,scores={Red_Flags=1}] run title @a[tag=player] title "Red Flag Taken"
execute if score Red Flagstate matches 2 run effect give @a[team=Blue,scores={Red_Flags=1}] glowing infinite 0 true
execute if score Red Flagstate matches 2 run item replace entity @a[team=Blue,scores={Red_Flags=1}] armor.head with red_banner
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 2 as @r[team=Blue,scores={Red_Flags=1}] at @a[team=Blue] run playsound minecraft:custom.tf2-reset1 master @a[team=Blue]
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 1 as @r[team=Blue,scores={Red_Flags=1}] at @a[team=Red] run playsound minecraft:custom.tf2-reset master @a[team=Red]
execute if score Red Flagstate matches 2 run tag @a[team=Blue,scores={Red_Flags=1}] add Red_Flag_Taken
execute if score Red Flagstate matches 2 run execute as @a[team=Blue,scores={Red_Flags=1}] run scoreboard players set Red Flagstate 1

#Check For capture
execute if score Red Flagstate matches 1 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] run scoreboard players add Blue Captures 1
execute if score Red Flagstate matches 1 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] run clear @a[tag=player] red_banner
execute if score Red Flagstate matches 1 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] run function ascendance:multiplayer/2team/red_flag
execute if score Red Flagstate matches 1 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] run scoreboard players add @a[tag=Red_Flag_Taken] MVP 25
execute if score Red Flagstate matches 1 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] run scoreboard players add @a[tag=Red_Flag_Taken] Caps 1
execute if score Red Flagstate matches 1 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] run title @a title "Red Flag Captured"
execute if score Red Flagstate matches 1 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] run scoreboard players set Red Flagstate 3
execute if score Red Flagstate matches 3 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] run tag @a remove Red_Flag_Taken
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 1 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] at @a[team=Blue] run playsound minecraft.custom.tf2-cap master @a[team=Blue]
execute if score U_TF2 Unlocks matches 2 run execute if score Red Flagstate matches 1 run execute at @r[tag=Red_Flag_Taken] run execute as @e[tag=Blue_Flag_Marker,distance=..2] at @a[team=Red] run playsound minecraft.custom.tf2-cap1 master @a[team=Red]
execute if score Red Flagstate matches 3 run scoreboard players set Red Flagstate 0


















# Blue Taking red flag
execute if score Blue Flagstate matches 0 run execute as @a[team=Red,scores={Blue_Flags=1}] run title @a[tag=player] title "Blue Flag Taken"
execute if score Blue Flagstate matches 0 run effect give @a[team=Red,scores={Blue_Flags=1}] glowing infinite 0 true
execute if score Blue Flagstate matches 0 run item replace entity @a[team=Red,scores={Blue_Flags=1}] armor.head with blue_banner
execute if score Blue Flagstate matches 0 run tag @a[team=Red,scores={Blue_Flags=1}] add Blue_Flag_Taken
execute if score Blue Flagstate matches 0 run execute as @a[team=Red,scores={Blue_Flags=1}] run scoreboard players set Blue Flagstate 1
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 0 run execute as @a[team=Red,scores={Blue_Flags=1}] run execute at @a[team=Red] run playsound minecraft:custom.tf2-take master @a[team=Red]
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 0 run execute as @a[team=Red,scores={Blue_Flags=1}] run execute at @a[team=Blue] run playsound minecraft:custom.tf2-take1 master @a[team=Blue]

# If the player dies with it see if there is air around them, if not then reset the flag
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run execute if block ~ ~-50 ~ air run fill ~ ~-50 ~ ~ ~-50 ~ blue_banner replace air
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run execute if block ~ ~-50 ~ blue_banner run title @a[tag=player] title "Blue Flag Dropped"
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run execute if block ~ ~-50 ~ blue_banner run scoreboard players set Blue Flagstate 2
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run execute if block ~ ~-49 ~ air run fill ~ ~-49 ~ ~ ~-49 ~ blue_banner replace air
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run execute if block ~ ~-49 ~ blue_banner run title @a[tag=player] title "Blue Flag Dropped"
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run execute if block ~ ~-49 ~ blue_banner run scoreboard players set Blue Flagstate 2
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run execute if block ~ ~-48 ~ air run fill ~ ~-48 ~ ~ ~-48 ~ blue_banner replace air
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run execute if block ~ ~-48 ~ blue_banner run title @a[tag=player] title "Blue Flag Dropped"
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run execute if block ~ ~-48 ~ blue_banner run scoreboard players set Blue Flagstate 2
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 2 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute as @e[tag=Blue_Flag_Tracker] run execute at @a[tag=Red] run playsound minecraft:custom.tf2-drop master @a[team=Red]
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 2 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute as @e[tag=Blue_Flag_Tracker] run execute at @a[tag=Blue] run playsound minecraft:custom.tf2-drop1 master @a[team=Blue]

# Either player fell in the void or something messed up, so run the failsafe
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run function ascendance:multiplayer/2team/blue_flag
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run title @a[tag=player] title "Blue Flag Reset"
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 0 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute as @e[tag=Blue_Flag_Tracker] run execute at @a[tag=Red] run playsound minecraft:custom.tf2-reset1 master @a[team=Red]
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 0 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute as @e[tag=Blue_Flag_Tracker] run execute at @a[tag=Blue] run playsound minecraft:custom.tf2-reset master @a[team=Blue]
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run scoreboard players set Blue Flagstate 0
execute if score Blue Flagstate matches 1 as @r[tag=Blue_Flag_Taken,scores={Deathmessages=1..}] run execute at @e[tag=Blue_Flag_Tracker] run tag @a remove Blue_Flag_Taken

execute if score Blue Flagstate matches 1 run execute at @a[tag=Blue_Flag_Taken] run tp @e[tag=Blue_Flag_Tracker] ~ ~50 ~

# If the flag is dropped
execute if score Blue Flagstate matches 2 as @r[team=Blue,scores={Blue_Flags=1}] run function ascendance:multiplayer/2team/blue_flag
execute if score Blue Flagstate matches 2 as @r[team=Blue,scores={Blue_Flags=1}] run title @a[tag=player] title "Blue Flag Reset"
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 2 as @r[team=Blue,scores={Blue_Flags=1}] at @a[team=Red] run playsound minecraft:custom.tf2-reset1 master @a[team=Red]
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 2 as @r[team=Blue,scores={Blue_Flags=1}] at @a[team=Blue] run playsound minecraft:custom.tf2-reset master @a[team=Blue]
execute if score Blue Flagstate matches 2 as @r[team=Blue,scores={Blue_Flags=1}] run scoreboard players set Blue Flagstate 0
execute if score Blue Flagstate matches 2 run execute as @a[team=Red,scores={Blue_Flags=1}] run title @a[tag=player] title "Blue Flag Taken"
execute if score Blue Flagstate matches 2 run effect give @a[team=Red,scores={Blue_Flags=1}] glowing infinite 0 true
execute if score Blue Flagstate matches 2 run item replace entity @a[team=Red,scores={Blue_Flags=1}] armor.head with blue_banner
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 2 as @r[team=Red,scores={Blue_Flags=1}] at @a[team=Red] run playsound minecraft:custom.tf2-reset1 master @a[team=Red]
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 1 as @r[team=Red,scores={Blue_Flags=1}] at @a[team=Blue] run playsound minecraft:custom.tf2-reset master @a[team=Blue]
execute if score Blue Flagstate matches 2 run tag @a[team=Red,scores={Blue_Flags=1}] add Blue_Flag_Taken
execute if score Blue Flagstate matches 2 run execute as @a[team=Red,scores={Blue_Flags=1}] run scoreboard players set Blue Flagstate 1

# Check For capture
execute if score Blue Flagstate matches 1 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] run scoreboard players add Red Captures 1
execute if score Blue Flagstate matches 1 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] run clear @a[tag=player] blue_banner
execute if score Blue Flagstate matches 1 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] run function ascendance:multiplayer/2team/blue_flag
execute if score Blue Flagstate matches 1 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] run scoreboard players add @a[tag=Blue_Flag_Taken] MVP 25
execute if score Blue Flagstate matches 1 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] run scoreboard players add @a[tag=Blue_Flag_Taken] Caps 1
execute if score Blue Flagstate matches 1 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] run title @a title "Blue Flag Captured"
execute if score Blue Flagstate matches 1 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] run scoreboard players set Blue Flagstate 3
execute if score Blue Flagstate matches 3 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] run tag @a remove Blue_Flag_Taken
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 1 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] at @a[team=Red] run playsound minecraft.custom.tf2-cap master @a[team=Red]
execute if score U_TF2 Unlocks matches 2 run execute if score Blue Flagstate matches 1 run execute at @r[tag=Blue_Flag_Taken] run execute as @e[tag=Red_Flag_Marker,distance=..2] at @a[team=Blue] run playsound minecraft.custom.tf2-cap1 master @a[team=Blue]
execute if score Blue Flagstate matches 3 run scoreboard players set Blue Flagstate 0




scoreboard players set @a[tag=player] Red_Flags 0
scoreboard players set @a[tag=player] Blue_Flags 0






#Check for victory
execute if score $Config Mode matches 1 run execute if score Red Captures matches 1 run tag @a[team=Red] add winner
execute if score $Config Mode matches 2 run execute if score Red Captures matches 2 run tag @a[team=Red] add winner
execute if score $Config Mode matches 3 run execute if score Red Captures matches 3 run tag @a[team=Red] add winner
execute if score $Config Mode matches 4 run execute if score Red Captures matches 5 run tag @a[team=Red] add winner

execute if score $Config Mode matches 1 run execute if score Blue Captures matches 1 run tag @a[team=Blue] add winner
execute if score $Config Mode matches 2 run execute if score Blue Captures matches 2 run tag @a[team=Blue] add winner
execute if score $Config Mode matches 3 run execute if score Blue Captures matches 3 run tag @a[team=Blue] add winner
execute if score $Config Mode matches 4 run execute if score Blue Captures matches 5 run tag @a[team=Blue] add winner

execute as @r[tag=winner] run function ascendance:multiplayer/2team/end