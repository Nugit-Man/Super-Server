scoreboard players add @a[scores={MAIN_Game=1,AS_Countdown=1..}] AS_Countdown 1

#starting the game code, the person who started it will have a score of 11 and the ones who joined a score of -1
execute if entity @a[scores={MAIN_Game=1,AS_Countdown=11}] run function ascendance:menu/mapstart
#Dude this function does not exist?????

execute as @a[scores={MAIN_Game=1,AS_Countdown=11}] run scoreboard players operation @a[scores={MAIN_Game=1,AS_Countdown=-1}] AS_Map = @s AS_Map
execute as @a[scores={MAIN_Game=1,AS_Countdown=11}] run scoreboard players set @a[scores={MAIN_Game=1,AS_Countdown=-1}] AS_Countdown 11
clear @a[scores={MAIN_Game=1,AS_Countdown=11}]
execute in ascendance:game run tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=1}] 1020 3 34 180 0
execute in ascendance:game run tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=2}] 2032 42 60 180 0
execute in ascendance:game run tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=3}] 3079 3 23 0 0
execute in ascendance:game run tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=4}] 4081 -1 81 180 0
execute in ascendance:game run tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=5}] 5002 7 17 -90 0
execute in ascendance:game run tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=10}] 10016 3 16
execute in ascendance:game run tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=11}] 11018 12 78 180 0
execute in ascendance:game run tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=12}] 12036 10 55.0 270 0
execute in ascendance:game run tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=13}] 13093 23 67 0 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Countdown=11}] AS_Mode 1

give @a[scores={AS_Countdown=14,MAIN_Game=1}] bow[enchantment_glint_override=false,enchantments={infinity:1},unbreakable={},tooltip_display={hidden_components:[enchantments,unbreakable]}]
give @a[scores={AS_Countdown=16,MAIN_Game=1}] arrow

schedule function ascendance:menu/countdown 1s


#remove the trigger command
execute if entity @r[scores={MAIN_Game=1,AS_Countdown=12}] run execute as @a run trigger AS_JoinGame add 0