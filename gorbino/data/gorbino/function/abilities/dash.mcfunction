tag @s add dasher
particle minecraft:smoke ~ ~1 ~ .4 .4 .4 .01 1000 normal
summon armor_stand ~ ~ ~ {Tags:["Dash1"]}
execute anchored eyes run tp @e[tag=Dash1,limit=1,sort=nearest] ^ ^ ^0.5 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash2"]}
execute anchored eyes run tp @e[tag=Dash2,limit=1,sort=nearest] ^ ^ ^1 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash3"]}
execute anchored eyes run tp @e[tag=Dash3,limit=1,sort=nearest] ^ ^ ^1.5 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash4"]}
execute anchored eyes run tp @e[tag=Dash4,limit=1,sort=nearest] ^ ^ ^2 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash5"]}
execute anchored eyes run tp @e[tag=Dash5,limit=1,sort=nearest] ^ ^ ^2.5 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash6"]}
execute anchored eyes run tp @e[tag=Dash6,limit=1,sort=nearest] ^ ^ ^3 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash7"]}
execute anchored eyes run tp @e[tag=Dash7,limit=1,sort=nearest] ^ ^ ^3.5 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash8"]}
execute anchored eyes run tp @e[tag=Dash8,limit=1,sort=nearest] ^ ^ ^4 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash9"]}
execute anchored eyes run tp @e[tag=Dash9,limit=1,sort=nearest] ^ ^ ^4.5 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash10"]}
execute anchored eyes run tp @e[tag=Dash10,limit=1,sort=nearest] ^ ^1 ^5 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash11"]}
execute anchored eyes run tp @e[tag=Dash11,limit=1,sort=nearest] ^ ^ ^5.5 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash12"]}
execute anchored eyes run tp @e[tag=Dash12,limit=1,sort=nearest] ^ ^ ^6 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash13"]}
execute anchored eyes run tp @e[tag=Dash13,limit=1,sort=nearest] ^ ^ ^6.5 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash14"]}
execute anchored eyes run tp @e[tag=Dash14,limit=1,sort=nearest] ^ ^ ^7 ~ ~
summon armor_stand ~ ~ ~ {Tags:["Dash15"]}
execute anchored eyes run tp @e[tag=Dash15,limit=1,sort=nearest] ^ ^ ^7.5 ~ ~


scoreboard players set @s velocity 0

execute if score @s velocity matches 0 run execute at @e[tag=Dash1,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 1
execute if score @s velocity matches 1 run execute at @e[tag=Dash2,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 2
execute if score @s velocity matches 2 run execute at @e[tag=Dash3,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 3
execute if score @s velocity matches 3 run execute at @e[tag=Dash4,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 4
execute if score @s velocity matches 4 run execute at @e[tag=Dash5,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 5
execute if score @s velocity matches 5 run execute at @e[tag=Dash6,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 6
execute if score @s velocity matches 6 run execute at @e[tag=Dash7,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 7
execute if score @s velocity matches 7 run execute at @e[tag=Dash8,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 8
execute if score @s velocity matches 8 run execute at @e[tag=Dash9,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 9
execute if score @s velocity matches 9 run execute at @e[tag=Dash10,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 10
execute if score @s velocity matches 10 run execute at @e[tag=Dash11,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 11
execute if score @s velocity matches 11 run execute at @e[tag=Dash12,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 12
execute if score @s velocity matches 12 run execute at @e[tag=Dash13,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 13
execute if score @s velocity matches 13 run execute at @e[tag=Dash14,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 14
execute if score @s velocity matches 14 run execute at @e[tag=Dash15,limit=1,sort=nearest] run execute if block ~ ~ ~ air run scoreboard players set @p[tag=dasher] velocity 15

execute if score @s velocity matches 1 run tp @s @e[limit=1,sort=nearest,tag=Dash1]
execute if score @s velocity matches 2 run tp @s @e[limit=1,sort=nearest,tag=Dash2]
execute if score @s velocity matches 3 run tp @s @e[limit=1,sort=nearest,tag=Dash3]
execute if score @s velocity matches 4 run tp @s @e[limit=1,sort=nearest,tag=Dash4]
execute if score @s velocity matches 5 run tp @s @e[limit=1,sort=nearest,tag=Dash5]
execute if score @s velocity matches 6 run tp @s @e[limit=1,sort=nearest,tag=Dash6]
execute if score @s velocity matches 7 run tp @s @e[limit=1,sort=nearest,tag=Dash7]
execute if score @s velocity matches 8 run tp @s @e[limit=1,sort=nearest,tag=Dash8]
execute if score @s velocity matches 9 run tp @s @e[limit=1,sort=nearest,tag=Dash9]
execute if score @s velocity matches 10 run tp @s @e[limit=1,sort=nearest,tag=Dash10]
execute if score @s velocity matches 11 run tp @s @e[limit=1,sort=nearest,tag=Dash11]
execute if score @s velocity matches 12 run tp @s @e[limit=1,sort=nearest,tag=Dash12]
execute if score @s velocity matches 13 run tp @s @e[limit=1,sort=nearest,tag=Dash13]
execute if score @s velocity matches 14 run tp @s @e[limit=1,sort=nearest,tag=Dash14]
execute if score @s velocity matches 15 run tp @s @e[limit=1,sort=nearest,tag=Dash15]

kill @e[type=armor_stand]

tag @s remove dasher
execute as @s[tag=!elytra] run give @s[tag=!lightweight] sugar[custom_name='["",{"text":"Dash","italic":false}]',consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"entity.armadillo.brush",has_consume_particles:0b},use_cooldown={seconds:2}]
give @s[tag=lightweight] sugar[custom_name='["",{"text":"Dash","italic":false}]',consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"entity.armadillo.brush",has_consume_particles:0b},use_cooldown={seconds:10}]
give @s[tag=elytra] sugar[custom_name='["",{"text":"Dash","italic":false}]',consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"entity.armadillo.brush",has_consume_particles:0b},use_cooldown={seconds:10}]

#Acdancement
scoreboard players add @s Dash_Check 1
advancement grant @s[scores={Dash_Check=100}] only gorbino:speed