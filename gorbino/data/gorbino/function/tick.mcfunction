scoreboard players set @a[tag=!GB_Welcome,scores={MAIN_Game=3}] GB_Menu 0
scoreboard players set @a[tag=!GB_Welcome,scores={MAIN_Game=3}] GB_Mode 0
scoreboard players set @a[tag=!GB_Welcome,scores={MAIN_Game=3}] GB_Select 0
scoreboard players set @a[tag=!GB_Welcome,scores={MAIN_Game=3}] GB_Points 0
scoreboard players set @a[tag=!GB_Welcome,scores={MAIN_Game=3}] GB_Milestones_Wins 0
tag @a[tag=!GB_Welcome,scores={MAIN_Game=3}] add GB_Welcome


#Main GB_Menu
execute as @a[scores={GB_Menu=0,GB_Mode=0,MAIN_Game=3}] run function gorbino:menu/menu0
execute as @a[scores={GB_Menu=1,GB_Mode=0,MAIN_Game=3}] run function gorbino:menu/menu1
execute as @a[scores={GB_Menu=2,GB_Mode=0,MAIN_Game=3}] run function gorbino:menu/menu2
execute as @a[scores={GB_Menu=3,GB_Mode=0,MAIN_Game=3}] run function gorbino:menu/menu3



#Expiriance bar stuff
experience set @a[scores={GB_Points=0,MAIN_Game=3}] 0 points
experience set @a[scores={GB_Points=1,MAIN_Game=3}] 150 points
experience set @a[scores={GB_Points=2,MAIN_Game=3}] 300 points
experience set @a[scores={GB_Points=3,MAIN_Game=3}] 450 points
experience set @a[scores={GB_Points=4,MAIN_Game=3}] 600 points
experience set @a[scores={GB_Points=5,MAIN_Game=3}] 750 points
experience set @a[scores={MAIN_Game=3}] 101 levels


#Tell people that they are in the fight
title @a[scores={GB_Mode=2,MAIN_Game=3}] actionbar "You Are Joining The Fight"


#check what gamestate the game us currentlyt in
function gorbino:playerchecker


#Cleanup
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:stone replace minecraft:slime_block
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:stone replace minecraft:lava[level=0]
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:air replace minecraft:lava
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~-9 ~20 ~-20 ~-19 ~-20 minecraft:air replace minecraft:lava
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~-19 ~20 ~-20 ~-39 ~-20 minecraft:air replace minecraft:lava
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~-39 ~20 ~-20 ~-59 ~-20 minecraft:air replace minecraft:lava
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:air replace minecraft:fire
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:air replace minecraft:cobblestone
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~-9 ~20 ~-20 ~-19 ~-20 minecraft:air replace minecraft:cobblestone
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~9 ~20 ~-20 ~-9 ~-20 minecraft:stone replace minecraft:obsidian
execute at @a[scores={GB_Mode=2..,MAIN_Game=3}] run fill ~20 ~-9 ~20 ~-20 ~-19 ~-20 minecraft:stone replace minecraft:obsidian

#leave game
item replace entity @a[scores={GB_Mode=1..,MAIN_Game=3}] inventory.13 with barrier[custom_name=[{text:"Leave The Fight",italic:false}]]
execute as @a run execute store result score @s[scores={GB_Mode=1..,MAIN_Game=3}] GB_Select run clear @s[scores={GB_Mode=1..,MAIN_Game=3}] barrier 0
execute if score 1 GB_Select matches 2 as @a[scores={GB_Mode=1,MAIN_Game=3,GB_Select=2}] run scoreboard players set @a[scores={GB_Mode=1,MAIN_Game=3}] GB_Select 2
execute in gorbino:lobby run tp @a[scores={GB_Mode=1..,GB_Select=2,MAIN_Game=3}] 56 5 26 0 0
effect clear @a[scores={GB_Mode=1..,GB_Select=2,MAIN_Game=3}]
execute as @a[scores={GB_Mode=1..,GB_Select=2,MAIN_Game=3}] run clear @s[scores={GB_Mode=1..}]
execute as @a[scores={GB_Mode=1..,GB_Select=2,MAIN_Game=3}] run scoreboard players set @s[scores={GB_Mode=1..,MAIN_Game=3}] GB_Menu 0
execute as @a[scores={GB_Mode=1..,GB_Select=2,MAIN_Game=3}] run scoreboard players set @s[scores={GB_Mode=1..,MAIN_Game=3}] GB_Mode 0
execute as @a[scores={GB_Mode=1..,GB_Select=2,MAIN_Game=3}] run scoreboard players set @s[scores={GB_Mode=1..,MAIN_Game=3}] GB_velocity 0
scoreboard players set @s[scores={GB_Mode=1..,MAIN_Game=3}] GB_Select 1



#Kill dropped items
execute at @a[scores={MAIN_Game=3}] run kill @e[type=item,distance=..10]

#sclae
execute as @a[scores={GB_Mode=0,MAIN_Game=3}] run attribute @s scale base reset
execute as @a[scores={GB_Mode=0,MAIN_Game=3}] run attribute @s jump_strength base reset
execute as @a[scores={GB_Mode=0,MAIN_Game=3}] run attribute @s entity_interaction_range base reset
execute as @a[scores={GB_Mode=0,MAIN_Game=3}] run attribute @s max_health base reset
execute as @a[scores={GB_Mode=0,MAIN_Game=3}] run attribute @s step_height base reset
execute as @a[scores={GB_Mode=0,MAIN_Game=3}] run attribute @s armor base reset

#sclae
execute as @a[scores={GB_Deaths=1..,MAIN_Game=3}] run attribute @s scale base reset
execute as @a[scores={GB_Deaths=1..,MAIN_Game=3}] run attribute @s jump_strength base reset
execute as @a[scores={GB_Deaths=1..,MAIN_Game=3}] run attribute @s entity_interaction_range base reset
execute as @a[scores={GB_Deaths=1..,MAIN_Game=3}] run attribute @s max_health base reset
execute as @a[scores={GB_Deaths=1..,MAIN_Game=3}] run attribute @s step_height base reset
execute as @a[scores={GB_Deaths=1..,MAIN_Game=3}] run attribute @s armor base reset

#Check Deaths
clear @a[scores={GB_Deaths=1..,MAIN_Game=3}]
scoreboard players set @a[scores={GB_Deaths=1..,MAIN_Game=3}] GB_Radiation 0
scoreboard players set @a[scores={GB_Deaths=1..,GB_Mode=1,MAIN_Game=3}] GB_velocity 0
scoreboard players set @a[scores={MAIN_Game=3,GB_Mode=2}] GB_Deaths 0
scoreboard players set @a[scores={GB_Deaths=1..,GB_Mode=1,MAIN_Game=3}] GB_Mode 2
scoreboard players set @a[scores={MAIN_Game=3,GB_Mode=0}] GB_Deaths 0


#Barrels
execute in gorbino:lobby run item replace block 85 8 51 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in gorbino:lobby run item replace block 54 22 77 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in gorbino:lobby run item replace block 74 -18 42 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in gorbino:lobby run item replace block 100 -37 21 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in gorbino:lobby run item replace block 85 1 66 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in gorbino:game run item replace block 3991 12 -11 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]
execute in gorbino:lobby run item replace block 30 36 -50 container.13 with minecraft:sunflower[custom_name=[{text:"A Secret",italic:false}],lore=[[{text:"What Could",italic:false}],[{text:"This Be?",italic:false}]],custom_model_data={strings:['Barrel']}]

execute in gorbino:lobby at @e[type=marker,tag=GB_Barrel_Wall] run scoreboard players set @a[distance=..7] GB_Barrel_Pos 1
execute in gorbino:lobby at @e[type=marker,tag=GB_Barrel_Top] run scoreboard players set @a[distance=..7] GB_Barrel_Pos 2
execute in gorbino:lobby at @e[type=marker,tag=GB_Barrel_Stewie] run scoreboard players set @a[distance=..7] GB_Barrel_Pos 3
execute in gorbino:lobby at @e[type=marker,tag=GB_Barrel_Ice] run scoreboard players set @a[distance=..7] GB_Barrel_Pos 4
execute in gorbino:lobby at @e[type=marker,tag=GB_Barrel_Trickshot] run scoreboard players set @a[distance=..7] GB_Barrel_Pos 5
execute in gorbino:lobby at @e[type=marker,tag=GB_Barrel_Map] run scoreboard players set @a[distance=..7] GB_Barrel_Pos 6
execute in gorbino:lobby at @e[type=marker,tag=GB_Barrel_Nuke] run scoreboard players set @a[distance=..7] GB_Barrel_Pos 7

execute as @a[scores={MAIN_Game=3}] run execute store result score @s GB_Barrel_Check run clear @s sunflower
advancement grant @a[scores={MAIN_Game=3,GB_Barrel_Check=1..,GB_Barrel_Pos=1}] only gorbino:barrel/wall
advancement grant @a[scores={MAIN_Game=3,GB_Barrel_Check=1..,GB_Barrel_Pos=2}] only gorbino:barrel/top
advancement grant @a[scores={MAIN_Game=3,GB_Barrel_Check=1..,GB_Barrel_Pos=3}] only gorbino:barrel/stewie
advancement grant @a[scores={MAIN_Game=3,GB_Barrel_Check=1..,GB_Barrel_Pos=4}] only gorbino:barrel/ice
advancement grant @a[scores={MAIN_Game=3,GB_Barrel_Check=1..,GB_Barrel_Pos=5}] only gorbino:barrel/trickshot
advancement grant @a[scores={MAIN_Game=3,GB_Barrel_Check=1..,GB_Barrel_Pos=6}] only gorbino:barrel/map
advancement grant @a[scores={MAIN_Game=3,GB_Barrel_Check=1..,GB_Barrel_Pos=7}] only gorbino:barrel/nuke

#give saturation
effect give @a[scores={MAIN_Game=3,GB_Mode=0}] saturation 1 0 true



#kill extra spinner
#execute at @a[scores={GB_Mode=0}] run kill @e[distance=..100,tag=GB_spinner]
#execute at @a[scores={GB_Mode=0}] run kill @e[distance=..100,tag=GB_Spin2] 
#execute at @a[scores={GB_Mode=0}] run kill @e[distance=..100,tag=GB_Spin1]

#FROG
#execute at @e[type=frog] run damage @r[distance=..1.5] 1 gorbino:cringe


#Ground slam rooted dirt removeal
execute at @a[scores={MAIN_Game=3,GB_Mode=1},tag=GB_GS] run fill ~-1 ~ ~1 ~1 ~-5 ~-1 air replace rooted_dirt
#Ground Slam
execute as @a[tag=GB_GS] run execute store result score @s GB_velocity run data get entity @s Motion[1] 100
tag @a[tag=GB_GS,scores={GB_velocity=..-150}] add GB_GSS
execute at @a[tag=GB_GSS,scores={GB_velocity=-99}] run particle minecraft:gust_emitter_large ~ ~-2 ~ 0 0 0 1 100
execute as @a[tag=GB_GSS,scores={GB_velocity=-99}] at @s[tag=GB_GSS,scores={GB_velocity=-99}] run damage @a[distance=..3,limit=1,sort=nearest,tag=!GB_GSS,tag=!GB_Hazmat] 12 mace_smash by @s
execute as @a[tag=GB_GSS,scores={GB_velocity=-99}] at @s[tag=GB_GSS,scores={GB_velocity=-99}] run damage @a[distance=..3,limit=1,sort=nearest,tag=!GB_GSS,tag=GB_Hazmat] 6 mace_smash by @s
attribute @r[tag=GB_GS,scores={GB_velocity=-99}] gravity base set 0.08
execute as @a[tag=GB_GS,scores={GB_velocity=-99}] run tag @s remove GB_GS
execute as @a[tag=GB_GSS,scores={GB_velocity=-99}] run tag @s remove GB_GSS

#freeze bolt
execute as @e[tag=GB_Freeze] run execute at @s run tp @s ^ ^ ^0.8
execute at @e[tag=GB_Freeze] run particle snowflake ~ ~ ~ 0.4 0.4 0.4 0.01 10
scoreboard players add @e[tag=GB_Freeze] GB_velocity 1
execute at @e[tag=GB_Freeze] run damage @r[distance=..2.2,tag=!GB_Hazmat] 2 freeze
execute at @e[tag=GB_Freeze] run damage @r[distance=..2.2,tag=GB_Hazmat] 1 freeze
execute at @e[tag=GB_Freeze] run effect give @a[distance=..2.2,tag=!GB_Hazmat] slowness 5 2
execute at @e[tag=GB_Freeze] run effect give @a[distance=..2.2,tag=GB_Hazmat] slowness 3 1
kill @e[tag=GB_Freeze,scores={GB_velocity=20}]
tag @a[scores={MAIN_Game=3}] remove GB_Frost_Fix

#Dripstone
execute at @e[tag=GB_Dripstone] run damage @r[distance=..2] 50 gorbino:crush

#builder y
#execute at @e[tag=GB_Builder_y,scores={GB_velocity=0}] run fill ~-1 ~ ~-1 ~1 ~ ~1 oak_planks replace air
#scoreboard players add @e[tag=GB_Builder_y] GB_velocity 1
#execute at @e[tag=GB_Builder_y,scores={GB_velocity=100}] run fill ~-1 ~ ~-1 ~1 ~ ~1 air
#kill @e[tag=GB_Builder_y,scores={GB_velocity=100}]

#builder x
#execute at @e[tag=GB_Builder_x,scores={GB_velocity=0}] run fill ~ ~-1 ~-1 ~ ~1 ~1 oak_planks replace air
#scoreboard players add @e[tag=GB_Builder_x] GB_velocity 1
#execute at @e[tag=GB_Builder_x,scores={GB_velocity=100}] run fill ~ ~-1 ~-1 ~ ~1 ~1 air replace oak_planks
#kill @e[tag=GB_Builder_x,scores={GB_velocity=100}]

#builder z
#execute at @e[tag=GB_Builder_z,scores={GB_velocity=0}] run fill ~-1 ~-1 ~ ~1 ~1 ~ oak_planks replace air
#scoreboard players add @e[tag=GB_Builder_z] GB_velocity 1
#execute at @e[tag=GB_Builder_z,scores={GB_velocity=100}] run fill ~-1 ~-1 ~ ~1 ~1 ~ air replace oak_planks
#kill @e[tag=GB_Builder_z,scores={GB_velocity=100}]

#Lava
execute at @e[tag=GB_Lava,scores={GB_velocity=0}] run fill ~-2 ~-3 ~-2 ~2 ~0 ~2 lava replace stone
execute at @e[tag=GB_Lava,scores={GB_velocity=0}] run fill ~-2 ~0 ~-2 ~2 ~3 ~2 lava replace stone
scoreboard players add @e[tag=GB_Lava] GB_velocity 1
execute at @e[tag=GB_Lava,scores={GB_velocity=300}] run fill ~-2 ~-3 ~-2 ~2 ~0 ~2 stone replace lava[level=0]
execute at @e[tag=GB_Lava,scores={GB_velocity=300}] run fill ~-2 ~0 ~-2 ~2 ~3 ~2 stone replace lava[level=0]
kill @e[tag=GB_Lava,scores={GB_velocity=300}]

#Shotgun
#execute as @a[scores={GB_Shotgun=1..}] run scoreboard players add @s GB_Shotgun 1
#clear @a[scores={GB_Shotgun=300..},tag=GB_GB_Shotgun] crossbow
#give @a[scores={GB_Shotgun=300},tag=GB_GB_Shotgun] crossbow[custom_name=[{text: "Shotgun","bold": true,italic:false,"color":"red"}],charged_projectiles=[{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"large_ball",has_trail:true,colors:[I;3684408],fade_colors:[I;1644568]},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"}]}}}],enchantments={levels:{"minecraft:multishot":1}},unbreakable={show_in_tooltip:false}] 1
#scoreboard players set @a[scores={GB_Shotgun=300}] GB_Shotgun 0

#Firerunner
#execute at @a[scores={GB_Mode=1},tag=GB_flame_runner] run fill ^ ^-1 ^-2 ^ ^-2 ^-1 fire replace air

#Slime
#execute at @a[tag=GB_slime_bounce,scores={GB_Mode=1}] run fill ~10 ~4 ~10 ~-10 ~-4 ~-10 minecraft:stone replace minecraft:slime_block
#execute at @a[tag=GB_slime_bounce,scores={GB_Mode=1..}] run fill ~5 ~4 ~5 ~-5 ~-10 ~-5 minecraft:stone replace minecraft:slime_block
#execute at @a[tag=GB_slime_bounce,scores={GB_Mode=1}] run fill ~1 ~3 ~1 ~-1 ~-3 ~-1 minecraft:slime_block replace minecraft:stone

#leap pearl
#execute as @e[type=snowball,tag=!GB_Leap] at @s run ride @p[tag=GB_leap_pearl] mount @s
#tag @e[type=snowball] add GB_Leap

#spinner
#execute at @a[tag=GB_spin] run tp @e[type=minecraft:marker,tag=GB_spinner,limit=1,sort=random] ~ ~1 ~
#execute at @e[tag=GB_spinner,type=minecraft:marker] as @e[tag=GB_spinner] run tp @s ~ ~ ~ ~3 ~
#execute at @e[tag=GB_spinner] run tp @e[tag=GB_Spin1,limit=1,sort=random] ^2 ^ ^
#execute at @e[tag=GB_spinner] run tp @e[tag=GB_Spin2,limit=1,sort=random] ^-2 ^ ^
#execute at @e[tag=GB_Spin1] run damage @a[distance=..1.5,tag=!GB_spin,limit=1,sort=random] 2
#execute at @e[tag=GB_Spin2] run damage @a[distance=..1.5,tag=!GB_spin,limit=1,sort=random] 2
#execute at @e[tag=GB_Spin1] run particle minecraft:crit ~ ~ ~
#execute at @e[tag=GB_Spin2] run particle minecraft:crit ~ ~ ~


#Archer Arrow Regen
#scoreboard players add @a[tag=GB_GB_archer] GB_Arrow 1
#execute as @a[tag=GB_GB_archer] run execute store result score @s GB_velocity run clear @s arrow 0
#give @a[scores={GB_Mode=1,GB_velocity=..2},tag=GB_GB_archer] arrow
execute if score MAIN_5s MAIN_Time matches 100 run give @a[scores={MAIN_Game=3,GB_Mode=1},tag=GB_archer] arrow

#Timer
#execute as @e[tag=GB_Timer] run scoreboard players set @s GB_velocity 0
#tag @e remove GB_Timer

#Explosive
#execute at @e[type=tnt,tag=GB_GB_Boom,scores={GB_velocity=599..}] run execute as @a[distance=..5] run damage @s 16 explosion
#execute at @e[type=tnt,tag=GB_GB_Boom,scores={GB_velocity=599..}] run kill @s

#advancements
execute as @a run execute at @s run advancement grant @s[y=-44,dy=-20,scores={MAIN_Game=3}] only gorbino:fall


#prevent offhand bug
item replace entity @a[scores={MAIN_Game=3,GB_Mode=1},tag=!GB_knight] weapon.offhand with air



#Radiation System
scoreboard players add @a[scores={GB_Radiation=1..}] GB_Radiation 1
advancement grant @a[scores={GB_Radiation=600..}] only gorbino:radiate
execute as @a[scores={GB_Radiation=600..},advancements={gorbino:hazmat=false}] run damage @s 100 gorbino:radiation
execute as @a[scores={GB_Radiation=900..},advancements={gorbino:hazmat=true}] run damage @s 100 gorbino:radiation


#Hazmat Suit
execute at @e[type=marker,tag=GB_Achivement_Hazmat] run advancement grant @a[distance=..2] only gorbino:hazmat