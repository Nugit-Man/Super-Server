scoreboard players set 0 GB_Select 0
scoreboard players set 1 GB_Select 0
execute if score 2 GB_Select matches 0.. run scoreboard players set 2 GB_Select 0

execute as @a[scores={GB_Mode=0}] run scoreboard players add 0 GB_Select 1
execute as @a[scores={GB_Mode=1}] run scoreboard players add 1 GB_Select 1
execute if score 2 GB_Select matches 0.. run execute as @a[scores={GB_Mode=2}] run scoreboard players add 2 GB_Select 1


execute if score 1 GB_Select matches 1 run title @a[scores={GB_Mode=1}] subtitle "Victory!"

#Give advancements
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1}] only gorbino:first_fight
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=4}] only gorbino:4points
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=3}] only gorbino:3points
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=2}] only gorbino:2points
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=1}] only gorbino:1point
execute if score 1 GB_Select matches 1 run advancement grant @a[scores={GB_Mode=1,GB_Points=0}] only gorbino:0points
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,GB_Points=5},tag=knight] run execute as @s[tag=lumberjack] run advancement grant @s[tag=archer] only gorbino:arsenal
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1,GB_Points=3},tag=cancer] run execute as @s[tag=frog] run advancement grant @s[tag=chad] only gorbino:kk
execute if score 1 GB_Select matches 1 run execute as @a run execute at @s run advancement grant @s[y=-54,dy=-10,scores={GB_Mode=1}] only gorbino:falling
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1},tag=!archer] run execute as @s[tag=!knight] run execute as @s[tag=!lumberjack] run execute as @s[tag=!mace_master] run execute as @s[tag=!burst_charm] run execute as @s[tag=!freeze_bolt] run execute as @s[tag=!fireball] run execute as @s[tag=!ground_slam] run execute as @s[tag=!dripstone] run execute as @s[tag=!bomber] run execute as @s[tag=!shotgun] run execute as @s[tag=!lightning_bolt] run execute as @s[tag=!curry] run execute as @s[tag=!super_shotgun] run advancement grant @s[tag=!laser] only gorbino:peace
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1},tag=mace_master] run execute as @s[tag=ground_slam] run advancement grant @s[tag=dripstone,scores={GB_Points=4}] only gorbino:crush
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1},tag=heavy_armor] run execute as @s[tag=grow] run advancement grant @s[tag=lumberjack,scores={GB_Points=5}] only gorbino:little_baby_man
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1},tag=archer] run advancement grant @s[tag=laser,scores={GB_Points=4}] only gorbino:professionals
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1},tag=fireball] run execute as @s[tag=lava] run advancement grant @s[tag=flame_runner,scores={GB_Points=5}] only gorbino:pyro
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=2},tag=grow] run advancement grant @a[scores={GB_Mode=1},tag=shrink] only gorbino:aot
execute if score 1 GB_Select matches 1 run execute as @a[scores={GB_Mode=1},tag=dash] run execute as @s[tag=shrink] run execute as @s[tag=crack] run advancement grant @s[tag=flame_runner,scores={GB_Points=4}] only gorbino:iamspeed


execute if score 1 GB_Select matches 1 run scoreboard players set @a[scores={GB_Mode=1}] GB_Mode 2

execute if score 1 GB_Select matches 0 run execute if score 2 GB_Select matches 2..16 run schedule function gorbino:gamestart 3s
execute if score 1 GB_Select matches 0 run execute if score 2 GB_Select matches 2..16 run title @a[scores={GB_Mode=0}] subtitle "Make Sure To Join!"
execute if score 1 GB_Select matches 0 run execute if score 2 GB_Select matches 2..16 run title @a[scores={GB_Mode=0..2}] title "A New Fight Is Starting!"
execute if score 1 GB_Select matches 0 run execute if score 2 GB_Select matches 2..16 run scoreboard players set 2 GB_Select -1
#YO DUMBASS, I'm too tired to figure this shit out so make sure this schedule doesnt get called like 20 times restartingit over and over and preventing a game from actually stating!!!!!!!
#it works I think?
#LMAO what is this?
