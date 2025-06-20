#Map Select
item replace entity @a inventory.2 with minecraft:air
item replace entity @a inventory.7 with minecraft:air
item replace entity @a inventory.8 with minecraft:air
item replace entity @a inventory.9 with minecraft:air
item replace entity @a inventory.11 with minecraft:air
item replace entity @a inventory.16 with minecraft:air
item replace entity @a inventory.17 with minecraft:air
item replace entity @a inventory.18 with minecraft:air
item replace entity @a inventory.20 with minecraft:air
item replace entity @a inventory.25 with minecraft:air
item replace entity @a inventory.26 with minecraft:air

scoreboard players set @a[tag=!select] Mode 1
tag @a remove select

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s acacia_sign 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 11
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s sandstone 0
execute as @a[scores={Mode=2}] run tag @s add Training-Desert_Tomb
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 1020.50 -1.00 10.50 720 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s acacia_chest_boat 0
execute as @a[scores={Mode=2}] run tag @s add Training-Tabletop
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 2032.5 42.00 60.5 180 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s polished_andesite 0
execute as @a[scores={Mode=2}] run tag @s add Training-Brutalism
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 3079.5 3.00 23.5 0 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s stripped_birch_log 0
execute as @a[scores={Mode=2}] run tag @s add Training-Colosseum
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 4081.58 -1.00 81.5 180.00 0.00
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s netherite_block 0
execute as @a[scores={Mode=2}] run tag @s add Training-The_Club
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 5002.5 7.00 17.5 270 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s green_terracotta 0
execute as @a[scores={Mode=2}] run tag @s add Training-Shipment
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 6003.5 13.00 3.5 315 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s grass_block 0
execute as @a[scores={Mode=2}] run tag @s add Training-Final_Island
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 7103.5 31 35.5 90 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s stone 0
execute as @a[scores={Mode=2}] run tag @s add Training-Caves
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 8017.5 4.00 5.5 0 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s cobblestone 0
execute as @a[scores={Mode=2}] run tag @s add Training-Ravine
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 9019.50 3.00 84.5 225 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s white_concrete 0
execute as @a[scores={Mode=2}] run tag @s add Training-The_Cube
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 10016.50 3.00 16.50 0 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s blue_ice 0
execute as @a[scores={Mode=2}] run tag @s add Training-Ice_Spikes
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 11018.5 12.00 67.5 0 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s jungle_log 0
execute as @a[scores={Mode=2}] run tag @s add Training-Jungle_Pikes
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Training -1
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
execute as @a[scores={Mode=2}] run tp @s 12067.5 6.00 55.00 90 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1


scoreboard players set @a[scores={Training=-1}] Armor_Stands 1

item replace entity @a inventory.0 with minecraft:acacia_sign[custom_name='["",{"text":"Back","italic":false}]']

item replace entity @a inventory.1 with minecraft:gray_stained_glass_pane[custom_name='["",{"text":"Small Maps","italic":false}]']
item replace entity @a inventory.10 with minecraft:gray_stained_glass_pane[custom_name='["",{"text":"Medium Maps","italic":false}]']
item replace entity @a inventory.19 with minecraft:gray_stained_glass_pane[custom_name='["",{"text":"Large Maps","italic":false}]']

item replace entity @a inventory.4 with minecraft:sandstone[custom_name='["",{"text":"Desert Tomb","italic":false}]']
item replace entity @a inventory.5 with minecraft:netherite_block[custom_name='["",{"text":"The Club","italic":false}]']
item replace entity @a[tag=Advancement-death_club] inventory.3 with green_terracotta[custom_name='["",{"text":"Shipment","italic":false}]']
item replace entity @a[tag=!Advancement-death_club] inventory.3 with barrier[custom_name='["",{"text":"Locked","italic":false}]']
item replace entity @a[tag=Advancement-good_job] inventory.6 with minecraft:white_concrete[custom_name='["",{"text":"The Cube","italic":false}]']
item replace entity @a[tag=!Advancement-good_job] inventory.6 with barrier[custom_name='["",{"text":"Locked","italic":false}]']

item replace entity @a inventory.13 with minecraft:acacia_chest_boat[custom_name='["",{"text":"Tabletop","italic":false}]']
item replace entity @a inventory.14 with minecraft:stripped_birch_log[custom_name='["",{"text":"Colosseum","italic":false}]']
item replace entity @a[tag=Advancement-dude_stop] inventory.12 with minecraft:stone[custom_name='["",{"text":"Caves","italic":false}]']
item replace entity @a[tag=!Advancement-dude_stop] inventory.12 with barrier[custom_name='["",{"text":"Locked","italic":false}]']
item replace entity @a[tag=Advancement-crazy_fast] inventory.15 with minecraft:blue_ice[custom_name='["",{"text":"Ice Spikes","italic":false}]']
item replace entity @a[tag=!Advancement-crazy_fast] inventory.15 with barrier[custom_name='["",{"text":"Locked","italic":false}]']

item replace entity @a inventory.23 with minecraft:cobblestone[custom_name='["",{"text":"Ravine","italic":false}]']
item replace entity @a inventory.22 with minecraft:polished_andesite[custom_name='["",{"text":"Brutalism","italic":false}]']
item replace entity @a[tag=Advancement-secret_barrel_e] inventory.21 with minecraft:grass_block[custom_name='["",{"text":"Final Island","italic":false}]']
item replace entity @a[tag=!Advancement-secret_barrel_e] inventory.21 with barrier[custom_name='["",{"text":"Locked","italic":false}]']
item replace entity @a[tag=Advancement-bro] inventory.24 with minecraft:jungle_log[custom_name='["",{"text":"Jungle Pikes","italic":false}]']
item replace entity @a[tag=!Advancement-bro] inventory.24 with barrier[custom_name='["",{"text":"Locked","italic":false}]']




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