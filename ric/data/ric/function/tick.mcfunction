#What different values of RIC_Main represent
#0 - Lobby
#1 - In Game
#2 - Lobby PVP
#3 - Spectating

scoreboard players set @a[scores={MAIN_Game=7},tag=!RIC_Welcome] RIC_Menu 0
tag @a[scores={MAIN_Game=7}] add RIC_Welcome

#Clear players at spawn
execute if score MAIN_1s MAIN_Time matches 1 at @e[type=marker,tag=RIC_Reset] run clear @a[distance=..4]


scoreboard players set @a[scores={MAIN_Game=7},nbt={Dimension:"ric:lobby"}] RIC_Main 0
execute as @a[scores={MAIN_Game=7,RIC_Menu=0,RIC_Main=0}] run function ric:menu/menu0
execute as @a[scores={MAIN_Game=7,RIC_Menu=1,RIC_Main=0}] run function ric:menu/menu1

execute as @a[scores={MAIN_Game=7,RIC_Menu=0,RIC_Main=2}] run function ric:menu/menu0
execute as @a[scores={MAIN_Game=7,RIC_Menu=1,RIC_Main=2}] run function ric:menu/menu1


#See how many players are where
scoreboard players set $In_Que RIC_Main 0
execute as @a[scores={MAIN_Game=7,RIC_Main=0,RIC_Menu=1}] run scoreboard players add $In_Que RIC_Main 1
execute as @a[scores={MAIN_Game=7,RIC_Main=2,RIC_Menu=1}] run scoreboard players add $In_Que RIC_Main 1

scoreboard players set $In_Game RIC_Main 0
execute store result score $In_Game RIC_Main if entity @a[scores={MAIN_Game=7,RIC_Main=1}]



#Countdown for when the game is starting
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 2.. run scoreboard players add $Countdown RIC_Main 1
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 2.. if score $Countdown RIC_Main matches 1 run tellraw @a[scores={MAIN_Game=7}] "Game Starting in 30 seconds!"


execute if score $In_Que RIC_Main matches ..1 run scoreboard players set $Countdown RIC_Main 0
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches ..1 if score $Countdown RIC_Main matches 1.. run tellraw @a[scores={MAIN_Game=7}] "Game canceled"

execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 0.. if score $Countdown RIC_Main matches 600.. run function ric:gamestart




execute if score $In_Game RIC_Main matches 1 run title @a[scores={MAIN_Game=7,RIC_Main=1}] title "WINNER"
execute if score $In_Game RIC_Main matches 1 run damage @a[limit=1,scores={RIC_Main=1}] 1 generic_kill


execute as @a[scores={RIC_Main=0},nbt={Dimension:"ric:game"}] run trigger Lobby
scoreboard players set @a[scores={MAIN_Game=7,RIC_Deaths=1,RIC_Main=1}] RIC_Main 0
clear @a[scores={MAIN_Game=7,RIC_Deaths=1}]


execute if score MAIN_10s MAIN_Time matches 1 run execute store result score $Random RIC_Main run random value 1..4
execute if score MAIN_10s MAIN_Time matches 1 if score $Random RIC_Main matches 1 run function ric:random

effect give @a[scores={MAIN_Game=7,RIC_Main=0..1}] saturation 5 0 true
effect give @a[scores={MAIN_Game=7,RIC_Main=1..2}] regeneration infinite 0 true

execute at @a[scores={MAIN_Game=7}] run execute as @e[type=item,nbt={PickupDelay:40s}] at @s run data modify entity @s Owner set from entity @p UUID

execute as @a[scores={MAIN_Game=7}] at @s run execute if block ~ ~-2 ~ obsidian run tag @s add RIC_Reset


execute in ric:lobby run tp @a[tag=RIC_Reset,scores={MAIN_Game=7,pt_checkpoints=1}] -19.5 -36.00 26.5 315 45
execute in ric:lobby run tp @a[tag=RIC_Reset,scores={MAIN_Game=7,pt_checkpoints=2}] -51.5 -38 30.5 135 0
execute in ric:lobby run tp @a[tag=RIC_Reset,scores={MAIN_Game=7,pt_checkpoints=3}] -46.5 -39 -11.5 -135 0
tag @a remove RIC_Reset


execute as @a[scores={MAIN_Game=7,RIC_Main=0}] at @s if block ~ ~-2 ~ crying_obsidian run scoreboard players set @s RIC_Main 2
execute as @a[scores={MAIN_Game=7,RIC_Main=2}] store result score @s RIC_Random run random value 0..60
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=1}] wooden_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=2}] wooden_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=3}] wooden_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=4}] stone_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=5}] stone_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=6}] stone_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=7}] iron_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=8}] iron_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=9}] iron_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=10}] golden_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=11}] golden_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=12}] golden_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=13}] diamond_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=14}] diamond_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=15}] diamond_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=16}] netherite_sword
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=17}] netherite_shovel
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=18}] netherite_axe
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=19}] mace
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=20}] trident
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=21}] bow
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=22}] crossbow
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=23}] arrow 16
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=24}] shield
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=25}] leather_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=26}] leather_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=27}] leather_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=28}] leather_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=29}] chainmail_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=30}] chainmail_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=31}] chainmail_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=32}] chainmail_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=33}] iron_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=34}] iron_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=35}] iron_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=36}] iron_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=37}] golden_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=38}] golden_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=39}] golden_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=40}] golden_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=41}] diamond_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=42}] diamond_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=43}] diamond_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=44}] diamond_helmet
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=45}] netherite_boots
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=46}] netherite_chestplate
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=47}] netherite_leggings
execute if score MAIN_5s MAIN_Time matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=2}] run give @s[scores={MAIN_Game=7,RIC_Random=48}] netherite_helmet



#Barrels
execute in ric:lobby run item replace block -19 -39 27 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ric:lobby run item replace block -43 -42 -9 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in ric:lobby run item replace block -29 -39 -13 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]


execute in ric:lobby at @e[type=marker,tag=RIC_Barrel_1] run scoreboard players set @a[distance=..7] RIC_Barrel_Pos 1
execute in ric:lobby at @e[type=marker,tag=RIC_Barrel_2] run scoreboard players set @a[distance=..7] RIC_Barrel_Pos 2
execute in ric:lobby at @e[type=marker,tag=RIC_Barrel_3] run scoreboard players set @a[distance=..7] RIC_Barrel_Pos 3


execute as @a[scores={MAIN_Game=7}] run execute store result score @s RIC_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=7,RIC_Barrel_Check=1..,RIC_Barrel_Pos=1},nbt={Dimension:"ric:lobby"}] only ric:barrel/wall
advancement grant @a[scores={MAIN_Game=7,RIC_Barrel_Check=1..,RIC_Barrel_Pos=2},nbt={Dimension:"ric:lobby"}] only ric:barrel/tunel
advancement grant @a[scores={MAIN_Game=7,RIC_Barrel_Check=1..,RIC_Barrel_Pos=3},nbt={Dimension:"ric:lobby"}] only ric:barrel/trickshot
