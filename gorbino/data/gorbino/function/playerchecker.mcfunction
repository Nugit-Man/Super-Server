scoreboard players set 0 GB_Select 0
scoreboard players set 1 GB_Select 0
execute if score 2 GB_Select matches 0.. run scoreboard players set 2 GB_Select 0

execute as @a[scores={GB_Mode=0,MAIN_Game=3}] run scoreboard players add 0 GB_Select 1
execute as @a[scores={GB_Mode=1,MAIN_Game=3}] run scoreboard players add 1 GB_Select 1
execute if score 2 GB_Select matches 0.. run execute as @a[scores={GB_Mode=2,MAIN_Game=3}] run scoreboard players add 2 GB_Select 1


execute if score 1 GB_Select matches 1 run title @a[scores={GB_Mode=1,MAIN_Game=3}] subtitle "Victory!"
execute if score 1 GB_Select matches 1 run scoreboard players add @a[scores={MAIN_Game=3,GB_Mode=1}] GB_Milestones_Wins 1

#extinguish
execute if score 1 GB_Select matches 1 run execute at @a[scores={MAIN_Game=3,GB_Mode=1}] run summon splash_potion ~ ~1 ~ {Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute if score 1 GB_Select matches 1 run execute at @a[scores={MAIN_Game=3,GB_Mode=1}] run summon splash_potion ~ ~ ~ {Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute if score 1 GB_Select matches 1 run execute at @a[scores={MAIN_Game=3,GB_Mode=1}] run summon splash_potion ~ ~10 ~ {Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}

#New Cleanup
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~ ~-30 ~30 ~7 ~30 stone replace lava[level=0]
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~8 ~-30 ~30 ~15 ~30 stone replace lava[level=0]
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~16 ~-30 ~30 ~23 ~30 stone replace lava[level=0]
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~24 ~-30 ~30 ~31 ~30 stone replace lava[level=0]
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-8 ~-30 ~30 ~-1 ~30 stone replace lava[level=0]
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-16 ~-30 ~30 ~-7 ~30 stone replace lava[level=0]
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-24 ~-30 ~30 ~-15 ~30 stone replace lava[level=0]
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-32 ~-30 ~30 ~-23 ~30 stone replace lava[level=0]
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-40 ~-30 ~30 ~-39 ~30 stone replace lava[level=0]
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-48 ~-30 ~30 ~-41 ~30 stone replace lava[level=0]

execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~ ~-30 ~30 ~7 ~30 air replace lava
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~8 ~-30 ~30 ~15 ~30 air replace lava
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~16 ~-30 ~30 ~23 ~30 air replace lava
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~24 ~-30 ~30 ~31 ~30 air replace lava
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-8 ~-30 ~30 ~-1 ~30 air replace lava
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-16 ~-30 ~30 ~-7 ~30 air replace lava
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-24 ~-30 ~30 ~-15 ~30 air replace lava
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-32 ~-30 ~30 ~-23 ~30 air replace lava
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-40 ~-30 ~30 ~-39 ~30 air replace lava
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-48 ~-30 ~30 ~-41 ~30 air replace lava

execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~ ~-30 ~30 ~7 ~30 air replace fire
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~8 ~-30 ~30 ~15 ~30 air replace fire
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~16 ~-30 ~30 ~23 ~30 air replace fire
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~24 ~-30 ~30 ~31 ~30 air replace fire
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-8 ~-30 ~30 ~-1 ~30 air replace fire
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-16 ~-30 ~30 ~-7 ~30 air replace fire
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-24 ~-30 ~30 ~-15 ~30 air replace fire
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-32 ~-30 ~30 ~-23 ~30 air replace fire
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-40 ~-30 ~30 ~-39 ~30 air replace fire
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_cleanup] run fill ~-30 ~-48 ~-30 ~30 ~-41 ~30 air replace fire

execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_Rooted_Dirt] run setblock ~ ~ ~ rooted_dirt
execute if score 1 GB_Select matches 1 run execute at @e[type=marker,tag=GB_Stone] run setblock ~ ~ ~ stone
execute if score 1 GB_Select matches 1 run scoreboard players set @a[scores={MAIN_Game=3}] GB_Pillar 0

execute if score 1 GB_Select matches 1 run function gorbino:rank

#Give advancements
execute if score 1 GB_Select matches 1 run execute as @a[scores={MAIN_Game=3,GB_Mode=1,GB_Points=5},tag=!GB_knight] run execute as @s[tag=!GB_lava] run execute as @s[tag=!GB_fireball] run execute as @s[tag=!GB_chain_armor] run execute as @s[tag=!GB_heavy_armor] run execute as @s[tag=!GB_lumberjack] run execute as @s[tag=!GB_knockback] run advancement grant @s[tag=!GB_archer] only gorbino:spells
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,MAIN_Game=3}] only gorbino:first_fight
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=4,MAIN_Game=3}] only gorbino:4points
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=3,MAIN_Game=3}] only gorbino:3points
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=2,MAIN_Game=3}] only gorbino:2points
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=1,MAIN_Game=3}] only gorbino:1point
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=0,MAIN_Game=3}] only gorbino:0points
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,GB_Points=5,MAIN_Game=3},tag=GB_knight] run execute as @s[tag=GB_lumberjack] run advancement grant @s[tag=GB_archer] only gorbino:arsenal
#execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,GB_Points=3,MAIN_Game=3},tag=cancer] run execute as @s[tag=frog] run advancement grant @s[tag=chad] only gorbino:kk


execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,MAIN_Game=3}] store result score @s GB_Shotgun run data get entity @s Pos[1] 1
execute if score 1 GB_Select matches 1 run execute as @a run execute at @s run advancement grant @s[scores={GB_Mode=1,MAIN_Game=3,GB_Shotgun=..-40}] only gorbino:falling
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=!GB_archer] run execute as @s[tag=!GB_knight] run execute as @s[tag=!GB_lumberjack] run execute as @s[tag=!GB_mace_master] run execute as @s[tag=!GB_burst_charm] run execute as @s[tag=!GB_freeze_bolt] run execute as @s[tag=!GB_fireball] run execute as @s[tag=!GB_ground_slam] run execute as @s[tag=!GB_dripstone] run execute as @s[tag=!GB_bomber] run execute as @s[tag=!GB_shotgun] run execute as @s[tag=!GB_lightning_bolt] run execute as @s[tag=!GB_curry] run execute as @s[tag=!GB_super_shotgun] run advancement grant @s[tag=!GB_laser] only gorbino:peace
#execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=mace_master] run execute as @s[tag=ground_slam] run advancement grant @s[tag=dripstone,scores={GB_Points=4}] only gorbino:crush
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_heavy_armor] run execute as @s[tag=GB_grow] run advancement grant @s[tag=GB_lumberjack,scores={GB_Points=5}] only gorbino:little_baby_man
#execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=archer] run advancement grant @s[tag=laser,scores={GB_Points=4}] only gorbino:professionals
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_fireball] run execute as @s[tag=GB_lava] run advancement grant @s[tag=GB_curry,scores={GB_Points=5}] only gorbino:pyro
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_fireball] run execute as @s[tag=GB_freeze_bolt] run advancement grant @s[tag=GB_archer,scores={GB_Points=5}] only gorbino:shooter_mcgee
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=2,MAIN_Game=3},tag=GB_grow] run advancement grant @a[scores={GB_Mode=1},tag=GB_shrink] only gorbino:aot
#execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=dash] run execute as @s[tag=shrink] run execute as @s[tag=crack] run advancement grant @s[tag=flame_runner,scores={GB_Points=4}] only gorbino:iamspeed
#Milestones
advancement grant @a[scores={MAIN_Game=3,GB_Milestones_Wins=25..}] only super_server:milestones/gorbino/gorbino_guy
advancement grant @a[scores={MAIN_Game=3,GB_Milestones_Wins=100..}] only super_server:milestones/gorbino/gorbino_great
advancement grant @a[scores={MAIN_Game=3,GB_Milestones_Wins=250..}] only super_server:milestones/gorbino/gorbino_grand
advancement grant @a[scores={MAIN_Game=3,GB_Milestones_Wins=500..}] only super_server:milestones/gorbino/gorbino_genius
advancement grant @a[scores={MAIN_Game=3,GB_Milestones_Wins=1000..}] only super_server:milestones/gorbino/gorbino_goliath
advancement grant @a[scores={MAIN_Game=3,GB_Milestones_Wins=1500..}] only super_server:milestones/gorbino/gorbino_glory
advancement grant @a[scores={MAIN_Game=3,GB_Milestones_Wins=2000..}] only super_server:milestones/gorbino/gorbino_gladiator
advancement grant @a[scores={MAIN_Game=3,GB_Milestones_Wins=2500..}] only super_server:milestones/gorbino/gorbino_gear
advancement grant @a[scores={MAIN_Game=3,GB_Milestones_Wins=5000..}] only super_server:milestones/gorbino/gorbino_gamer



execute if score 1 GB_Select matches 1 run scoreboard players set @a[scores={GB_Mode=1,MAIN_Game=3}] GB_Mode 2

execute if score 1 GB_Select matches 0 run execute if score 2 GB_Select matches 2..16 run schedule function gorbino:gamestart 3s
execute if score 1 GB_Select matches 0 run execute if score 2 GB_Select matches 2..16 run title @a[scores={GB_Mode=0,MAIN_Game=3}] subtitle "Make Sure To Join!"
execute if score 1 GB_Select matches 0 run execute if score 2 GB_Select matches 2..16 run title @a[scores={GB_Mode=0..2,MAIN_Game=3}] title "A New Fight Is Starting!"
execute if score 1 GB_Select matches 0 run execute if score 2 GB_Select matches 2..16 run scoreboard players set 2 GB_Select -1
#YO DUMBASS, I'm too tired to figure this shit out so make sure this schedule doesnt get called like 20 times restartingit over and over and preventing a game from actually stating!!!!!!!
#it works I think?
#LMAO what is this?
#I don't man, Imma go out on a date with Brook's ex
#Man, why wasn't I allowed? It would have been so funny