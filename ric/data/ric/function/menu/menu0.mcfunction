item replace entity @s inventory.0 with minecraft:air
item replace entity @s inventory.1 with minecraft:air
item replace entity @s inventory.2 with minecraft:air
item replace entity @s inventory.3 with minecraft:air
item replace entity @s inventory.4 with minecraft:air
item replace entity @s inventory.5 with minecraft:air
item replace entity @s inventory.6 with minecraft:air
item replace entity @s inventory.7 with minecraft:air
item replace entity @s inventory.8 with minecraft:air
item replace entity @s inventory.9 with minecraft:air
item replace entity @s inventory.10 with minecraft:ender_eye[custom_name={text:"Spectate Classic",italic:false}]
item replace entity @s inventory.11 with minecraft:air
item replace entity @s inventory.12 with minecraft:chorus_fruit[custom_name={text:"TIC Classic",italic:false},custom_model_data={strings:['Random']}]
item replace entity @s inventory.13 with minecraft:air
item replace entity @s inventory.14 with minecraft:bedrock[custom_name={text:"RIC Pillars",italic:false}]
item replace entity @s inventory.15 with minecraft:air
item replace entity @s inventory.16 with minecraft:ender_pearl[custom_name={text:"Spectate Pillars",italic:false}]
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:air
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air

scoreboard players set @a[scores={MAIN_Game=7}] RIC_Select 0
execute as @a[scores={MAIN_Game=7}] store result score @s RIC_Select run clear @s chorus_fruit 0
scoreboard players set @a[scores={MAIN_Game=7,RIC_Select=2}] RIC_Menu 1
clear @a[scores={MAIN_Game=7,RIC_Select=2}]


scoreboard players set @a[scores={MAIN_Game=7}] RIC_Select 0
execute as @a[scores={MAIN_Game=7}] store result score @s RIC_Select run clear @s ender_eye 0
execute if score $In_Game RIC_Main matches ..1 as @a[scores={MAIN_Game=7,RIC_Select=2}] run tellraw @s "There is no active game"
execute if score $In_Game RIC_Main matches 2.. as @a[scores={MAIN_Game=7,RIC_Select=2}] run function ric:spectate
clear @a[scores={MAIN_Game=7,RIC_Select=2}]

scoreboard players set @a[scores={MAIN_Game=7}] RIC_Select 0
execute as @a[scores={MAIN_Game=7}] store result score @s RIC_Select run clear @s bedrock 0
scoreboard players set @a[scores={MAIN_Game=7,RIC_Select=2}] RIC_Menu 2
clear @a[scores={MAIN_Game=7,RIC_Select=2}]


scoreboard players set @a[scores={MAIN_Game=7}] RIC_Select 0
execute as @a[scores={MAIN_Game=7}] store result score @s RIC_Select run clear @s ender_pearl 0
execute if score $In_Game RIC_Pillars matches ..1 as @a[scores={MAIN_Game=7,RIC_Select=2}] run tellraw @s "There is no active game"
execute if score $In_Game RIC_Pillars matches 2.. as @a[scores={MAIN_Game=7,RIC_Select=2}] run function ric:pillars/spectate
clear @a[scores={MAIN_Game=7,RIC_Select=2}]
