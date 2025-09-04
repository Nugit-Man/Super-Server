#NOTE!! You lose AS_Welcome every time you rejoin the server!! Do not use this for important info!!
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Map 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Mode 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Menu 0
scoreboard players set @a[scores={MAIN_Game=1},tag=!AS_Welcome] AS_Countdown 0
tag @a[scores={MAIN_Game=1},tag=!AS_Welcome] add AS_Welcome


effect give @a[scores={MAIN_Game=1}] saturation infinite 0 true


#Arrow Cleanup
execute at @a[scores={MAIN_Game=1}] run kill @e[type=arrow,distance=..50,nbt={Motion:[0d,0d,0d]}]


#Give the players menus
execute as @a[scores={MAIN_Game=1,AS_Menu=0,AS_Mode=0}] run function ascendance:menu/menu0
execute as @a[scores={MAIN_Game=1,AS_Menu=1,AS_Mode=0}] run function ascendance:menu/menu1
execute as @a[scores={MAIN_Game=1,AS_Menu=2,AS_Mode=0}] run function ascendance:menu/menu2
execute as @a[scores={MAIN_Game=1,AS_Menu=3,AS_Mode=0}] run function ascendance:menu/menu3


#Prevent a second round starting on the same map as one currently is use
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=1}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=1}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=2}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=2}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=3}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=3}] AS_Map 0
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=1..,AS_Map=12}] run scoreboard players set @a[scores={AS_Countdown=0,MAIN_Game=1,AS_Map=12}] AS_Map 0

#Run the thing if the map is in use
execute if score $ AS_Map_DesertTomb matches 100 run function ascendance:gaming/maps/desert_tomb/tick
execute if score $ AS_Map_Tabletop matches 100 run function ascendance:gaming/maps/tabletop/tick
execute if score $ AS_Map_Brutalism matches 100 run function ascendance:gaming/maps/brutalism/tick
execute if score $ AS_Map_JunglePikes matches 100 run function ascendance:gaming/maps/jungle_pikes/tick



#Reset Kills
scoreboard players set @a[scores={MAIN_Game=1}] AS_Kills 0



kill @a[nbt={HurtTime:9s, Dimension:"ascendance:game"},scores={MAIN_Game=1}]
execute as @a[scores={MAIN_Game=1}] run attribute @s attack_damage base set -10