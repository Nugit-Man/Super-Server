summon minecraft:armor_stand ~ ~ ~ {Tags:[MM_Ice],Invisible:1b,NoGravity:1b}
tp @n[type=armor_stand,tag=MM_Ice] ~ ~ ~ ~ 0
execute as @n[type=armor_stand,tag=MM_Ice] at @s run tp @s ^ ^ ^3