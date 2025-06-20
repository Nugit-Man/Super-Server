experience add @a[scores={XP=1..}] 1 points
scoreboard players remove @a[scores={XP=1..}] XP 1
execute as @a[scores={XP=1..}] run execute at @s run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a[scores={XP=1..}] run schedule function ascendance:multiplayer/xp 5t
execute as @a run execute at @s run execute if score @s XPlevels > @s XPlevel run playsound minecraft:entity.player.levelup master @s
execute as @a run execute if score @s XPlevels > @s XPlevel run scoreboard players add @s XPlevel 1

#reset rock bottom post game
scoreboard players set @a Rock_Deaths 0