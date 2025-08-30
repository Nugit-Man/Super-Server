scoreboard players add @a[scores={MAIN_Game=1,AS_Countdown=1..}] AS_Countdown 1


#starting the game code, the person who started it will have a score of 11 and the ones who joined a score of -1
execute as @a[scores={MAIN_Game=1,AS_Countdown=11}] run scoreboard players operation @a[scores={MAIN_Game=1,AS_Countdown=-1}] AS_Map = @s AS_Map
execute as @a[scores={MAIN_Game=1,AS_Countdown=11}] run scoreboard players set @a[scores={MAIN_Game=1,AS_Countdown=-1}] AS_Countdown 11
tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=1}] 1020 3 34 180 0
tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=2}] ~ ~ ~
tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=3}] ~ ~ ~
tp @a[scores={MAIN_Game=1,AS_Countdown=11,AS_Map=12}] ~ ~ ~
scoreboard players set @a[scores={MAIN_Game=1,AS_Countdown=11}] AS_Mode 1

give @a[scores={AS_Countdown=14,MAIN_Game=1}] bow[enchantment_glint_override=false,enchantments={infinity:1},unbreakable={},tooltip_display={hidden_components:[enchantments,unbreakable]}]
give @a[scores={AS_Countdown=16,MAIN_Game=1}] arrow

schedule function ascendance:menu/countdown 1s