#Options Menu
item replace entity @a inventory.0 with minecraft:air
item replace entity @a inventory.1 with minecraft:air
item replace entity @a inventory.2 with minecraft:air
item replace entity @a inventory.3 with minecraft:air
item replace entity @a inventory.4 with minecraft:air
item replace entity @a inventory.5 with minecraft:air
item replace entity @a inventory.6 with minecraft:air
item replace entity @a inventory.7 with minecraft:air
item replace entity @a inventory.8 with minecraft:air
item replace entity @a inventory.9 with minecraft:air
item replace entity @a inventory.11 with minecraft:air
item replace entity @a inventory.13 with minecraft:air
item replace entity @a inventory.15 with minecraft:air
item replace entity @a inventory.17 with minecraft:air
item replace entity @a inventory.18 with minecraft:air
item replace entity @a inventory.19 with minecraft:air
item replace entity @a inventory.20 with minecraft:air
item replace entity @a inventory.21 with minecraft:air
item replace entity @a inventory.23 with minecraft:air
item replace entity @a inventory.24 with minecraft:air
item replace entity @a inventory.25 with minecraft:air
item replace entity @a inventory.26 with minecraft:air

scoreboard players set @a[tag=!select] Mode 1
tag @a remove select


execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s bamboo 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Dota Unlocks 1
execute if score U_Dota Unlocks matches 3 run scoreboard players set U_Dota Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1


execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s beetroot_seeds 0
execute as @a[scores={Mode=2}] run scoreboard players add U_TF2 Unlocks 1
execute if score U_Dota Unlocks matches 3 run scoreboard players set U_TF2 Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1


execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s acacia_sign 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1



execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s phantom_membrane 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 5
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1



execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s glass_bottle 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 6
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1



item replace entity @a inventory.22 with minecraft:acacia_sign[custom_name='["",{"text":"Back","italic":false}]']

item replace entity @a inventory.10 with minecraft:phantom_membrane[custom_name='["",{"text":"Killstreak items","italic":false}]']
item replace entity @a inventory.12 with minecraft:glass_bottle[custom_name='["",{"text":"Modifiers","italic":false}]']


#Dota
execute if score U_Dota Unlocks matches 0 run item replace entity @a inventory.14 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Dota Unlocks matches 1 run item replace entity @a inventory.14 with minecraft:bamboo[custom_name='["",{"text":"Dota Anouncer: Disabled","italic":false}]']
execute if score U_Dota Unlocks matches 2 run item replace entity @a inventory.14 with minecraft:bamboo[custom_name='["",{"text":"Dota Anouncer: Enabled","italic":false}]']


#TF2
execute if score U_TF2 Unlocks matches 0 run item replace entity @a inventory.16 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_TF2 Unlocks matches 1 run item replace entity @a inventory.16 with minecraft:beetroot_seeds[custom_name='["",{"text":"TF2 Anouncer: Disabled","italic":false}]']
execute if score U_TF2 Unlocks matches 2 run item replace entity @a inventory.16 with minecraft:beetroot_seeds[custom_name='["",{"text":"Tf2 Anouncer: Enabled","italic":false}]']