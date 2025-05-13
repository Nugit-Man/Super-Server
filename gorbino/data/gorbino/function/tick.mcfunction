scoreboard players set @a[tag=!Welcome] Menu 0
scoreboard players set @a[tag=!Welcome] Mode 0
scoreboard players set @a[tag=!Welcome] Select 0
scoreboard players set @a[tag=!Welcome] Points 0
tag @a add Welcome


#Main Menu
execute as @a[scores={Menu=0,Mode=0}] run function gorbino:menu/menu0
execute as @a[scores={Menu=1,Mode=0}] run function gorbino:menu/menu1
execute as @a[scores={Menu=2,Mode=0}] run function gorbino:menu/menu2
execute as @a[scores={Menu=3,Mode=0}] run function gorbino:menu/menu3

kill @e[type=item]

#kill extra spinner
execute at @a[scores={Mode=0}] run kill @e[distance=..100,tag=spinner]
execute at @a[scores={Mode=0}] run kill @e[distance=..100,tag=Spin2] 
execute at @a[scores={Mode=0}] run kill @e[distance=..100,tag=Spin1]

#FROG
execute at @e[type=frog] run damage @r[distance=..1.5] 1 gorbino:cringe

#Ground Slam
execute as @a[tag=GS] run execute store result score @s velocity run data get entity @s Motion[1] 100
tag @a[tag=GS,scores={velocity=..-150}] add GSS
execute at @a[tag=GSS,scores={velocity=-99}] run particle minecraft:gust_emitter_large ~ ~-2 ~ 0 0 0 1 100
execute at @a[tag=GSS,scores={velocity=-99}] as @a[tag=GSS,scores={velocity=-99}] run damage @a[distance=..3,limit=1,sort=nearest,tag=!GSS] 12 mace_smash by @s
attribute @r[tag=GS,scores={velocity=-99}] gravity base set 0.08
execute as @a[tag=GS,scores={velocity=-99}] run tag @s remove GS
execute as @a[tag=GSS,scores={velocity=-99}] run tag @s remove GSS

#freeze bolt
execute as @e[tag=Freeze] run execute at @s run tp @s ^ ^ ^0.8
execute at @e[tag=Freeze] run particle snowflake ~ ~ ~ 0.4 0.4 0.4 0.01 10
scoreboard players add @e[tag=Freeze] velocity 1
execute at @e[tag=Freeze] run damage @r[distance=..2.5] 2 freeze
execute at @e[tag=Freeze] run effect give @a[distance=..2.5] slowness 5 2
kill @e[tag=Freeze,scores={velocity=20}]

#Dripstone
execute at @e[tag=Dripstone] run damage @r[distance=..2] 50 gorbino:crush

#builder y
execute at @e[tag=Builder_y,scores={velocity=0}] run fill ~-1 ~ ~-1 ~1 ~ ~1 oak_planks replace air
scoreboard players add @e[tag=Builder_y] velocity 1
execute at @e[tag=Builder_y,scores={velocity=100}] run fill ~-1 ~ ~-1 ~1 ~ ~1 air
kill @e[tag=Builder_y,scores={velocity=100}]

#builder x
execute at @e[tag=Builder_x,scores={velocity=0}] run fill ~ ~-1 ~-1 ~ ~1 ~1 oak_planks replace air
scoreboard players add @e[tag=Builder_x] velocity 1
execute at @e[tag=Builder_x,scores={velocity=100}] run fill ~ ~-1 ~-1 ~ ~1 ~1 air replace oak_planks
kill @e[tag=Builder_x,scores={velocity=100}]

#builder z
execute at @e[tag=Builder_z,scores={velocity=0}] run fill ~-1 ~-1 ~ ~1 ~1 ~ oak_planks replace air
scoreboard players add @e[tag=Builder_z] velocity 1
execute at @e[tag=Builder_z,scores={velocity=100}] run fill ~-1 ~-1 ~ ~1 ~1 ~ air replace oak_planks
kill @e[tag=Builder_z,scores={velocity=100}]

#Lava
execute at @e[tag=Lava,scores={velocity=0}] run fill ~-2 ~-3 ~-2 ~2 ~0 ~2 lava replace stone
execute at @e[tag=Lava,scores={velocity=0}] run fill ~-2 ~0 ~-2 ~2 ~3 ~2 lava replace stone
scoreboard players add @e[tag=Lava] velocity 1
execute at @e[tag=Lava,scores={velocity=300}] run fill ~-2 ~-3 ~-2 ~2 ~0 ~2 stone replace lava[level=0]
execute at @e[tag=Lava,scores={velocity=300}] run fill ~-2 ~0 ~-2 ~2 ~3 ~2 stone replace lava[level=0]
kill @e[tag=Lava,scores={velocity=300}]

#shotgun
execute as @a[scores={Shotgun=1..}] run scoreboard players add @s Shotgun 1
clear @a[scores={Shotgun=300..},tag=shotgun] crossbow
give @a[scores={Shotgun=300},tag=shotgun] crossbow[custom_name='["",{"text": "Shotgun","bold": true,"italic":false,"color":"red"}]',charged_projectiles=[{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"large_ball",has_trail:true,colors:[I;3684408],fade_colors:[I;1644568]},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"}]}}}],enchantments={levels:{"minecraft:multishot":1}},unbreakable={show_in_tooltip:false}] 1
scoreboard players set @a[scores={Shotgun=300}] Shotgun 0

#leave game
item replace entity @a[scores={Mode=1..}] inventory.13 with barrier[custom_name='["",{"text":"Leave The Fight","italic":false}]']
execute as @a run execute store result score @s[scores={Mode=1..}] Select run clear @s[scores={Mode=1..}] barrier 0
tp @a[scores={Mode=1..,Select=2}] 57 5 26
effect clear @a[scores={Mode=1..,Select=2}]
execute as @a[scores={Mode=1..,Select=2}] run clear @s[scores={Mode=1..}]
execute as @a[scores={Mode=1..,Select=2}] run scoreboard players set @s[scores={Mode=1..}] Menu 0
execute as @a[scores={Mode=1..,Select=2}] run scoreboard players set @s[scores={Mode=1..}] Mode 0
execute as @a[scores={Mode=1..,Select=2}] run scoreboard players set @s[scores={Mode=1..}] velocity 0
scoreboard players set @s[scores={Mode=1..}] Select 1

#Firerunner
execute at @a[scores={Mode=1},tag=flame_runner] run fill ^ ^-1 ^-2 ^ ^-2 ^-1 fire replace air

#Slime
execute at @a[tag=slime_bounce,scores={Mode=1}] run fill ~10 ~4 ~10 ~-10 ~-4 ~-10 minecraft:stone replace minecraft:slime_block
execute at @a[tag=slime_bounce,scores={Mode=1..}] run fill ~5 ~4 ~5 ~-5 ~-10 ~-5 minecraft:stone replace minecraft:slime_block
execute at @a[tag=slime_bounce,scores={Mode=1}] run fill ~1 ~3 ~1 ~-1 ~-3 ~-1 minecraft:slime_block replace minecraft:stone

#leap pearl
execute as @e[type=snowball,tag=!Leap] at @s run ride @p[tag=leap_pearl] mount @s
tag @e[type=snowball] add Leap

#spinner
execute at @a[tag=spin] run tp @e[type=minecraft:marker,tag=spinner,limit=1,sort=random] ~ ~1 ~
execute at @e[tag=spinner,type=minecraft:marker] as @e[tag=spinner] run tp @s ~ ~ ~ ~3 ~
execute at @e[tag=spinner] run tp @e[tag=Spin1,limit=1,sort=random] ^2 ^ ^
execute at @e[tag=spinner] run tp @e[tag=Spin2,limit=1,sort=random] ^-2 ^ ^
execute at @e[tag=Spin1] run damage @a[distance=..1.5,tag=!spin,limit=1,sort=random] 2
execute at @e[tag=Spin2] run damage @a[distance=..1.5,tag=!spin,limit=1,sort=random] 2
execute at @e[tag=Spin1] run particle minecraft:crit ~ ~ ~
execute at @e[tag=Spin2] run particle minecraft:crit ~ ~ ~


#check what gamestate the game us currentlyt in
function gorbino:playerchecker

#Check Deaths
clear @a[scores={Deaths=1..,Mode=1}]
scoreboard players set @a[scores={Deaths=1..,Mode=1}] velocity 0
scoreboard players set @a[scores={Deaths=1..,Mode=1}] Mode 2
scoreboard players set @a Deaths 0


#Expiriance bar stuff
experience set @a[scores={Points=0}] 0 points
experience set @a[scores={Points=1}] 150 points
experience set @a[scores={Points=2}] 300 points
experience set @a[scores={Points=3}] 450 points
experience set @a[scores={Points=4}] 600 points
experience set @a[scores={Points=5}] 750 points
experience set @a 101 levels


#sclae
execute as @a[scores={Mode=2}] run attribute @s scale base reset
execute as @a[scores={Mode=2}] run attribute @s jump_strength base reset
execute as @a[scores={Mode=2}] run attribute @s entity_interaction_range base reset
execute as @a[scores={Mode=2}] run attribute @s max_health base reset
execute as @a[scores={Mode=2}] run attribute @s step_height base reset

#Tell people that they are in the fight
title @a[scores={Mode=2}] actionbar "You Are Joining The Fight"

#Cleanup
execute at @a[scores={Mode=2..}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:stone replace minecraft:slime_block
execute at @a[scores={Mode=2..}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:stone replace minecraft:lava[level=0]
execute at @a[scores={Mode=2..}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:air replace minecraft:lava
execute at @a[scores={Mode=2..}] run fill ~20 ~-9 ~20 ~-20 ~-19 ~-20 minecraft:air replace minecraft:lava
execute at @a[scores={Mode=2..}] run fill ~20 ~-19 ~20 ~-20 ~-39 ~-20 minecraft:air replace minecraft:lava
execute at @a[scores={Mode=2..}] run fill ~20 ~-39 ~20 ~-20 ~-59 ~-20 minecraft:air replace minecraft:lava
execute at @a[scores={Mode=2..}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:air replace minecraft:fire


#Archer Arrow Regen
scoreboard players add @a[tag=archer] Arrow 1
execute as @a[tag=archer] run execute store result score @s velocity run clear @s arrow 0
give @a[scores={Mode=1,velocity=..2},tag=archer] arrow


#Timer
execute as @e[tag=Timer] run scoreboard players set @s velocity 0
tag @e remove Timer

#Explosive
execute at @e[tag=Boom,scores={velocity=599..}] run execute as @a[distance=..5] run damage @s 16 explosion
execute at @e[tag=Boom,scores={velocity=599..}] run kill @s

#advancements
execute as @a run execute at @s run advancement grant @s[y=-44,dy=-20] only gorbino:fall