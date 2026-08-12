execute if entity @s[tag=MM_Blue] run summon minecraft:armor_stand ~ ~ ~ {Tags:[MM_Ice_Blue,MM_Ice],Invisible:1b,NoGravity:1b}
execute if entity @s[tag=MM_Red] run summon minecraft:armor_stand ~ ~ ~ {Tags:[MM_Ice_Red,MM_Ice],Invisible:1b,NoGravity:1b}
tp @n[type=armor_stand,tag=MM_Ice] ~ ~ ~ ~ 0
execute as @n[type=armor_stand,tag=MM_Ice] at @s run tp @s ^ ^ ^3