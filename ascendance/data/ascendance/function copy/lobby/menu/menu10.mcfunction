#Map Select
item replace entity @a inventory.2 with minecraft:air
item replace entity @a inventory.6 with minecraft:air
item replace entity @a inventory.7 with minecraft:air
item replace entity @a inventory.8 with minecraft:air
item replace entity @a inventory.9 with minecraft:air
item replace entity @a inventory.11 with minecraft:air
item replace entity @a inventory.12 with minecraft:air
item replace entity @a inventory.15 with minecraft:air
item replace entity @a inventory.16 with minecraft:air
item replace entity @a inventory.17 with minecraft:air
item replace entity @a inventory.18 with minecraft:air
item replace entity @a inventory.20 with minecraft:air
item replace entity @a inventory.21 with minecraft:air
item replace entity @a inventory.23 with minecraft:air
item replace entity @a inventory.24 with minecraft:air
item replace entity @a inventory.25 with minecraft:air
item replace entity @a inventory.26 with minecraft:air

scoreboard players set @a[tag=!select] Mode 1
tag @a remove select

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s acacia_sign 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s sandstone 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 1
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s acacia_chest_boat 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 2
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s polished_andesite 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 3
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s stripped_birch_log 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 4
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s netherite_block 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 5
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s green_terracotta 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 6
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s grass_block 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 7
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s stone 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 8
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s cobblestone 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 9
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s white_concrete 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 10
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s blue_ice 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 11
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s jungle_log 0
execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 12
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

item replace entity @a inventory.0 with minecraft:acacia_sign[custom_name='["",{"text":"Back","italic":false}]']

item replace entity @a inventory.1 with minecraft:gray_stained_glass_pane[custom_name='["",{"text":"Small Maps","italic":false}]']
item replace entity @a inventory.10 with minecraft:gray_stained_glass_pane[custom_name='["",{"text":"Medium Maps","italic":false}]']
item replace entity @a inventory.19 with minecraft:gray_stained_glass_pane[custom_name='["",{"text":"Large Maps","italic":false}]']

item replace entity @a inventory.4 with minecraft:sandstone[custom_name='["",{"text":"Desert Tomb","italic":false}]']
item replace entity @a inventory.5 with minecraft:netherite_block[custom_name='["",{"text":"The Club","italic":false}]']
execute if score U_Shipment Unlocks matches 1 run item replace entity @a inventory.3 with green_terracotta[custom_name='["",{"text":"Shipment","italic":false}]']
execute if score U_Shipment Unlocks matches 0 run item replace entity @a inventory.3 with barrier[custom_name='["",{"text":"Locked","italic":false}]']
execute if score U_Cube Unlocks matches 1 run item replace entity @a inventory.6 with minecraft:white_concrete[custom_name='["",{"text":"The Cube","italic":false}]']
execute if score U_Cube Unlocks matches 0 run item replace entity @a inventory.6 with barrier[custom_name='["",{"text":"Locked","italic":false}]']

item replace entity @a inventory.13 with minecraft:acacia_chest_boat[custom_name='["",{"text":"Tabletop","italic":false}]']
item replace entity @a inventory.14 with minecraft:stripped_birch_log[custom_name='["",{"text":"Colosseum","italic":false}]']
execute if score U_The_Caves Unlocks matches 1 run item replace entity @a inventory.12 with minecraft:stone[custom_name='["",{"text":"Caves","italic":false}]']
execute if score U_The_Caves Unlocks matches 0 run item replace entity @a inventory.12 with barrier[custom_name='["",{"text":"Locked","italic":false}]']
execute if score U_Ice_Spikes Unlocks matches 1 run item replace entity @a inventory.15 with minecraft:blue_ice[custom_name='["",{"text":"Ice Spikes","italic":false}]']
execute if score U_Ice_Spikes Unlocks matches 0 run item replace entity @a inventory.15 with barrier[custom_name='["",{"text":"Locked","italic":false}]']

item replace entity @a inventory.23 with minecraft:cobblestone[custom_name='["",{"text":"Ravine","italic":false}]']
item replace entity @a inventory.22 with minecraft:polished_andesite[custom_name='["",{"text":"Brutalism","italic":false}]']
execute if score U_Final_Island Unlocks matches 1 run item replace entity @a inventory.21 with minecraft:grass_block[custom_name='["",{"text":"Final Island","italic":false}]']
execute if score U_Final_Island Unlocks matches 0 run item replace entity @a inventory.21 with barrier[custom_name='["",{"text":"Locked","italic":false}]']
execute if score U_Jungle_Pikes Unlocks matches 1 run item replace entity @a inventory.24 with minecraft:jungle_log[custom_name='["",{"text":"Jungle Pikes","italic":false}]']
execute if score U_Jungle_Pikes Unlocks matches 0 run item replace entity @a inventory.24 with barrier[custom_name='["",{"text":"Locked","italic":false}]']

#replace with bedrock if in use in a training modes

#Replace with bedrock
execute as @a[tag=Training-Desert_Tomb] run item replace entity @a inventory.4 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-The_Club] run item replace entity @a inventory.5 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-Shipment] run item replace entity @a inventory.3 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-The_Cube] run item replace entity @a inventory.6 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-Tabletop] run item replace entity @a inventory.13 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-Colosseum] run item replace entity @a inventory.14 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-Cave] run item replace entity @a inventory.12 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-Ice_Spikes] run item replace entity @a inventory.15 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-Final_Island] run item replace entity @a inventory.21 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-Brutalism] run item replace entity @a inventory.22 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-Ravine] run item replace entity @a inventory.23 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']
execute as @a[tag=Training-Jungle_Pikes] run item replace entity @a inventory.24 with bedrock[custom_name='["",{"text":"In Use","italic":false}]']


#relock the map if it does not work for the mode
item replace entity @a inventory.3 with structure_void[custom_name='["",{"text":"Unavailable","italic":false}]']
item replace entity @a inventory.6 with structure_void[custom_name='["",{"text":"Unavailable","italic":false}]']
execute if score $Gamemode Mode matches 5 run item replace entity @a inventory.13 with structure_void[custom_name='["",{"text":"Unavailable","italic":false}]']
execute if score $Gamemode Mode matches 5 run item replace entity @a inventory.14 with structure_void[custom_name='["",{"text":"Unavailable","italic":false}]']
execute if score $Gamemode Mode matches 5 run item replace entity @a inventory.5 with structure_void[custom_name='["",{"text":"Unavailable","italic":false}]']