#Main Menu
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
item replace entity @a inventory.22 with minecraft:air
item replace entity @a inventory.23 with minecraft:air
item replace entity @a inventory.24 with minecraft:air
item replace entity @a inventory.25 with minecraft:air
item replace entity @a inventory.26 with minecraft:air

scoreboard players set @a[tag=!select] Mode 1
tag @a remove select
scoreboard players set $Gamemode Mode 0

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s paper 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s bamboo_door 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 7
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s beetroot 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 11
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1







item replace entity @a inventory.10 with minecraft:paper[custom_name='["",{"text":"Options","italic":false}]']
item replace entity @a inventory.12 with minecraft:beetroot[custom_name='["",{"text":"Singleplayer","italic":false}]']
item replace entity @a inventory.14 with minecraft:bamboo_door[custom_name='["",{"text":"Multiplayer","italic":false}]']
item replace entity @a inventory.16 with minecraft:structure_void[custom_name='["",{"text":"To Be Added","italic":false}]']



