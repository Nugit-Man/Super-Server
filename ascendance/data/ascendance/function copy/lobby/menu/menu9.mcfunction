#Game Menu
item replace entity @a inventory.0 with minecraft:air
item replace entity @a inventory.1 with minecraft:air
item replace entity @a inventory.2 with minecraft:air
item replace entity @a inventory.3 with minecraft:air
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

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s acacia_sign 0
execute if score $Start Mode matches 0 run execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 8
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s paper 0
execute if score $Start Mode matches 0 run execute as @a[scores={Mode=2}] run scoreboard players add $Config Mode 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
execute if score $Config Mode matches 4 run scoreboard players set $Config Mode 0

execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s dirt_path 0
execute if score $Start Mode matches 0 run execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 10
execute if score $Start Mode matches 0 run execute as @a[scores={Mode=2}] run scoreboard players set $Map Mode 0
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute if score $Start Mode matches 0 run execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s lime_concrete 0
execute as @a[scores={Mode=2}] run function ascendance:lobby/start
execute as @a[scores={Mode=2}] run scoreboard players set $Start Mode 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute if score $Start Mode matches 1.. run execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s black_concrete 0
execute as @a[scores={Mode=2}] run scoreboard players set $Start Mode 0
execute as @a[scores={Mode=2}] run schedule clear ascendance:lobby/countdown
execute as @a[scores={Mode=2}] run team empty Red
execute as @a[scores={Mode=2}] run team empty Blue
execute as @a[scores={Mode=2}] run bossbar set minecraft:start players
execute as @a[scores={Mode=2}] run item replace entity @a hotbar.4 with minecraft:air
execute as @a[scores={Mode=2}] run item replace entity @a hotbar.5 with minecraft:air
execute as @a[scores={Mode=2}] run item replace entity @a hotbar.6 with minecraft:air
execute as @a[scores={Mode=2}] run item replace entity @a hotbar.7 with minecraft:air
execute as @a[scores={Mode=2}] run item replace entity @a hotbar.8 with minecraft:air
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute if score $Start Mode matches 1.. run execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s leather_helmet 0
execute as @a[scores={Mode=2}] run team join Red @s
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1

execute if score $Start Mode matches 1.. run execute as @a[scores={Mode=0..1}] run execute store result score @s Mode run clear @s diamond_helmet 0
execute as @a[scores={Mode=2}] run team join Blue @s
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1



execute if score $Map Mode matches 1.. run execute if score $Start Mode matches 0 run item replace entity @a inventory.4 with minecraft:lime_concrete[custom_name='["",{"text":"Start","italic":false}]']
execute if score $Map Mode matches 0 run execute if score $Start Mode matches 0 run item replace entity @a inventory.4 with minecraft:red_concrete[custom_name='["",{"text":"Select a map","italic":false}]']
execute if score $Start Mode matches 1.. run item replace entity @a inventory.4 with minecraft:black_concrete[custom_name='["",{"text":"Cancel","italic":false}]']
item replace entity @a inventory.10 with minecraft:dirt_path[custom_name='["",{"text":"Select Map","italic":false}]']
function ascendance:lobby/menu/config
item replace entity @a inventory.14 with minecraft:structure_void[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @a inventory.16 with minecraft:structure_void[custom_name='["",{"text":"To Be Added","italic":false}]']
item replace entity @a inventory.22 with minecraft:acacia_sign[custom_name='["",{"text":"Back","italic":false}]']