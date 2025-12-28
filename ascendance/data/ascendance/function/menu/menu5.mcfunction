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
item replace entity @s inventory.10 with minecraft:air
item replace entity @s inventory.11 with minecraft:air
item replace entity @s inventory.12 with minecraft:air
item replace entity @s[tag=!AS_Killstreak_Shotgun] inventory.13 with minecraft:firework_rocket[custom_name={text:"Super Shotgun",italic:false},lore=[{text:"Disabled",italic:false}],tooltip_display={hidden_components:[fireworks]}]
item replace entity @s[tag=AS_Killstreak_Shotgun] inventory.13 with minecraft:firework_rocket[custom_name={text:"Super Shotgun",italic:false},lore=[{text:"Enabled",italic:false}],tooltip_display={hidden_components:[fireworks]}]
item replace entity @s inventory.14 with minecraft:air
item replace entity @s inventory.15 with minecraft:air
item replace entity @s inventory.16 with minecraft:air
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:barrier[custom_name={text:"Go Back",italic:false}]
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air


scoreboard players set @a[scores={MAIN_Game=1}] AS_Select 0
execute as @a[scores={MAIN_Game=1}] store result score @s AS_Select run clear @s barrier 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Menu 0
scoreboard players set @a[scores={MAIN_Game=1,AS_Select=2}] AS_Gamemode 0
clear @a[scores={MAIN_Game=1,AS_Select=2}]


scoreboard players set @s AS_Select 0
execute store result score @s AS_Select run clear @s firework_rocket 0
execute if score @s[tag=AS_Killstreak_Shotgun] AS_Select matches 2 run tag @s add AS_check
execute if score @s[tag=AS_check] AS_Select matches 2 run tag @s remove AS_Killstreak_Shotgun
execute if score @s[tag=!AS_check] AS_Select matches 2 run tag @s add AS_Killstreak_Shotgun
clear @a[scores={MAIN_Game=1,AS_Select=2}]
tag @s remove AS_check

