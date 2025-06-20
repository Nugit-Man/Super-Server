#2 team select
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
item replace entity @a inventory.10 with minecraft:air
item replace entity @a inventory.11 with minecraft:air
item replace entity @a inventory.13 with minecraft:air
item replace entity @a inventory.15 with minecraft:air
item replace entity @a inventory.16 with minecraft:air
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
scoreboard players set $Gamemode Mode 0
scoreboard players set $Config Mode 0
scoreboard players set $Map Mode 0
scoreboard players set $Start Mode 0


execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s acacia_sign 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 0
tag @a[scores={Mode=2}] add select
execute as @a[scores={Mode=2}] run scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s bow 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 13
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s target 0
execute as @a[scores={Mode=2}] run tp @s -982.5 13.00 43.0 -90 0
execute as @a[scores={Mode=2}] run tag @s add Shooting
execute as @a[scores={Mode=2}] run tag @s add busy
execute as @a[scores={Mode=2}] run scoreboard players set @s Rock_Deaths 0
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] bow[enchantments={levels:{infinity:1}},unbreakable={}]
execute as @a[scores={Mode=2}] run give @a[scores={Mode=2}] arrow
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1




item replace entity @a inventory.12 with minecraft:bow[custom_name='["",{"text":"Training Mode","italic":false}]']
item replace entity @a[tag=Advancement-i_thought_it_was_deathmatch] inventory.14 with minecraft:target[custom_name='["",{"text":"Shooting Range","italic":false}]']
item replace entity @a[tag=!Advancement-i_thought_it_was_deathmatch] inventory.14 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a inventory.22 with minecraft:acacia_sign[custom_name='["",{"text":"Back","italic":false}]']


