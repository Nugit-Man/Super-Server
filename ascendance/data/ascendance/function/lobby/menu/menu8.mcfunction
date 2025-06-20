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
scoreboard players set $Team Mode 2


execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s acacia_sign 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 7
tag @a[scores={Mode=2}] add select
execute as @a[scores={Mode=2}] run scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s acacia_door 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
execute as @a[scores={Mode=2}] run scoreboard players set $Gamemode Mode 4
execute as @a[scores={Mode=2}] run scoreboard players set $Score Mode 3
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s red_banner 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 9
execute as @a[scores={Mode=2}] run scoreboard players set $Gamemode Mode 5
execute as @a[scores={Mode=2}] run scoreboard players set $Score Mode 4
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1



item replace entity @a inventory.12 with minecraft:acacia_door[custom_name='["",{"text":"Team Deathmatch","italic":false}]']
item replace entity @a inventory.14 with minecraft:red_banner[custom_name='["",{"text":"Capture the flag","italic":false}]']
item replace entity @a inventory.22 with minecraft:acacia_sign[custom_name='["",{"text":"Back","italic":false}]']


